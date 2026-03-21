local VorpCore = {}
TriggerEvent("getCore", function(core)
    VorpCore = core
end)

local VorpInv = exports.vorp_inventory:vorp_inventoryApi()

-- GET BANK INFO (creates row if missing)
RegisterServerEvent('syn_bank:getinfo')
AddEventHandler('syn_bank:getinfo', function(name)
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local charidentifier = Character.charIdentifier

    exports.oxmysql:query(
        "SELECT money, gold FROM bank_users WHERE charidentifier = ? AND name = ? LIMIT 1",
        { charidentifier, name },
        function(result)
            local money = 0
            local gold = 0

            if result and result[1] then
                money = tonumber(result[1].money) or 0
                gold  = tonumber(result[1].gold) or 0
            else
                exports.oxmysql:insert(
                    "INSERT INTO bank_users (`name`,`charidentifier`,`money`,`gold`) VALUES (?, ?, ?, ?)",
                    { name, charidentifier, money, gold }
                )
            end

            TriggerClientEvent("syn_bank:recinfo", _source, { money = money, gold = gold })
        end
    )
end)

-- DEPOSIT CASH
RegisterServerEvent('syn_bank:depositcash')
AddEventHandler('syn_bank:depositcash', function(amount, name)
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local charidentifier = Character.charIdentifier

    amount = tonumber(amount) or 0
    if amount <= 0 then
        TriggerClientEvent("vorp:TipRight", _source, Config.language.invalid, 10000)
        TriggerClientEvent("syn_bank:ready", _source)
        return
    end

    local money = tonumber(Character.money) or 0
    if money >= amount then
        Character.removeCurrency(0, amount)

        exports.oxmysql:update(
            "UPDATE bank_users SET money = money + ? WHERE charidentifier = ? AND name = ?",
            { amount, charidentifier, name }
        )

        TriggerClientEvent("vorp:TipRight", _source, Config.language.youdepo .. amount, 10000)
        Discord(Config.language.depoc, GetPlayerName(_source), amount, name)
    else
        TriggerClientEvent("vorp:TipRight", _source, Config.language.invalid, 10000)
    end

    TriggerClientEvent("syn_bank:ready", _source)
end)

-- DEPOSIT GOLD
RegisterServerEvent('syn_bank:depositgold')
AddEventHandler('syn_bank:depositgold', function(amount, name)
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local charidentifier = Character.charIdentifier

    amount = tonumber(amount) or 0
    if amount <= 0 then
        TriggerClientEvent("vorp:TipRight", _source, Config.language.invalid, 10000)
        TriggerClientEvent("syn_bank:ready", _source)
        return
    end

    local gold = tonumber(Character.gold) or 0
    if gold >= amount then
        Character.removeCurrency(1, amount)

        exports.oxmysql:update(
            "UPDATE bank_users SET gold = gold + ? WHERE charidentifier = ? AND name = ?",
            { amount, charidentifier, name }
        )

        TriggerClientEvent("vorp:TipRight", _source, Config.language.youdepog .. amount, 10000)
        Discord(Config.language.depog, GetPlayerName(_source), amount, name)
    else
        TriggerClientEvent("vorp:TipRight", _source, Config.language.invalid, 10000)
    end

    TriggerClientEvent("syn_bank:ready", _source)
end)

-- WITHDRAW CASH
RegisterServerEvent('syn_bank:withcash')
AddEventHandler('syn_bank:withcash', function(amount, name)
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local charidentifier = Character.charIdentifier

    amount = tonumber(amount) or 0
    if amount <= 0 then
        TriggerClientEvent("vorp:TipRight", _source, Config.language.invalid, 10000)
        TriggerClientEvent("syn_bank:ready", _source)
        return
    end

    exports.oxmysql:query(
        "SELECT money FROM bank_users WHERE charidentifier = ? AND name = ? LIMIT 1",
        { charidentifier, name },
        function(result)
            local bankMoney = 0
            if result and result[1] and result[1].money ~= nil then
                bankMoney = tonumber(result[1].money) or 0
            end

            if bankMoney >= amount then
                exports.oxmysql:update(
                    "UPDATE bank_users SET money = money - ? WHERE charidentifier = ? AND name = ?",
                    { amount, charidentifier, name }
                )

                Character.addCurrency(0, amount)
                TriggerClientEvent("vorp:TipRight", _source, Config.language.withdrew .. amount, 10000)
                Discord(Config.language.withc, GetPlayerName(_source), amount, name)
            else
                TriggerClientEvent("vorp:TipRight", _source, Config.language.invalid, 10000)
            end

            TriggerClientEvent("syn_bank:ready", _source)
        end
    )
end)

-- WITHDRAW GOLD
RegisterServerEvent('syn_bank:withgold')
AddEventHandler('syn_bank:withgold', function(amount, name)
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local charidentifier = Character.charIdentifier

    amount = tonumber(amount) or 0
    if amount <= 0 then
        TriggerClientEvent("vorp:TipRight", _source, Config.language.invalid, 10000)
        TriggerClientEvent("syn_bank:ready", _source)
        return
    end

    exports.oxmysql:query(
        "SELECT gold FROM bank_users WHERE charidentifier = ? AND name = ? LIMIT 1",
        { charidentifier, name },
        function(result)
            local bankGold = 0
            if result and result[1] and result[1].gold ~= nil then
                bankGold = tonumber(result[1].gold) or 0
            end

            if bankGold >= amount then
                exports.oxmysql:update(
                    "UPDATE bank_users SET gold = gold - ? WHERE charidentifier = ? AND name = ?",
                    { amount, charidentifier, name }
                )

                Character.addCurrency(1, amount)
                TriggerClientEvent("vorp:TipRight", _source, Config.language.withdrewg .. amount, 10000)
                Discord(Config.language.withg, GetPlayerName(_source), amount, name)
            else
                TriggerClientEvent("vorp:TipRight", _source, Config.language.invalid, 10000)
            end

            TriggerClientEvent("syn_bank:ready", _source)
        end
    )
end)

-- DISCORD LOGS
function Discord(title, name, description, location)
    local webhook = Config.adminwebhook
    local avatar = Config.webhookavatar
    local color = 3447003

    local logs = {
        {
            ["color"] = color,
            ["title"] = title,
            ["description"] = description,
            ["footer"] = { ["text"] = location }
        }
    }

    PerformHttpRequest(
        webhook,
        function(err, text, headers) end,
        'POST',
        json.encode({ ["username"] = name, ["avatar_url"] = avatar, embeds = logs }),
        { ['Content-Type'] = 'application/json' }
    )
end
