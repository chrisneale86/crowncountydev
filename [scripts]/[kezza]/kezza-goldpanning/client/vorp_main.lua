if Config.Framework == 'VORP' then
    local VORPcore = exports['vorp_core']:GetCore()
    local inHotZone = false
    local goldpan = nil
    local isWorking = false

    -- Helper: Close VORP inventory (covers different VORP inventory builds)
    local function CloseVorpInventory()
        -- Most common VORP Inventory close events (different forks use different names)
        TriggerEvent("vorp_inventory:CloseInv")
        TriggerEvent("vorp_inventory:closeInventory")
        TriggerEvent("vorp_inventory:CloseInventory")

        -- Prevent stuck NUI focus
        SetNuiFocus(false, false)

        -- Some forks also listen to these (harmless if missing)
        TriggerEvent("vorp_inventory:Close")
        TriggerEvent("vorp_inventory:close")
    end

    -- Create Hotspot Zones and Blips for Gold Panning
    Citizen.CreateThread(function()
        for _, zones in pairs(Config.Hotspots) do
            -- Create Blip if showBlip is true
            if zones.showBlip then
                local hotspotBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, zones.blip.x, zones.blip.y, zones.blip.z)
                SetBlipSprite(hotspotBlip, -1508091603, true)
                SetBlipScale(hotspotBlip, 0.2)
                Citizen.InvokeNative(0x9CB1A1623062F402, hotspotBlip, zones.label)
            end

            -- Create PolyZone
            local hotspot = PolyZone:Create(zones.coords, {
                name = zones.id,
                minZ = zones.minZ,
                maxZ = zones.maxZ,
                debugPoly = false,
            })

            hotspot:onPlayerInOut(function(onInsideOut)
                if onInsideOut then
                    TriggerEvent('vorp:TipRight', "You can start washing/panning here.", 3000)
                    inHotZone = true
                else
                    inHotZone = false
                end
            end)
        end
    end)

    -- Gold Panning Function
    RegisterNetEvent('mc-goldpanning:client:StartPanningVORP', function()
        -- Close inventory when goldpan is used
        CloseVorpInventory()

        if isWorking then
            TriggerEvent('vorp:TipRight', "You're already doing something!", 3000)
            return
        end

        isWorking = true
        local progressbar = exports['vorp_progressbar']:initiate()
        local x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
        local current_district = Citizen.InvokeNative(0x43AD8FC02B429D33, x, y, z, 3)
        local currentWater = Citizen.InvokeNative(0x5BA7A68A346A5A91, x, y, z)

        if not (current_district or currentWater) then
            TriggerEvent('vorp:TipRight', "You're not at the correct river!", 3000)
            isWorking = false
            return
        end

        if not IsEntityInWater(PlayerPedId()) then
            TriggerEvent('vorp:TipRight', "You must be in the water!", 3000)
            isWorking = false
            return
        end

        RequestAnimDict('script_rc@cldn@ig@rsc2_ig1_questionshopkeeper')
        RequestAnimDict('script_re@gold_panner@gold_success')

        while not HasAnimDictLoaded('script_rc@cldn@ig@rsc2_ig1_questionshopkeeper') do
            Wait(10)
        end

        while not HasAnimDictLoaded('script_re@gold_panner@gold_success') do
            Wait(10)
        end

        TaskPlayAnim(PlayerPedId(), 'script_rc@cldn@ig@rsc2_ig1_questionshopkeeper', "inspectfloor_player", 0.5, 8.0, -1, 1, 0, false, false, false)

        progressbar.start('Panning for Gold', 5000, function()
            ClearPedTasks(PlayerPedId())
            isWorking = false
            Wait(500)

            if not DoesEntityExist(goldpan) then
                local coords = GetEntityCoords(PlayerPedId())
                local model = GetHashKey("P_CS_MININGPAN01X")
                while not HasModelLoaded(model) do
                    RequestModel(model)
                    Wait(1)
                end
                goldpan = CreateObject(model, coords.x + 0.30, coords.y + 0.10, coords.z, true, false, false)
                SetEntityVisible(goldpan, true)
                SetEntityAlpha(goldpan, 255, false)
                Citizen.InvokeNative(0x283978A15512B2FE, goldpan, true)
                local boneIndex = GetEntityBoneIndexByName(PlayerPedId(), "SKEL_R_HAND")
                AttachEntityToEntity(goldpan, PlayerPedId(), boneIndex, 0.2, 0.0, -0.20, -100.0, -50.0, 0.0, false, false, false, true, 2, true)
                SetModelAsNoLongerNeeded(model)
            end

            TaskPlayAnim(PlayerPedId(), 'script_re@gold_panner@gold_success', "SEARCH02", 1.0, 8.0, -1, 1, 0, false, false, false)
            Wait(5000)
            ClearPedTasks(PlayerPedId())
            DeleteObject(goldpan)
            goldpan = nil

            if inHotZone then
                if math.random(1, 100) <= Config.HotspotChance then
                    local amount = math.random(2, 5)
                    TriggerServerEvent('mc-goldpanning:server:giveFlakesVorp', amount)
                else
                    TriggerEvent('vorp:TipRight', "You didn't find anything!", 3000)
                end
            else
                if math.random(1, 100) <= Config.GoldFlakeChance then
                    local amount = math.random(1, 3)
                    TriggerServerEvent('mc-goldpanning:server:giveFlakesVorp', amount)
                else
                    TriggerEvent('vorp:TipRight', "You didn't find anything!", 3000)
                end
            end
        end, 'linear')
    end)

    -- Rock Washing Function
    RegisterNetEvent('mc-goldpanning:client:StartWashingVORP', function()
        -- Close inventory when rock is used
        CloseVorpInventory()

        if isWorking then
            TriggerEvent('vorp:TipRight', "You're already doing something!", 3000)
            return
        end

        isWorking = true
        local progressbar = exports['vorp_progressbar']:initiate()
        local x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
        local current_district = Citizen.InvokeNative(0x43AD8FC02B429D33, x, y, z, 3)

        if not current_district then
            TriggerEvent('vorp:TipRight', "You're not at the correct river!", 3000)
            isWorking = false
            return
        end

        if not IsEntityInWater(PlayerPedId()) then
            TriggerEvent('vorp:TipRight', "You must be in the water!", 3000)
            isWorking = false
            return
        end

        RequestAnimDict('script_rc@cldn@ig@rsc2_ig1_questionshopkeeper')
        while not HasAnimDictLoaded('script_rc@cldn@ig@rsc2_ig1_questionshopkeeper') do
            Wait(10)
        end

        TaskPlayAnim(PlayerPedId(), 'script_rc@cldn@ig@rsc2_ig1_questionshopkeeper', "inspectfloor_player", 0.5, 8.0, -1, 1, 0, false, false, false)
        progressbar.start('Washing Rocks', 5000, function()
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('mc-goldpanning:server:washStonesVorp')
            isWorking = false
        end, 'linear')
    end)
end
