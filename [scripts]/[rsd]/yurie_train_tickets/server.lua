local VorpCore = exports.vorp_core:GetCore()

local function dprint(msg)
    if Config.Debug then
        print(("^3[vtt]^7 %s"):format(msg))
    end
end

-- Try multiple VORP Inventory addItem signatures (many forks differ)
local function TryAddItem(src, itemName, amount, meta)
    local inv = exports.vorp_inventory
    local m = (Config.DisableMetadata and nil) or meta

    local attempts = {
        function() return inv:addItem(src, itemName, amount) end,
        function() return inv:addItem(src, itemName, amount, m) end,
        function() return inv:addItem(src, itemName, amount, m, nil) end,
        function() return inv:addItem(src, itemName, amount, m, function(_) end) end, -- just to see if it errors
    }

    for i, fn in ipairs(attempts) do
        local ok, ret = pcall(fn)
        dprint(("addItem attempt %d ok=%s ret=%s"):format(i, tostring(ok), tostring(ret)))
        if ok then
            if type(ret) == "boolean" then
                return ret, "boolean"
            elseif type(ret) == "number" then
                return ret > 0, "number"
            elseif ret == nil then
                -- nil could mean "callback style" or "no return"
            end
        end
    end

    -- Callback style (most common alt): addItem(src,item,amount,meta,cb)
    local done = false
    local success = false
    local ok = pcall(function()
        inv:addItem(src, itemName, amount, m, function(s)
            success = (s == true)
            done = true
        end)
    end)
    dprint(("addItem callback style ok=%s"):format(tostring(ok)))

    -- wait a short moment for callback
    local waited = 0
    while not done and waited < 500 do
        Wait(10)
        waited = waited + 10
    end

    if done then
        return success, "callback"
    end

    return false, "unknown"
end

local function GetCharacter(src)
    local user = VorpCore.getUser(src)
    if not user then return nil end
    return user.getUsedCharacter
end

local function IsRailroader(src)
    local char = GetCharacter(src)
    if not char then return false end

    -- Different VORP versions expose these slightly differently; cover common ones
    local job = char.job or (char.getJob and char.getJob()) or nil
    local grade = tonumber(char.jobGrade or char.grade or (char.getJobGrade and char.getJobGrade()) or 0) or 0

    if job ~= Config.RailroaderJob then return false end
    if not Config.AllowedRailroaderGrades[grade] then return false end
    return true
end

-- Deposit ticket sales into Syn Ledger (DB) using oxmysql
-- NOTE: oxmysql:execute callback returns a RESULT TABLE, not affected rows.
-- Use oxmysql:update for affectedRows.
local function DepositToSynLedger(amount)
    if not Config.SynLedger.enabled then return end

    local tbl = Config.SynLedger.table
    local jobCol = Config.SynLedger.jobColumn
    local moneyCol = Config.SynLedger.moneyColumn
    local jobName = Config.SynLedger.jobName

    local q1 = ("UPDATE `%s` SET `%s` = `%s` + ? WHERE `%s` = ?"):format(tbl, moneyCol, moneyCol, jobCol)
    exports.oxmysql:update(q1, { amount, jobName }, function(affectedRows)
        if tonumber(affectedRows or 0) < 1 then
            local q2 = ("INSERT INTO `%s` (`%s`, `%s`) VALUES (?, ?)"):format(tbl, jobCol, moneyCol)
            exports.oxmysql:insert(q2, { jobName, amount })
        end
    end)
end

