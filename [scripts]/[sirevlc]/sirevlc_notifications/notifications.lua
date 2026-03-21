

-- OPEN SOURCE VERSION 1.0

 RegisterNetEvent('sirevlc_notifications:NotifyLeft')
AddEventHandler('sirevlc_notifications:NotifyLeft', function(firsttext, secondtext, dict, icon, duration)
    local _dict = dict
    local _icon = icon
    if not LoadTexture(_dict) then
        _dict = "generic_textures"
        LoadTexture(_dict)
        _icon = "tick"
    end
    exports.sirevlc_notifications:ShowAdvancedNotification(tostring(firsttext), tostring(secondtext), tostring(_dict), tostring(_icon), tonumber(duration))
end)

RegisterNetEvent('sirevlc_notifications:Tip')
AddEventHandler('sirevlc_notifications:Tip', function(text, duration)
    exports.sirevlc_notifications:ShowTooltip(tostring(text), tonumber(duration))
end)

RegisterNetEvent('sirevlc_notifications:NotifyTop')
AddEventHandler('sirevlc_notifications:NotifyTop', function(text, location, duration)
    exports.sirevlc_notifications:ShowLocationNotification(tostring(text), tostring(location), tonumber(duration))
end)

RegisterNetEvent('sirevlc_notifications:ShowSimpleRightText')
AddEventHandler('sirevlc_notifications:ShowSimpleRightText', function(text, duration)
    exports.sirevlc_notifications:ShowSimpleRightText(tostring(text), tonumber(duration))
end)

 RegisterNetEvent('sirevlc_notifications:ShowMissionName')
AddEventHandler('sirevlc_notifications:ShowMissionName', function(text, duration)
    exports.sirevlc_notifications:ShowMissionName(tostring(text), tonumber(duration))
end)
 
RegisterNetEvent('sirevlc_notifications:ShowObjective')
AddEventHandler('sirevlc_notifications:ShowObjective', function(text, duration)
    exports.sirevlc_notifications:ShowObjective(tostring(text), tonumber(duration))
end)
 
RegisterNetEvent('sirevlc_notifications:ShowTopNotification')
AddEventHandler('sirevlc_notifications:ShowTopNotification', function(tittle, subtitle, duration)
    exports.sirevlc_notifications:ShowTopNotification(tostring(tittle), tostring(subtitle), tonumber(duration))
end)

RegisterNetEvent('sirevlc_notifications:ShowAdvancedRightNotification')
AddEventHandler('sirevlc_notifications:ShowAdvancedRightNotification', function(text, dict, icon, text_color, duration)
    local _dict = dict
    local _icon = icon
    if not LoadTexture(_dict) then
        _dict = "generic_textures"
        LoadTexture(_dict)
        _icon = "tick"
    end
    exports.sirevlc_notifications:ShowAdvancedRightNotification(tostring(text), tostring(_dict), tostring(_icon), tostring(text_color), tonumber(duration))
end)

RegisterNetEvent('sirevlc_notifications:ShowBasicTopNotification')
AddEventHandler('sirevlc_notifications:ShowBasicTopNotification', function(text, duration)
    exports.sirevlc_notifications:ShowBasicTopNotification(tostring(text), tonumber(duration))
end)

RegisterNetEvent('sirevlc_notifications:ShowSimpleCenterText')
AddEventHandler('sirevlc_notifications:ShowSimpleCenterText', function(text, duration)
    exports.sirevlc_notifications:ShowSimpleCenterText(tostring(text), tonumber(duration))
end)

function LoadTexture(dict)
    if Citizen.InvokeNative(0x7332461FC59EB7EC, dict) then
        RequestStreamedTextureDict(dict, true)
        while not HasStreamedTextureDictLoaded(dict) do
            Wait(1)
        end
        return true
    else
        return false
    end
end