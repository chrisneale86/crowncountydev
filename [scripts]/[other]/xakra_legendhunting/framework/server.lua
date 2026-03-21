TriggerEvent("getCore", function(core)
    VORPcore = core
end)

function NotifySimpleTop(source, title, subtitle, time)
    VORPcore.NotifySimpleTop(source, title, subtitle, time)
end

function NotifyAvanced(source, title, dict, icon, color, time)
    VORPcore.NotifyAvanced(source, title, dict, icon, color, time)
end

function NotifyObjective(source, text, time)
    VORPcore.NotifyObjective(source, text, time)
end

function GetCharacter(source)
    -- .charIdentifier
    -- .job
    return VORPcore.getUser(source).getUsedCharacter
end

function addCurrency(source, currency, amount)
    local Character = GetCharacter(source)
    Character.addCurrency(currency, amount) -- Add money 1000 | 0 = money, 1 = gold, 2 = rol
end

function addItem(source, item, amount, metadata, callback)
    exports.vorp_inventory:addItem(source, item, amount, metadata, callback)
end

function subItem(source, item, amount)
    exports.vorp_inventory:subItem(source, item, amount)
end

function getItemCount(source, callback, item, metadata)
    return exports.vorp_inventory:getItemCount(source, callback, item, metadata)
end

function AddWebhook(title, webhook, description, color, name, logo, footerlogo, avatar)
    VORPcore.AddWebhook(title, webhook, description, color, name, logo, footerlogo, avatar)
end