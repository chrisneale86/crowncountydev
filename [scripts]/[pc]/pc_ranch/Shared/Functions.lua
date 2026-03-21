--> Get framework
GetFramework = function()
    local frameworks = {
        ["vorp_core"] = "vorp",
        
        ["rsg-core"] = "rsg",
        
        ["qbr-core"] = "qbr",
        
        ["rpx-core"] = "rpx",
        
        ["redem_roleplay"] = "redem"
    }

    for resource, name in pairs(frameworks) do
        if GetResourceState(resource) == "started" then
            return name
        end
    end

    return nil
end
--

--> Get Export
GetFrameworkExport = function(callback)
    if type(callback) ~= "function" then return end
    
    local framework = GetFramework()
    
    if framework == "vorp" then
        TriggerEvent("getCore", function(core)
            callback(core)
        end)
    
    elseif framework == "rsg" then
        callback(exports["rsg-core"]:GetCoreObject())
    
    elseif framework == "qbr" then
        callback(exports["qbr-core"]:GetPlayerData())
    
    elseif framework == "rpx" then
        callback(exports["rpx-core"]:GetObject())
    
    elseif framework == "redem" then
        callback(exports.redem_roleplay:RedEM())
    else
        callback(nil)
    end
end
--

--> Get Player Info
GetPlayerInfo = function(source, infoType, value)
    local source = tonumber(source)

    local framework = GetFramework()

    local promise = promise:new()

    GetFrameworkExport(function(frameExport)
        if not frameExport then
            promise:resolve(nil)
            
            return
        end

        if framework == "vorp" then
            local user = frameExport.getUser(source) and frameExport.getUser(source).getUsedCharacter

            local VorpInv = exports.vorp_inventory:vorp_inventoryApi()

            if infoType == "player" then
                promise:resolve(user)

            elseif infoType == "identifier" then
                promise:resolve(user and user.identifier or nil)

            elseif infoType == "inventory" then
                promise:resolve(user and VorpInv.getUserInventory(source) or {})

            elseif infoType == "money" then
                promise:resolve(user and tonumber(user.money) or 0)

            elseif infoType == "fullname" then
                promise:resolve(user and (user.firstname .. " " .. user.lastname) or nil)

            elseif infoType == "hasItem" then
                promise:resolve(VorpInv.getItemCount(source, value, nil) > 0)
            end

        elseif framework == "rsg" then
            local user = frameExport.Functions.GetPlayer(source)

            if infoType == "player" then
                promise:resolve(user)

            elseif infoType == "identifier" then
                promise:resolve(user and user.PlayerData.citizenid or nil)

            elseif infoType == "inventory" then
                promise:resolve(user and user.PlayerData.items or {})

            elseif infoType == "money" then
                promise:resolve(user and user.Functions.GetMoney(value) or 0)

            elseif infoType == "fullname" then
                promise:resolve(user and (user.PlayerData.charinfo.firstname .. " " .. user.PlayerData.charinfo.lastname) or nil)

            elseif infoType == "hasItem" then
                promise:resolve(user and user.Functions.HasItem(value, 1) or user.Functions.GetItemByName(value) ~= nil or false)
            end

        elseif framework == "qbr" then
            local user = exports["qbr-core"]:GetPlayer(source)

            if infoType == "player" then
                promise:resolve(user)

            elseif infoType == "identifier" then
                promise:resolve(user and user.PlayerData.citizenid or nil)

            elseif infoType == "inventory" then
                promise:resolve(user and user.PlayerData.items or {})

            elseif infoType == "money" then
                promise:resolve(user and user.Functions.GetMoney(value) or 0)

            elseif infoType == "fullname" then
                promise:resolve(user and (user.PlayerData.charinfo.firstname .. " " .. user.PlayerData.charinfo.lastname) or nil)

            elseif infoType == "hasItem" then
                promise:resolve(user and user.Functions.GetItemByName(value) ~= nil or false)
            end

        elseif framework == "rpx" then
            local user = frameExport.Functions.GetPlayer(source)

            if infoType == "player" then
                promise:resolve(user)

            elseif infoType == "identifier" then
                promise:resolve(user and user.PlayerData.citizenid or nil)

            elseif infoType == "inventory" then
                promise:resolve(user and user.inventory or {})

            elseif infoType == "money" then
                promise:resolve(user and user.Functions.GetMoney(value) or 0)

            elseif infoType == "fullname" then
                promise:resolve(user and (user.PlayerData.charinfo.firstname .. " " .. user.PlayerData.charinfo.lastname) or nil)

            elseif infoType == "hasItem" then
                promise:resolve(exports['rpx-inventory']:GetItem(source, value, nil, true) > 0)
            end

        elseif framework == "redem" then
            local user = exports.redem_roleplay:getUser(source)

            if infoType == "player" then
                promise:resolve(user)

            elseif infoType == "identifier" then
                promise:resolve(user and user.identifier or nil)

            elseif infoType == "inventory" then
                TriggerEvent("redemrp_inventory:getData", function(data)
                    promise:resolve(data or {})
                end)

            elseif infoType == "money" then
                promise:resolve(user and user.getMoney(value) or 0)

            elseif infoType == "fullname" then
                promise:resolve(user and (user.firstname .. " " .. user.lastname) or nil)

            elseif infoType == "hasItem" then
                promise:resolve(user and user.getInventoryItem(value) ~= nil or false)
            end
        else
            promise:resolve(nil)
        end
    end)

    return Citizen.Await(promise)
