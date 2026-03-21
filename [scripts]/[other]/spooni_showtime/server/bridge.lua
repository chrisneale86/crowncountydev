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

    print('Framework: ^2' .. string.upper(selectedFramework) .. '^0 IS SELECTED!')

    return self
end

function Bridge:getCharacterJob(source)
    if selectedFramework == "vorp" then
        local user = Core.getUser(source)
        if not user then
            error("Bridge:getCharacterJob: user is nil")
            return
        end

        local character = user.getUsedCharacter
        if not character then
            error("Bridge:getCharacterJob: character is nil")
            return
        end

        return character.job
    elseif selectedFramework == "rpx" then
        local char = Core.GetPlayer(source)
        if not char then
            error("Bridge:getCharacterJob: char is nil")
            return
        end
        return char.job.name
    elseif selectedFramework == "rsg" then
        local Player = Core.Functions.GetPlayer(source)
        if not Player then
            error("Bridge:getCharacterJob: Player is nil")
            return
        end
        return Player.PlayerData.job.name
    elseif selectedFramework == "redem" then
        local PlayerData = Core.GetPlayer(source)
        if not PlayerData then
            error("Bridge:getCharacterJob: PlayerData is nil")
            return
        end
        return PlayerData.job
    end
end

function Bridge:Notify(source, title, subtitle, dict, icon, duration, color)
    if selectedFramework == "vorp" then
        Core.NotifyLeft(source, title, subtitle, dict, icon, duration, color or "COLOR_WHITE")
    elseif selectedFramework == "rpx" then
        exports['rpx-core']:ShowAdvancedRightNotification(source, subtitle, dict, icon, color, duration)
    elseif selectedFramework == "rsg" then
        local data = {description = subtitle, duration = duration, type = 'inform' }
        TriggerClientEvent('ox_lib:notify', source, data)
    elseif selectedFramework == "redem" then
        Core.Functions.NotifyLeft(source, title, subtitle, dict, icon, duration)
    end
end

function Bridge:removeCurrency( source, type, amount)
    if not source then
        error("Bridge:removeCurrency: source is nil")
        return
    end

    if not amount then
        error("Bridge:removeCurrency: amount is nil")
        return
    end

    if not type then
        error("Bridge:removeCurrency: type is nil")
        return
    end

    if selectedFramework == "vorp" then
        local player = Core.getUser(source)
        if not player then
            error("Bridge:removeCurrency: player is nil")
            return
        end

        local usedCharacter = player.getUsedCharacter
        if not usedCharacter then
            error("Bridge:removeCurrency: usedCharacter is nil")
            return
        end

        usedCharacter.removeCurrency(type, amount)

        return true
    elseif selectedFramework == "rpx" then
        local char = Core.GetPlayer(source)
        if not char then
            error("Bridge:removeCurrency: char is nil")
            return
        end
        char.RemoveMoney("cash",amount)
        return true
    elseif selectedFramework == "rsg" then
        local Player = Core.Functions.GetPlayer(source)
        if not Player then
            error("Bridge:removeCurrency: Player is nil")
            return
        end
        Player.Functions.RemoveMoney("cash", amount)
        return true
    elseif selectedFramework == "redem" then
        local PlayerData = Core.GetPlayer(source)
        if not PlayerData then
            error("Bridge:removeCurrency: PlayerData is nil")
            return
        end
        PlayerData.RemoveMoney(type, amount)
        return true
    end
end


--get currency amount 
function Bridge:getCharacterMoney(source)
    if selectedFramework == "vorp" then
        local user = Core.getUser(source)
        if not user then
            error("Bridge:getCharacterJob: user is nil")
            return
        end

        local character = user.getUsedCharacter
        if not character then
            error("Bridge:getCharacterJob: character is nil")
            return
        end

        return character.money
    elseif selectedFramework == "rpx" then
        local char = Core.GetPlayer(source)
        if not char then
            error("Bridge:getCharacterJob: char is nil")
            return
        end
        return char.money.cash
    elseif selectedFramework == "rsg" then
        local Player = Core.Functions.GetPlayer(source)
        if not Player then
            error("Bridge:getCharacterJob: Player is nil")
            return
        end
        return Player.PlayerData.money["cash"]
    end
end
