-- LR-MultiJobs Discord Logging System
-- Fixed version for proper folder structure

-- ============================================
-- Discord Logging Configuration
-- ============================================
local DiscordConfig = {
    EnableLogs = true,
    WebhookURL = "ADD_YOUR_WEBHOOK_HERE",
    
    -- Bot appearance
    BotName = "LR-MultiJobs Logger",
    BotAvatar = "",
    FooterIcon = "",
    
    -- Log events
    LogJobSwitches = true,
    LogJobQuits = true,
    LogHiring = true,
    LogFiring = true,
    LogPromotions = true,
    LogAdminActions = true
}

local Logs = {}

-- Debug print function
local function debugPrint(...)
    -- Always print debug info since Config might not be loaded yet
    print('^6[lr-MultiJobs Discord]^7', ...)
end

-- Send Discord webhook log
function Logs.SendLog(title, description, color)
    if not DiscordConfig.EnableLogs then 
        debugPrint('Logging disabled, skipping log:', title)
        return 
    end
    
    if not DiscordConfig.WebhookURL or DiscordConfig.WebhookURL == "" or DiscordConfig.WebhookURL == "https://discord.com/api/webhooks/YOUR_WEBHOOK_URL_HERE" then
        debugPrint('Invalid webhook URL, skipping log:', title)
        return
    end

    color = color or 3447003

    local embed = {
        {
            ["title"] = title,
            ["description"] = description,
            ["color"] = color,
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ"),
            ["footer"] = {
                ["text"] = "LR-MultiJobs System",
                ["icon_url"] = DiscordConfig.FooterIcon
            }
        }
    }

    local payload = {
        ["username"] = DiscordConfig.BotName,
        ["avatar_url"] = DiscordConfig.BotAvatar,
        ["embeds"] = embed
    }

    debugPrint('Sending Discord log:', title)

    if IsDuplicityVersion() then
        PerformHttpRequest(DiscordConfig.WebhookURL, function(statusCode, response, headers)
            if statusCode == 200 or statusCode == 204 then
                debugPrint('Discord log sent successfully:', title, '(Status:', statusCode, ')')
            else
                debugPrint('Discord log failed:', title, 'Status:', statusCode, 'Response:', response)
            end
        end, "POST", json.encode(payload), {
            ["Content-Type"] = "application/json"
        })
    else
        debugPrint('Not running on server side, cannot send Discord log')
    end
end

-- Get player info for logging
local function getPlayerInfo(source)
    if not source or source == 0 then
        return "Unknown Player (Invalid Source)"
    end

    -- Try to get VORP user
    local success, result = pcall(function()
        local Core = exports.vorp_core:GetCore()
        local user = Core.getUser(source)
        if not user then 
            return nil 
        end
        
        local character = user.getUsedCharacter
        if not character then 
            return nil 
        end
        
        return character.firstname .. " " .. character.lastname .. " (ID: " .. source .. ")"
    end)
    
    if success and result then
        return result
    else
        debugPrint('Failed to get player info for source:', source, 'Error:', tostring(result))
        return "Unknown Player (ID: " .. source .. ")"
    end
end

-- Log job switch
function Logs.JobSwitch(source, fromJob, toJob, grade)
    debugPrint('JobSwitch called:', source, fromJob, '->', toJob, 'grade:', grade)
    
    if not DiscordConfig.LogJobSwitches then 
        debugPrint('Job switch logging disabled')
        return 
    end
    
    local player = getPlayerInfo(source)
    local title = "Job Switch"
    local description = string.format(
        "**Player:** %s\n**From:** %s\n**To:** %s (Grade %d)\n**Time:** <t:%d:F>",
        player, 
        fromJob or "Unemployed", 
        toJob or "Unemployed", 
        grade or 0, 
        os.time()
    )
    
    debugPrint('Preparing to send job switch log')
    
    SetTimeout(500, function()
        Logs.SendLog(title, description, 3447003) -- Blue
    end)
end

-- Log job quit
function Logs.JobQuit(source, jobName, grade)
    debugPrint('JobQuit called:', source, jobName, 'grade:', grade)
    
    if not DiscordConfig.LogJobQuits then 
        debugPrint('Job quit logging disabled')
        return 
    end
    
    local player = getPlayerInfo(source)
    local title = "Job Quit (Permanent)"
    local description = string.format(
        "**Player:** %s\n**Job Quit:** %s (Grade %d)\n**Status:** Must be rehired by business owner\n**Time:** <t:%d:F>",
        player, jobName, grade or 0, os.time()
    )
    
    debugPrint('Preparing to send job quit log')
    
    SetTimeout(500, function()
        Logs.SendLog(title, description, 15158332) -- Red
    end)
end