end
--

--> Handle economy action
handleEconomyAction = function(source, type, name, amount)
    local _source = source

    local framework = GetFramework()

    local player = GetPlayerInfo(_source, 'player')

    if not player then return end

    if framework == "vorp" then
        if name == "cash" or name == "money" then 
            name = 0

        elseif name == "bank" then
            name = 1
        end

        local VorpInv = exports.vorp_inventory:vorp_inventoryApi()

        if type == "addItem" then
            VorpInv.addItem(_source, name, amount)

        elseif type == "removeItem" then
            VorpInv.subItem(_source, name, amount)

        elseif type == "addMoney" then
            player.addCurrency(name, amount)

        elseif type == "removeMoney" then
            player.removeCurrency(name, amount)
        end

    elseif framework == "rsg" then        
        if type == "addItem" then
            player.Functions.AddItem(name, amount)

        elseif type == "removeItem" then
            player.Functions.RemoveItem(name, amount)

        elseif type == "addMoney" then
            player.Functions.AddMoney(name, amount)

        elseif type == "removeMoney" then
            player.Functions.RemoveMoney(name, amount)
        end

    elseif framework == "qbr" then
        if type == "addItem" then
            player.Functions.AddItem(name, amount)

        elseif type == "removeItem" then
            player.Functions.RemoveItem(name, amount)

        elseif type == "addMoney" then
            player.Functions.AddMoney(name, amount)

        elseif type == "removeMoney" then
            player.Functions.RemoveMoney(name, amount)
        end

    elseif framework == "rpx" then
        if type == "addItem" then
            player.addItem(name, amount)

        elseif type == "removeItem" then
            player.removeItem(name, amount)

        elseif type == "addMoney" then
            player.addMoney(name, amount)

        elseif type == "removeMoney" then
            player.removeMoney(name, amount)
        end

    elseif framework == "redem" then
        if type == "addItem" then
            player.addItem(name, amount)

        elseif type == "removeItem" then
            player.removeItem(name, amount)

        elseif type == "addMoney" then
            player.addMoney(name)
            
        elseif type == "removeMoney" then
            player.removeMoney(name)
        end
    end
end
--

--> Has permission function
hasPermission = function(source, group)
    if IsPlayerAceAllowed(source, 'command') then 
        return true 
    end

    if exports['pc_permsys']:HasPlayerRightGroup(source, group) then 
        return true 
    end

    return false
end
--

--> Notifications
Notify = function(text, type, duration, firstInfo, secondInfo, thirdInfo)
    local framework = GetFramework()

    local message = Progressive_Code_Ranch_System_Config.NotificationTexts[text] or text

    message = message:gsub("%%d", tostring(firstInfo or ""))
    
    message = message:gsub("%%s", tostring(secondInfo or ""))
    
    message = message:gsub("%%r", tostring(thirdInfo or ""))

    if framework == "vorp" then
        TriggerEvent('vorp:TipRight', message, duration)

    elseif framework == "rsg" then
        lib.notify({ title = 'Notification', description = message, type = type })

    elseif framework == "qbr" then
        lib.notify({ title = 'Notification', description = message, type = type })

    elseif framework == "rpx" then
        lib.notify({ title = 'Notification', description = message, type = type })
        
    elseif framework == "redem" then
        TriggerEvent("redem_roleplay:NotifyRight", message, duration)
    end
end
--