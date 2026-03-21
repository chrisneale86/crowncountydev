-- You can change the event to use a different notification system if needed
-- if you want to add things like subtitle and title not just message you will need to shearch the message sting for the sting your looking for and do something diffrent for that sting


local Core = exports.vorp_core:GetCore()

local Checkforstring = false -- set to false to disable checking for strings and using default notification system

-- Add new entries here instead of duplicating blocks below
-- You can set a custom notify handler per entry if you need different styles
local NotificationChecks = {
    {
        pattern = Config.Language.salary,
        title = "Salary Payment",
        dict = "generic_textures",
        icon = "tick",
        color = "COLOR_WHITE",
    },
    {
        pattern = Config.Language.paidbill,
        title = "Bill Payment",
        dict = "generic_textures",
        icon = "tick",
        color = "COLOR_WHITE",
    },
}

local function CustomNotify(entry)
    return function(serverid, title, message, length)
        if serverid == nil then
            Core.NotifyLeft(title, message, entry.dict or "generic_textures", entry.icon or "tick", length or 4000, entry.color or "COLOR_WHITE")
        else
            Core.NotifyLeft(serverid, title, message, entry.dict or "generic_textures", entry.icon or "tick", length or 4000, entry.color or "COLOR_WHITE")
        end
    end
end

local function findNotification(msg)
    if not Checkforstring or msg == "" then return nil end

    for _, entry in ipairs(NotificationChecks) do
        local pat = entry.pattern
        if type(pat) == "string" and pat ~= "" and string.find(msg, pat, 1, true) then
            entry.notify = entry.notify or CustomNotify(entry)
            return entry
        end
    end

    return nil
end

function Syn_shared_Notify(serverid, msg, length)
    local safeMsg = tostring(msg or "")

    local matched = findNotification(safeMsg)
    if matched then
        matched.notify(serverid, matched.title or "Notification", safeMsg, length)
        return
    end

    -- Default notifications
    if serverid == nil then
        --trigger from the client
        TriggerEvent("vorp:TipBottom", safeMsg, length)
    else
        --trigger from the server
        TriggerClientEvent("vorp:TipRight", serverid, safeMsg, length)
    end
end
