local function CheckVersion()
    local resource = GetCurrentResourceName()
    local version = GetResourceMetadata(resource, 'version')
    local repo = "rs_fasttravel_version"
    if version then 
        PerformHttpRequest('https://api.github.com/repos/rsc0/'..repo..'/releases/latest', function(err, text, headers)
            if text then 
                local info = json.decode(text)
                Wait(80)
                if version == info.tag_name then 
                    print("^3[INFO] The ["..resource.."] version is up to date ("..version..")^0")
                else
                    print("^8[INFO] The ["..resource.."] version is NOT up to date! Update files (fxmanifest.lua as well) from Keymaster! (Script Version: "..info.tag_name.." | Server Version: "..version..")^0")
                end
            end
        end)
    else
        print("^8[INFO] No version found in fxmanifest.lua! Update the files from Keymaster for "..resource.."!^0")
    end
end
--------------------------------------------------------------------------------------------------------------------------------------------
local ConfigS = Config
local TEXTS = Config.Texts
local TEXTURES = Config.Textures
local minute = 60*1000
local travelCD = {}
--------------------------------------------------------------------------------------------------------------------------------------------
local function TableNum(tbl) 
    local c = 0
    for i,v in pairs(tbl) do 
        c = c + 1
    end
    return c
end
--------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    Citizen.Wait(1000)
    CheckVersion()
end)
--------------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("ricx_fasttravel:check_open", function(id)
    local _source = source
    local player = GetRDMPlayer(_source)
    if player then 
        if ConfigS.FastTravels[id] then 
            local travel = ConfigS.FastTravels[id]
            local go = true 
            if travel.job then 
                go = false 
                for i,v in pairs(travel.job) do 
                    if player.job == v then 
                        go = true 
                        break 
                    end
                end
            end
            if go then 
                if travel.identifiers then 
                    go = false 
                    for i,v in pairs(travel.identifiers) do 
                        if player.identifiers == v.identifiers and player.charid == v.charid then 
                            go = true 
                            break 
                        end
                    end
                end
                if go then 
                    Player(_source).state.ricx_fasttravel_d = {t = "o", i = id}
                    Wait(200)
                    TriggerClientEvent("ricx_fasttravel:open", _source)
                else
                    TriggerClientEvent("ricx_fasttravel:call_notif", _source, 2)
                end
            else
                TriggerClientEvent("ricx_fasttravel:call_notif", _source, 3)
            end
        end
    end
end)
--------------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("ricx_fasttravel:check_travel", function()
    local _source = source
    local player = GetRDMPlayer(_source)
    if player then 
        local dat = Player(_source).state.ricx_fasttravel_d
        if dat and dat.i then 
            local id = dat.i
            if ConfigS.FastTravels?[id]?.locations[dat.option] then 
                local travel = ConfigS.FastTravels[id]
                local go = true 
                if travel.job then 
                    go = false 
                    for i,v in pairs(travel.job) do 
                        if player.job == v then 
                            go = true 
                            break 
                        end
                    end
                end
                if go then 
                    if travel.identifiers then 
                        go = false 
                        for i,v in pairs(travel.identifiers) do 
                            if player.identifiers == v.identifiers and player.charid == v.charid then 
                                go = true 
                                break 
                            end
                        end
                    end
                    if go then 
                        local location = travel.locations[dat.option]
                        if player.money >= location.price then 
                            local ms
                            if location.items then 
                                go = false 
                                local all = 0
                                for i,v in pairs(location.items) do 
                                    local itemD = GetRDMItem(_source, v.id)
                                    if itemD then 
                                        local count = GetRDMItemCount(itemD)
                                        if count and count >= v.amount then 
                                            all += 1
                                        else
                                            if not ms then 
                                                ms = v.label.." ("..v.amount.."x)"
                                            else
                                                ms = ms..", "..v.label.." ("..v.amount.."x)"
                                            end
                                        end
                                    end
                                end
                                if all == #location.items then 
                                    go = true
                                end
                            end
                            if go then 
                                if not travelCD[id] then 
                                    travelCD[id] = true 
                                    RemoveRDMMoney(_source, location.price)
                                    if location.items then 
                                        for i,v in pairs(location.items) do 
                                            local itemD = GetRDMItem(_source, v.id)
                                            if itemD then 
                                                RemoveRDMItem(v.amount, itemD)
                                            end
                                        end
                                    end
                                    dat.s = "s"
                                    Player(_source).state.ricx_fasttravel_d = dat 
                                    Wait(200)
                                    TriggerClientEvent("ricx_fasttravel:travel", _source)
                                    SetTimeout(minute * ConfigS.TravelCD, function()
                                        travelCD[id] = false 
                                    end)
                                else
                                    TriggerClientEvent("ricx_fasttravel:call_notif", _source, 6)
                                end
                            else
                                TriggerClientEvent("ricx_fasttravel:call_notif", _source, 5, {text = (TEXTS.NoItems):format(ms)})
                            end
                        else
                            TriggerClientEvent("ricx_fasttravel:call_notif", _source, 4)
                        end
                    else
                        TriggerClientEvent("ricx_fasttravel:call_notif", _source, 2)
                    end
                else
                    TriggerClientEvent("ricx_fasttravel:call_notif", _source, 3)
                end
            end
        end
    end
end)
--------------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("ricx_fasttravel:", function()
    local _source = source
end)
--------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('playerDropped', function()
    local _source = source
end)