-- Try remove ticket item (VORP Inventory forks differ a lot)
-- Your inventory's subItemById errors unless called with a callback, so we disable byId removal by default.
-- Also: some forks return false even when removal succeeded, so we treat a successful call (ok=true) as success.
local function TryRemoveItem(src, itemName, amount, itemId)
    local inv = exports.vorp_inventory
    local name = itemName

    if type(name) == "table" then
        name = name.name or name.item or name.itemname or name.id
    end

    if type(name) ~= "string" then
        dprint(("TryRemoveItem invalid itemName type=%s"):format(type(name)))
        return false
    end

    -- Optional by-id removal (ONLY if you enable it and your inventory supports callback signature)
    if Config.UseRemoveById and itemId ~= nil and inv.subItemById then
        local done, success = false, false
        local ok = pcall(function()
            inv:subItemById(src, itemId, amount, function(res)
                success = (res == true)
                done = true
            end)
        end)
        dprint(("remove byId ok=%s id=%s"):format(tostring(ok), tostring(itemId)))

        local waited = 0
        while not done and waited < 500 do
            Wait(10)
            waited = waited + 10
        end
        if done and success then
            return true
        end
        -- if not done/success, fall back to name removal
    end

    -- Main removal: subItem (name-based)
    local ok2, ret2 = pcall(function()
        return inv:subItem(src, name, amount)
    end)
    dprint(("remove subItem ok=%s ret=%s name=%s"):format(tostring(ok2), tostring(ret2), tostring(name)))

    if ok2 then
        -- Treat ok=true as success (some forks return false/nil even when the item was removed)
        return true
    end

    return false
end


RegisterNetEvent("vtt:buyTicket", function(originKey, destKey)
    local src = source

    local origin = Config.Stations[originKey]
    local dest = Config.Stations[destKey]
    if not origin or not dest then return end

    local price = Config.Routes[originKey] and Config.Routes[originKey][destKey]
    if not price then
        TriggerClientEvent("vorp:TipBottom", src, "That route is not available.", 4000)
        return
    end

    local itemName = Config.TicketItems[destKey]
    if not itemName then
        TriggerClientEvent("vorp:TipBottom", src, "No ticket item configured for that destination.", 4000)
        return
    end

    local char = GetCharacter(src)
    if not char then return end

    -- Basic money check (varies by VORP version)
    local money = tonumber(char.money) or tonumber(char.getCurrency and char.getCurrency(Config.CurrencyType)) or 0
    if money < price then
        TriggerClientEvent("vorp:TipBottom", src, "You don't have enough money.", 4000)
        return
    end

    -- Remove money
    if char.removeCurrency then
        char.removeCurrency(Config.CurrencyType, price)
    elseif char.removeMoney then
        char.removeMoney(price)
    else
        TriggerClientEvent("vorp:TipBottom", src, "Currency remove function not found on character.", 4000)
        return
    end

    -- Ticket metadata shown to conductor
    local meta = {
        origin = originKey,
        destination = destKey,
        originLabel = origin.label,
        destinationLabel = dest.label,
        price = price,
        issuedAt = os.time()
    }
    -- Optional carry check (some forks have different canCarryItem behavior)
    if Config.UseCarryCheck then
        local canCarry = true
        local ok = pcall(function()
            if exports.vorp_inventory and exports.vorp_inventory.canCarryItem then
                local res = exports.vorp_inventory:canCarryItem(src, itemName, 1)
                -- Some forks return boolean, others return a table like {canCarry=true}
                if type(res) == "boolean" then
                    canCarry = res
                elseif type(res) == "table" and res.canCarry ~= nil then
                    canCarry = (res.canCarry == true)
                end
            end
        end)
        dprint(("canCarry check ok=%s canCarry=%s"):format(tostring(ok), tostring(canCarry)))

        if not canCarry then
            -- Refund
            if char.addCurrency then
                char.addCurrency(Config.CurrencyType, price)
            elseif char.addMoney then
                char.addMoney(price)
            end
            TriggerClientEvent("vorp:TipBottom", src, "Inventory cannot carry this item (weight/slots/limits). Refunded.", 7000)
            return
        end
    end

    local added, mode = TryAddItem(src, itemName, 1, meta)

    if added then
        TriggerClientEvent("vorp:TipBottom", src,
            ("Ticket purchased: %s → %s ($%d)"):format(origin.label, dest.label, price), 5000)
        DepositToSynLedger(price)
    else
        -- Refund
        if char.addCurrency then
            char.addCurrency(Config.CurrencyType, price)
        elseif char.addMoney then
            char.addMoney(price)
        end

        dprint(("Failed to add item '%s' using mode=%s. If items exist, try Config.DisableMetadata=true and/or check weight/limits."):format(itemName, tostring(mode)))
        TriggerClientEvent("vorp:TipBottom", src, "Could not add ticket. Check item config/limits. Try Config.DisableMetadata=true. Refunded.", 8000)
    end

end)