-- Log hire
function Logs.SynSocietyHire(targetId, jobName, hiredBy)
    debugPrint('SynSocietyHire called:', targetId, jobName, 'by:', hiredBy)
    
    if not DiscordConfig.LogHiring then 
        debugPrint('Hiring logging disabled')
        return 
    end
    
    local target = getPlayerInfo(targetId)
    local hirer = getPlayerInfo(hiredBy)
    local title = "Player Hired"
    local description = string.format(
        "**New Employee:** %s\n**Job:** %s\n**Hired By:** %s\n**Starting Grade:** 0\n**Time:** <t:%d:F>",
        target, jobName, hirer, os.time()
    )
    
    debugPrint('Preparing to send hire log')
    
    SetTimeout(500, function()
        Logs.SendLog(title, description, 3066993) -- Green
    end)
end

-- Log fire
function Logs.SynSocietyFire(targetCharId, jobName, firedBy)
    debugPrint('SynSocietyFire called:', targetCharId, jobName, 'by:', firedBy)
    
    if not DiscordConfig.LogFiring then 
        debugPrint('Firing logging disabled')
        return 
    end
    
    local firer = getPlayerInfo(firedBy)
    local title = "Player Fired"
    local description = string.format(
        "**Character ID:** %s\n**Job:** %s\n**Fired By:** %s\n**Status:** Removed from multijobs system\n**Time:** <t:%d:F>",
        targetCharId, jobName, firer, os.time()
    )
    
    debugPrint('Preparing to send fire log')
    
    SetTimeout(500, function()
        Logs.SendLog(title, description, 15105570) -- Orange
    end)
end

-- Log promotion
function Logs.SynSocietyRankChange(targetCharId, jobName, newRank, promotedBy)
    debugPrint('SynSocietyRankChange called:', targetCharId, jobName, 'rank:', newRank, 'by:', promotedBy)
    
    if not DiscordConfig.LogPromotions then 
        debugPrint('Promotion logging disabled')
        return 
    end
    
    local promoter = getPlayerInfo(promotedBy)
    local title = "Rank Change"
    local description = string.format(
        "**Character ID:** %s\n**Job:** %s\n**New Rank:** Grade %d\n**Updated By:** %s\n**Time:** <t:%d:F>",
        targetCharId, jobName, newRank, promoter, os.time()
    )
    
    debugPrint('Preparing to send rank change log')
    
    SetTimeout(500, function()
        Logs.SendLog(title, description, 9936031) -- Purple
    end)
end

-- Log admin action
function Logs.AdminAction(source, command, target, details)
    debugPrint('AdminAction called:', source, command, target, details)
    
    if not DiscordConfig.LogAdminActions then 
        debugPrint('Admin action logging disabled')
        return 
    end
    
    local admin = getPlayerInfo(source)
    local title = "Admin Command"
    local description = string.format(
        "**Admin:** %s\n**Command:** /%s\n%s**Time:** <t:%d:F>",
        admin, command, details and ("**Details:** " .. details .. "\n") or "", os.time()
    )
    
    debugPrint('Preparing to send admin action log')
    
    SetTimeout(500, function()
        Logs.SendLog(title, description, 16776960) -- Yellow
    end)
end

-- Test function
function Logs.TestLog()
    debugPrint('Sending test Discord log...')
    Logs.SendLog("Test Log", "This is a test message from LR-MultiJobs logging system.", 16776960)
end

-- Initialize logging system (only run on server)
if IsDuplicityVersion() then
    Citizen.CreateThread(function()
        Wait(2000) -- Wait for everything to load
        
        debugPrint('Discord logging system initialized')
        debugPrint('Logging enabled:', DiscordConfig.EnableLogs)
        debugPrint('Webhook configured:', DiscordConfig.WebhookURL ~= "" and "YES" or "NO")
        debugPrint('Job switches:', DiscordConfig.LogJobSwitches and "ON" or "OFF")
        debugPrint('Job quits:', DiscordConfig.LogJobQuits and "ON" or "OFF")
        debugPrint('Hiring:', DiscordConfig.LogHiring and "ON" or "OFF")
        debugPrint('Firing:', DiscordConfig.LogFiring and "ON" or "OFF")
        debugPrint('Promotions:', DiscordConfig.LogPromotions and "ON" or "OFF")
        debugPrint('Admin actions:', DiscordConfig.LogAdminActions and "ON" or "OFF")
    end)
    
    -- Command to test Discord logging
    RegisterCommand('testlog', function(source, args, rawCommand)
        debugPrint('Test log command executed by player:', source)
        Logs.TestLog()
        
        if source > 0 then
            local success, result = pcall(function()
                local Core = exports.vorp_core:GetCore()
                Core.NotifyRightTip(source, "Test Discord log sent (check console for details)", 4000)
            end)
            
            if not success then
                debugPrint('Failed to send notification:', result)
            end
        end
    end, false)
end

-- Export to global
_G.Logs = Logs

debugPrint('Discord logging system loaded successfully')