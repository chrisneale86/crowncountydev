local Menu = exports.vorp_menu:GetMenuData()

local isNearStation = false
local nearStationKey = nil

local function DrawTxt(str, x, y, scale)
    SetTextScale(scale, scale)
    SetTextColor(255, 255, 255, 255)
    SetTextCentre(true)
    DisplayText(CreateVarString(10, "LITERAL_STRING", str), x, y)
end

local function OpenTicketMenu(stationKey)
    local station = Config.Stations[stationKey]
    local routes = Config.Routes[stationKey]
    if not routes then
        TriggerEvent("vorp:TipBottom", "No routes configured for this station.", 4000)
        return
    end

    local elements = {}
    for destKey, price in pairs(routes) do
        local dest = Config.Stations[destKey]
        if dest and Config.TicketItems[destKey] then
            elements[#elements + 1] = {
                label = string.format("%s - $%d", dest.label, price),
                value = destKey,
                desc = string.format("Buy ticket from %s to %s", station.label, dest.label)
            }
        end
    end

    if #elements == 0 then
        TriggerEvent("vorp:TipBottom", "No valid destinations configured here.", 4000)
        return
    end

    Menu.CloseAll()
    Menu.Open("default", GetCurrentResourceName(), "ticket_menu", {
        title = ("Train Tickets - %s"):format(station.label),
        subtext = "Select destination",
        align = "top-left",
        elements = elements
    }, function(data, menu)
        local destKey = data.current.value
        TriggerServerEvent("vtt:buyTicket", stationKey, destKey)
    end, function(data, menu)
        menu.close()
    end)
end

CreateThread(function()
    while true do
        Wait(500)
        isNearStation = false
        nearStationKey = nil

        local ped = PlayerPedId()
        local pcoords = GetEntityCoords(ped)

        for key, st in pairs(Config.Stations) do
            local dist = #(pcoords - st.coords)
            if dist <= Config.StationInteractDistance then
                isNearStation = true
                nearStationKey = key
                break
            end
        end
    end
end)

CreateThread(function()
    while true do
        Wait(0)
        if isNearStation and nearStationKey then
            DrawTxt("Press [E] to buy a train ticket", 0.5, 0.9, 0.35)
            if IsControlJustPressed(0, 0xCEFD9220) then -- E
                OpenTicketMenu(nearStationKey)
                Wait(300)
            end
        else
            Wait(250)
        end
    end
end)

-- NUI: show ticket to conductor
RegisterNetEvent("vtt:showTicketOnScreen", function(payload)
    SendNUIMessage({ action = "show", data = payload, duration = Config.TicketDisplayMs })
    SetNuiFocus(false, false)
end)
