Logs = {}

local function extractInfo(data, text, space)
    local description = text
    for key, value in ipairs(data) do
        description = description .. " `" .. value .. "` "
    end
    return description .. space
end

local color = 15844367 -- it must have a color in order to work, you can add your own colors in the functions
local name = "Policeman"

Logs.Config = {

    Storages = function(town)
        if town == "Valentine" then
            return "" -- add webhook url here
        elseif town == "SaintDenis" then
            return "" -- add webhook url here
        end
    end,

    PlayerEscaped = function(data)
        local description = "**Character Name: ** `" .. data.name .. "`"
        local link = "url link"
        local title = "Player Escaped from Jail"
        Core.AddWebhook(title, link, description, color, name)
    end,

    DecreaseTimeFacing = function(data)
        local description = "**Character Name: ** `" .. data.name .. "`"
        description = description .. "\n**Time reduced: ** `" .. data.time .. "`"
        local link = "url link"
        local title = "Completed Task"
        Core.AddWebhook(title, link, description, color, name)
    end,

    OcurrenceFiled = function(data)
        local description = "**Type: ** `" .. data.type .. "`\n"
        description = extractInfo(data.charges, description .. "**Charges: **", "\n")
        description = description .. extractInfo(data.suspects, "**Suspects: ** ", "\n")
        description = description .. extractInfo(data.witnesses, "**Witnesses: ** ", "\n")
        description = description .. extractInfo(data.officers, "**Officers: ** ", "\n")
        if data.type == "JAIL" then
            description = description .. "\n**Jailed By: ** `" .. data.jailed_by .. "`"
        end
        description = description .. "\n**Reason: ** `" .. data.reason .. "`"
        description = description .. "\n**Town: ** `" .. data.town .. "`"
        local link = "url link"
        local title = "Occurrences "
        Core.AddWebhook(title, link, description, color, name)
    end,
    PayOfficer = function(data)
        local description = "**Officer: ** `" .. data.officers .. "`"
        description = description .. "\n**Amount: ** `" .. data.amount .. "`"
        description = description .. "\n**Town: ** `" .. data.town .. "`"
        local link = "url link"
        local title = "Officer Paid"
        Core.AddWebhook(title, link, description, color, name)
    end,
    SetDuty = function(data)
        local description = "**Officer: ** `" .. data.officers .. "`"
        description = description .. "\n**Town: ** `" .. data.town .. "`"
        local link = "url link"
        local title = "OnDuty"
        Core.AddWebhook(title, link, description, color, name)
    end,
    SetOffDuty = function(data)
        local description = "**Officer: ** `" .. data.officers .. "`"
        description = description .. "\n**Town: ** `" .. data.town .. "`"
        local link = "url link"
        local title = "OffDuty"
        Core.AddWebhook(title, link, description, color, name)
    end,
    IssueBill = function(data)
        local description = "**Name: ** `" .. data.name .. "`"
        description = description .. "\n**Town: ** `" .. data.town .. "`"
        description = description .. "\n**Reason: ** `" .. data.reason .. "`"
        description = description .. "\n**Penal Code: ** `" .. data.penal_code .. "`"
        description = description .. "\n**Amount: ** `" .. data.amount .. "`"
        description = description .. "\n**Officers: ** `" .. data.officers .. "`"
        local link = "url link"
        local title = "Bill Issued"
        Core.AddWebhook(title, link, description, color, name)
    end,
    ArchiveBill = function(data)
        local description = "**bill Id: ** `" .. data.id .. "`"
        description = description .. "\n**Town: ** `" .. data.town .. "`"
        description = description .. "\n**Officers: ** `" .. data.officers .. "`"
        local link = "url link"
        local title = "Bill Archived"
        Core.AddWebhook(title, link, description, color, name)
    end,
    PayBill = function(data)
        local description = "**Name: ** `" .. data.name .. "`"
        description = description .. "\n**Town: ** `" .. data.town .. "`"
        description = description .. "\n**Amount: ** `" .. data.amount .. "`"
        description = description .. "\n**Bill Id: ** `" .. data.id .. "`"
        local link = "url link"
        local title = "Bill Paid"
        Core.AddWebhook(title, link, description, color, name)
    end,
    DeleteCrime = function(data)
        local description = "**Crime Id: ** `" .. data.id .. "`"
        description = description .. "\n**Town: ** `" .. data.town .. "`"
        description = description .. "\n**Officers: ** `" .. data.officers .. "`"
        local link = "url link"
        local title = "Crime Deleted"
        Core.AddWebhook(title, link, description, color, name)
    end,
    JailRelease = function(data)
        local description = "**Name: ** `" .. data.name .. "`"
        description = description .. "\n**Description: ** `" .. " Player has been release his time was finished" .. "`"
        local link = "url link"
        local title = "Jail Release"
        Core.AddWebhook(title, link, description, color, name)
    end,
    IncreaseTimeInPrison = function(data)
        local description = "**Name: ** `" .. data.name .. "`"
        description = description .. "\n**Description: ** `" .. " Player tried to escape time in prison has been increased according to config values" .. "`"
        local link = "url link"
        local title = "Escape but Caught"
        Core.AddWebhook(title, link, description, color, name)
    end,
    JailPlayer = function(data)
        local description = "**Name: ** `" .. data.name .. "`"
        description = description .. "\n**Time: ** `" .. data.time .. "`"
        description = description .. "\n**Cell: ** `" .. data.cell .. "`"
        description = description .. "\n**Jailed By: ** `" .. data.officers .. "`"
        local link = "url link"
        local title = "Player Jailed"
        Core.AddWebhook(title, link, description, color, name)
    end,
    PlayerFreed = function(data)
        local description = "**Name: ** `" .. data.name .. "`"
        description = description .. "\n**Id: ** `" .. data.id .. "`"
        description = description .. "\n**Freed By: ** `" .. data.officers .. "`"
        local link = "url link"
        local title = "Player Freed"
        Core.AddWebhook(title, link, description, color, name)
    end,
    ArchiveOccurrence = function(data)
        local description = "**Occurrence Id: ** `" .. data.id .. "`"
        description = description .. "\n**Town: ** `" .. data.town .. "`"
        description = description .. "\n**Officers: ** `" .. data.officers .. "`"
        local link = "url link"
        local title = "Occurrence Archived"
        Core.AddWebhook(title, link, description, color, name)
    end,
    DeleteArchivedOccurrence = function(data)
        local description = "**Occurrence Id: ** `" .. data.id .. "`"
        description = description .. "\n**Town: ** `" .. data.town .. "`"
        description = description .. "\n**Officers: ** `" .. data.officers .. "`"
        local link = "url link"
        local title = "Archived Occurrence Deleted"
        Core.AddWebhook(title, link, description, color, name)
    end,
    DeleteCriminalRecord = function(data)
        local description = "**Occurrence Id: ** `" .. data.id .. "`"
        description = description .. "\n**Town: ** `" .. data.town .. "`"
        description = description .. "\n**Officers: ** `" .. data.officers .. "`"
        description = description .. "\n**Occurrence: ** `" .. data.index .. "`"
        local link = "url link"
        local title = "Deleted Criminal Record"
        Core.AddWebhook(title, link, description, color, name)
    end,

    DeleteJailRecord = function(data)
        local description = "**Occurrence Id: ** `" .. data.id .. "`"
        description = description .. "\n**Town: ** `" .. data.town .. "`"
        description = description .. "\n**Officers: ** `" .. data.officers .. "`"
        local link = "url link"
        local title = "Deleted Jail Record"
        Core.AddWebhook(title, link, description, color, name)
    end,
    HireEmployee = function(data)
        local description = "**Name: ** `" .. data.name .. "`"
        description = description .. "\n**Job: ** `" .. data.job .. "`"
        description = description .. "\n**Town: ** `" .. data.town .. "`"
        description = description .. "\n**Officers: ** `" .. data.officers .. "`"
        local link = "url link"
        local title = "Employee Hired"
        Core.AddWebhook(title, link, description, color, name)
    end,
    FireEmployee = function(data)
        local description = "**Name: ** `" .. data.name .. "`"
        description = description .. "\n**Town: ** `" .. data.town .. "`"
        description = description .. "\n**Officers: ** `" .. data.officers .. "`"
        local link = "url link"
        local title = "Fire Employee"
        Core.AddWebhook(title, link, description, color, name)
    end,
    UpdateLedger = function(data)
        local description = "**Type: ** `" .. data.type .. "`"
        description = description .. "\n**Town: ** `" .. data.town .. "`"
        description = description .. "\n**Officers: ** `" .. data.officers .. "`"
        description = description .. "\n**Amount: ** `" .. data.amount .. "`"
        local link = "url link"
        local title = "Transaction"
        Core.AddWebhook(title, link, description, color, name)
    end,
}
