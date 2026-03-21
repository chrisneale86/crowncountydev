if Config.Framework == 'VORP' then
    local VORPcore = exports['vorp_core']:GetCore()
    
    -- Register Usable Items
    Citizen.CreateThread(function()

        -- Goldpan item to start panning
        exports['vorp_inventory']:registerUsableItem(Config.Goldpan, function(data)
            local src = data.source

            -- Force close inventory before starting action
            TriggerClientEvent("vorp_inventory:CloseInv", src)

            TriggerClientEvent('mc-goldpanning:client:StartPanningVORP', src)
        end)

        -- Rock item to start washing
        exports['vorp_inventory']:registerUsableItem(Config.CommonItems, function(data)
            local src = data.source

            -- Force close inventory before starting action
            TriggerClientEvent("vorp_inventory:CloseInv", src)

            TriggerClientEvent('mc-goldpanning:client:StartWashingVORP', src)
        end)

    end)

    -- Give Gold Nuggets from Panning
    RegisterNetEvent('mc-goldpanning:server:giveFlakesVorp', function(amount)
        local src = source
        local item = Config.GoldpanItem
        local itemLabel = "Gold Nuggets"

        local canCarryItem = exports.vorp_inventory:canCarryItem(src, item, amount)
        if not canCarryItem then
            TriggerClientEvent('vorp:TipRight', src, "You have too many " .. itemLabel .. " in your inventory!", 3000)
            return
        end

        exports['vorp_inventory']:addItem(src, item, amount)
        TriggerClientEvent('vorp:TipRight', src, "You panned " .. amount .. " Gold Nuggets!", 3000)
    end)

    -- Wash Rocks for Random Items
    RegisterNetEvent('mc-goldpanning:server:washStonesVorp', function()
        local src = source
        local item = Config.WashingItems[math.random(1, #Config.WashingItems)]
        local itemCount = 1
        local itemLabel = item:gsub("_", " "):gsub("^%l", string.upper)

        local canCarryItem = exports.vorp_inventory:canCarryItem(src, item, itemCount)
        if not canCarryItem then
            TriggerClientEvent('vorp:TipRight', src, "You have too many " .. itemLabel .. " in your inventory!", 3000)
            return
        end

        -- Remove rock
        exports['vorp_inventory']:subItem(src, Config.CommonItems, 1)

        -- Give washed item
        exports['vorp_inventory']:addItem(src, item, 1)

        TriggerClientEvent('vorp:TipRight', src, "You washed and found 1 " .. itemLabel .. "!", 3000)
    end)
end