-- Register all ticket items as usable
CreateThread(function()
    Wait(1000)
    for _, itemName in pairs(Config.TicketItems) do
        exports.vorp_inventory:registerUsableItem(itemName, function(data)
            local src = data.source
            local meta = data.metadata or {}
            local item = data.item or itemName

            -- Some VORP inventory forks pass item as a table; normalize to string name
            local normalizedName = item
            if type(item) == "table" then
                normalizedName = item.name or item.item or item.itemname or item.id
            end
            if type(normalizedName) ~= "string" then
                normalizedName = itemName
            end

            local itemId = data.id or data.itemId or data.uniqueId
            if itemId == nil and type(item) == "table" then
                itemId = item.id or item.itemId or item.uniqueId
            end

            TriggerEvent("vtt:tryShowTicket", src, normalizedName, meta, itemId)
        end, GetCurrentResourceName())
    end
end)

-- Show ticket to nearest railroader (grade 0-3) for 10 seconds
AddEventHandler("vtt:tryShowTicket", function(buyerSrc, itemName, meta, itemId)
    local buyerPed = GetPlayerPed(buyerSrc)
    if not buyerPed or buyerPed == 0 then return end

    local buyerCoords = GetEntityCoords(buyerPed)

    local nearestRailroader = nil
    local nearestDist = Config.ShowTicketDistance + 0.001

    for _, playerId in ipairs(GetPlayers()) do
        local pid = tonumber(playerId)
        if pid and pid ~= buyerSrc and IsRailroader(pid) then
            local ped = GetPlayerPed(pid)
            if ped and ped ~= 0 then
                local coords = GetEntityCoords(ped)
                local dist = #(buyerCoords - coords)
                if dist < nearestDist then
                    nearestDist = dist
                    nearestRailroader = pid
                end
            end
        end
    end

    if not nearestRailroader then
        TriggerClientEvent("vorp:TipBottom", buyerSrc, "No train conductor nearby.", 4000)
        return
    end

    local buyerName = GetPlayerName(buyerSrc) or ("ID %d"):format(buyerSrc)

    local payload = {
        buyer = buyerName,
        item = itemName,
        origin = meta.originLabel or meta.origin or "Unknown",
        destination = meta.destinationLabel or meta.destination or "Unknown",
        destinationKey = meta.destination or nil,
        price = meta.price or 0,
        issuedAt = meta.issuedAt or 0
    }

    TriggerClientEvent("vtt:showTicketOnScreen", nearestRailroader, payload)
    -- Consume ticket after it has been shown (optional)
    if Config.ConsumeTicketAfterShow then
        local delay = tonumber(Config.ConsumeDelayMs or 0) or 0
        if delay <= 0 then
            local removed = TryRemoveItem(buyerSrc, itemName, 1, itemId)
            dprint(("consumed ticket removed=%s item=%s id=%s"):format(tostring(removed), tostring(itemName), tostring(itemId)))
        else
            SetTimeout(delay, function()
                local removed = TryRemoveItem(buyerSrc, itemName, 1, itemId)
                dprint(("consumed ticket (delayed) removed=%s item=%s id=%s"):format(tostring(removed), tostring(itemName), tostring(itemId)))
            end)
        end
    end

    TriggerClientEvent("vorp:TipBottom", buyerSrc, "Ticket shown to the conductor.", 3000)
end)
