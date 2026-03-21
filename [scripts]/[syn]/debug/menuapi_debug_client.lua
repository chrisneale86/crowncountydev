-- MenuAPI Debug - Client Side
-- This will help diagnose menu and input prompt issues

local debugMode = true -- Set to false to disable console spam

local function DebugPrint(message, type)
    if not debugMode then return end
    
    local prefix = "^3[MenuAPI Debug]^7"
    if type == "error" then
        prefix = "^1[MenuAPI ERROR]^7"
    elseif type == "success" then
        prefix = "^2[MenuAPI SUCCESS]^7"
    elseif type == "warning" then
        prefix = "^5[MenuAPI WARNING]^7"
    end
    
    print(prefix .. " " .. tostring(message))
end

-- Check if MenuAPI exists
Citizen.CreateThread(function()
    Citizen.Wait(5000) -- Wait for resources to load
    
    DebugPrint("=== MenuAPI Debug Started ===", "success")
    
    -- Check for MenuAPI/WarMenu
    if WarMenu then
        DebugPrint("WarMenu is loaded ✓", "success")
    else
        DebugPrint("WarMenu is NOT loaded ✗", "error")
    end
    
    -- Check for VORP Core
    if exports.vorp_core then
        DebugPrint("VORP Core exports available ✓", "success")
        local Core = exports.vorp_core:GetCore()
        if Core then
            DebugPrint("VORP Core initialized ✓", "success")
        else
            DebugPrint("VORP Core NOT initialized ✗", "error")
        end
    else
        DebugPrint("VORP Core exports NOT available ✗", "error")
    end
    
    DebugPrint("=== Checking Input Systems ===")
    
    -- Check native input functions
    local inputFunctions = {
        "DisplayOnscreenKeyboard",
        "UpdateOnscreenKeyboard", 
        "GetOnscreenKeyboardResult",
        "AddTextEntry",
        "DisplayHelpTextThisFrame"
    }
    
    for _, funcName in ipairs(inputFunctions) do
        if _G[funcName] then
            DebugPrint(funcName .. " available ✓", "success")
        else
            DebugPrint(funcName .. " NOT available ✗", "error")
        end
    end
end)

-- Monitor for input prompts
local isInputActive = false
local inputStartTime = 0

-- Hook into common input functions to detect when they're called
local originalDisplayKeyboard = DisplayOnscreenKeyboard
function DisplayOnscreenKeyboard(...)
    DebugPrint("DisplayOnscreenKeyboard CALLED", "warning")
    isInputActive = true
    inputStartTime = GetGameTimer()
    return originalDisplayKeyboard(...)
end

-- Command to test input manually
RegisterCommand("testinput", function(source, args)
    DebugPrint("Testing input prompt...", "warning")
    
    local result = TestInputPrompt("Test Input", "Enter a number:", 10)
    
    if result then
        DebugPrint("Input result: " .. tostring(result), "success")
    else
        DebugPrint("Input was cancelled or failed", "error")
    end
end, false)

-- Test input function
function TestInputPrompt(title, subtitle, maxLength)
    DebugPrint("TestInputPrompt started", "warning")
    DebugPrint("Title: " .. tostring(title))
    DebugPrint("Subtitle: " .. tostring(subtitle))
    DebugPrint("MaxLength: " .. tostring(maxLength))
    
    AddTextEntry("FMMC_KEY_TIP1", title)
    
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", subtitle or "", "", "", "", maxLength or 128)
    
    DebugPrint("Keyboard displayed, waiting for input...")
    
    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Citizen.Wait(0)
    end
    
    local result = nil
    if UpdateOnscreenKeyboard() ~= 2 then
        result = GetOnscreenKeyboardResult()
        DebugPrint("Keyboard result: " .. tostring(result), "success")
    else
        DebugPrint("Keyboard cancelled", "warning")
    end
    
    return result
end

-- Monitor menu states
RegisterNetEvent("syn_society:menuclosed")
AddEventHandler("syn_society:menuclosed", function()
    DebugPrint("Menu closed event triggered", "warning")
end)

-- Command to check current player info
RegisterCommand("debuginfo", function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    
    DebugPrint("=== Player Debug Info ===")
    DebugPrint("Coords: " .. coords.x .. ", " .. coords.y .. ", " .. coords.z)
    DebugPrint("Player Ped: " .. playerPed)
    
    TriggerServerEvent("menuapi_debug:getjobinfo")
end, false)

-- Receive job info from server
RegisterNetEvent("menuapi_debug:sendjobinfo")
AddEventHandler("menuapi_debug:sendjobinfo", function(job, grade, society_money)
    DebugPrint("=== Job Information ===", "success")
    DebugPrint("Job: " .. tostring(job))
    DebugPrint("Grade: " .. tostring(grade))
    DebugPrint("Society Ledger: $" .. tostring(society_money or "UNKNOWN"))
end)

-- Test deposit function
RegisterCommand("testdeposit", function(source, args)
    local amount = tonumber(args[1]) or 100
    
    DebugPrint("Testing deposit of $" .. amount, "warning")
    TriggerServerEvent("menuapi_debug:testdeposit", amount)
end, false)

-- Monitor for errors
local errorCount = 0
AddEventHandler("onClientResourceStart", function(resourceName)
    if resourceName == GetCurrentResourceName() then
        DebugPrint("Resource started: " .. resourceName, "success")
    end
end)

-- Help command
RegisterCommand("debughelp", function()
    print("^3=== MenuAPI Debug Commands ===^7")
    print("^2/testinput^7 - Test the input prompt system")
    print("^2/debuginfo^7 - Show current player and job info")
    print("^2/testdeposit [amount]^7 - Test depositing money to society")
    print("^2/debughelp^7 - Show this help")
    print("^3==============================^7")
end, false)

DebugPrint("Debug script loaded. Type ^2/debughelp^7 for commands", "success")
