local VORPcore = exports.vorp_core:GetCore()

local VORPInv = exports.vorp_inventory:vorp_inventoryApi()

function NotifySimpleTop(source, title, subtitle, time)
    VORPcore.NotifySimpleTop(source, title, subtitle, time)
end

function NotifyObjective(source, text, time)
    VORPcore.NotifyObjective(source, text, time)
end

function NotifyAvanced(source, title, dict, icon, color, time)
    VORPcore.NotifyAvanced(source, title, dict, icon, color, time)
end

function GetCharacter(source)
    -- .job
    -- .jobGrade
    -- .identifier
    -- .charIdentifier
    -- .xp - Config.VorpXP
    -- .setXp(number)   - Config.VorpXP
    -- .firstname
    -- .lastname
    return VORPcore.getUser(source).getUsedCharacter
end

function GetCharacterJob(source)
    return Player(source).state.Character and Player(source).state.Character.Job 
end

function addCurrency(source, currency, amount)
    local Character = GetCharacter(source)
    Character.addCurrency(currency, amount) -- Add money 1000 | 0 = money, 1 = gold, 2 = rol
end

function getItemCount(source, item, metadata)
    return VORPInv.getItemCount(source, item, metadata)
end

function subItem(source, item, amount)
    return VORPInv.subItem(source, item, amount)
end

function addItem(source, item, amount, metadata)
    return VORPInv.addItem(source, item, amount, metadata)
end

function AddWebhook(title, webhook, description, color, name, logo, footerlogo, avatar)
    VORPcore.AddWebhook(title, webhook, description, color, name, logo, footerlogo, avatar)
end