local VorpCore = exports.vorp_core:GetCore()
local jobpeds = {}
local blips = {}

Citizen.CreateThread(function()
    Citizen.Wait(1000)
    if not IsInitialized then
        IsInitialized = true

        for k, v in pairs(Config.npcdoctor) do
            if v.showblip then
                local blip = BlipAddForCoords(1664425300, v.Pos.x, v.Pos.y, v.Pos.z)
                SetBlipSprite(blip, v.blipsprite, true)
                SetBlipScale(blip, 0.2)
                SetBlipName(blip, v.Name)
                table.insert(blips, blip)
            end

            local hashModel = GetHashKey(v.npcmodel)
            if IsModelValid(hashModel) then
                RequestModel(hashModel,true)
                while not HasModelLoaded(hashModel) do
                    Wait(100)
                end
            end

            local npc = CreatePed(hashModel, v.Pos.x, v.Pos.y, v.Pos.z - 1.0, v.Pos.h, false, true, true, true)
            SetRandomOutfitVariation(npc, true)
            SetEntityNoCollisionEntity(PlayerPedId(), npc, false)
            SetEntityCanBeDamaged(npc, false)
            SetEntityInvincible(npc, true)
            FreezeEntityPosition(npc, true)
            SetBlockingOfNonTemporaryEvents(npc, true)
            table.insert(jobpeds, npc)
        end
    end

    while true do
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)
        local sleep = true

        for k, v in pairs(Config.npcdoctor) do
            if GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.distance then
                sleep = false
                local displayText = string.format(Config.Language.type, v.price)
                DrawText3D(v.Pos.x, v.Pos.y, v.Pos.z, displayText)
            end
        end

        if sleep then
            Citizen.Wait(500)
        else
            Citizen.Wait(0)
        end
    end
end)

VorpCore.Callback.Register("syn_grandma:checkReviveClient", function(callback)
    local player = PlayerPedId()
    local coords = GetEntityCoords(player)
    local isDead = IsEntityDead(player)
    local nearDoctor = false
    local locationName = nil

    for locName, v in pairs(Config.npcdoctor) do
        if GetDistanceBetweenCoords(coords, vector3(v.Pos.x, v.Pos.y, v.Pos.z), true) < v.distance then
            nearDoctor = true
            locationName = locName  
        end
    end

    callback({ isDead = isDead, nearDoctor = nearDoctor, location = locationName })
end)




function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
    local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
    if onScreen then
        SetTextScale(0.30, 0.30)
        SetTextFontForCurrentCommand(1)
        SetTextColor(255, 255, 255, 215)
        SetTextCentre(1)
        DisplayText(str, _x, _y)
        local factor = (string.len(text)) / 225
        DrawSprite("feeds", "hud_menu_4a", _x, _y + 0.0125, 0.015 + factor, 0.03, 0.1, 35, 35, 35, 190, 0)
    end
end

AddEventHandler("onResourceStop", function(resourceName)
    if resourceName == GetCurrentResourceName() then
        for k, v in pairs(blips) do
            RemoveBlip(v)
        end
        for k, v in pairs(jobpeds) do
            DeletePed(v)
        end
    end
end)
