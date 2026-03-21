--@class Bridge
Bridge = {}
Bridge.__index = Bridge

local Core

local selectedFramework


function DebugPrint(...)
    if not Config.Debug then
        return
    end
    local args = {...}
    local level = 2  -- Default stack level is 2 if not provided

    if type(args[1]) == "number" then
        level = table.remove(args, 1)  -- Remove the first argument and use it as the stack level
    end

    for i, v in ipairs(args) do
        if type(v) == "table" then
            args[i] = json.encode(v)
        elseif type(v) == "boolean" then
            args[i] = v and "true" or "false"
        end
    end

    local info = debug.getinfo(level, "Sl")
    local src = info.short_src
    local line = info.currentline
    local funcName = debug.getinfo(level, "n").name or "unknown"
    print(string.format("[%s] %s:%d (%s) %s", GetCurrentResourceName(), src, line, funcName, table.concat(args, " ")))
end

function Bridge.new()
    local self = setmetatable({}, Bridge)
    if GetResourceState("vorp_core") == "started" then
        selectedFramework = "vorp"
        Core = exports.vorp_core:GetCore()
    elseif GetResourceState("rpx-core") == "started" then
        selectedFramework = "rpx"
        Core = exports['rpx-core']:GetObject()
    elseif GetResourceState("rsg-core") == "started" then
        selectedFramework = "rsg"
        Core = exports['rsg-core']:GetCoreObject()
    elseif GetResourceState("redem_roleplay") == "started" then
        selectedFramework = "redem"
        Core = exports["redem_roleplay"]:RedEM()
    else 
        selectedFramework = "unsupported"
        print('Framework: NO SUPPORTED FRAMEWORK IS SELECTED!')
        print('Please start one of the following frameworks: vorp_core, rpx-core, rsg-core, redem_roleplay before starting this resource or edit the bridge.lua files to support your framework')
    end

    DebugPrint("Selected Framework: " .. selectedFramework)

    return self
end

function Bridge:getCharacterJob()
    if selectedFramework == "vorp" then
        repeat 
            Wait(100) 
        until LocalPlayer.state.IsInSession
        return LocalPlayer.state.Character.Job
    elseif selectedFramework == "rpx" then
        DebugPrint("Bridge:getCharacterJob: rpx not supported yet")
        return nil
    elseif selectedFramework == "rsg" then
        local Player = Core.Functions.GetPlayerData()
        return Player.job
    elseif selectedFramework == "redem" then
        local PlayerData = Core.GetPlayerData()
        return PlayerData.job
    end
end

--[[ function Bridge:removeCurrency(amount)
    local player = LocalPlayer.state.Character
    local currency = player.Money
    local job = player.Job

    if currency >= amount then
        player.Money = currency - amount
        TriggerServerEvent("vorp:removeMoney", job, amount)
        return true
    else
        return false
    end
end ]]


--notify function
function Bridge:notify(title, subtitle, dict, icon, duration, color)
    if selectedFramework == "vorp" then
        Core.NotifyLeft(title, subtitle, dict, icon, duration, color or "COLOR_WHITE")
    elseif selectedFramework == "rpx" then
        exports['rpx-core']:ShowAdvancedRightNotification(subtitle, dict, icon, color, duration)
    elseif selectedFramework == "rsg" then
        local data = {description = subtitle, duration = duration, type = 'inform' }
        TriggerEvent('ox_lib:notify', data)
    elseif selectedFramework == "redem" then
        Core.Functions.NotifyLeft(title, subtitle, dict, icon, duration)
    end
end