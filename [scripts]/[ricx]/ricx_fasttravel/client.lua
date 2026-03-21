----------------------------REDEMRP_MENU----------------------------
MenuData = {}
TriggerEvent("redemrp_menu_base:getData",function(call)
    MenuData = call
end)
----------------------------END REDEMRP_MENU----------------------------
local TEXTS = Config.Texts
local TEXTURES = Config.Textures
local menuOpen = false 

local playerD = {}

local BlipEntities = {}

local PromptKeys = {}  
local PromptGroup = GetRandomIntInRange(0, 0xffffff)

local prompts = {}
local travel = false
--------------------------------------------------------------------------------------------------------------------------------------------
local function TableNum(tbl) 
    local c = 0
    for i,v in pairs(tbl) do 
        c = c + 1
    end
    return c
end
--------------------------------------------------------------------------------------------------------------------------------------------
local function PrepareAnim(dict)
	if not HasAnimDictLoaded(dict) then 
		RequestAnimDict(dict)
		while not HasAnimDictLoaded(dict) do 
			Citizen.Wait(1)
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------
function PrepareTexture(dict)
    if not HasStreamedTextureDictLoaded(dict) then
        RequestStreamedTextureDict(dict, true) 
        while not HasStreamedTextureDictLoaded(dict) do
            Citizen.Wait(5)
        end
    end
end
--------------------------------------------------------------------------------------------------------------------------------------------
local function LoadModel(model)
	if not HasModelLoaded(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(1)
        end
    end
end
--------------------------------------------------------------------------------------------------------------------------------------------
local function NilDelete(ent)
    DeleteEntity(ent)
    SetEntityAsNoLongerNeeded(ent)
end
--------------------------------------------------------------------------------------------------------------------------------------------
local function MakePrompt(tt, text, prompt, group, enabled, visibled)
    local a
    local str = text
    local enable = 1 
    local visible = 1
    if visibled ~= nil then 
        visible = 0
    end
    if enabled ~= nil then 
        enable = 0
    end
    a = PromptRegisterBegin()
    PromptSetControlAction(a, prompt)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(a, str)
    PromptSetEnabled(a, enable)
    PromptSetVisible(a, visible)
	PromptSetStandardMode(a, 1)
	PromptSetGroup(a, group)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,a,true)
	PromptRegisterEnd(a)
    prompts[tt] = a
    return a
end
--------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    LocalPlayer.state:set("ricx_fasttravel_d", dat, true)
    for i=1, #Config.FastTravels do
        local v = {blip = Config.FastTravels[i].blip, name = Config.FastTravels[i].name, coords = Config.FastTravels[i].coords}
        if v.blip.enable == true then
            local sprite = v.blip.sprite
            BlipEntities[i] = N_0x554d9d53f696d002(1664425300, v.coords.x, v.coords.y, v.coords.z)
            SetBlipSprite(BlipEntities[i], sprite, 1)
            Citizen.InvokeNative(0x9CB1A1623062F402, BlipEntities[i], v.name)
        end
    end  
    while true do 
        Citizen.Wait(800)
        playerD.ped = PlayerPedId()
        playerD.pcoords = GetEntityCoords(playerD.ped)
        playerD.isdead = IsEntityDead(playerD.ped)
        playerD.mount = GetMount(playerD.ped)
    end
end)
--------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        local t = Config.RefreshRate or 5 
        if playerD.pcoords ~= nil and (playerD.isdead ~= nil and playerD.isdead == false) and menuOpen == false then 
            if PromptKeys.key then 
                for i,v in pairs(PromptKeys) do 
                    PromptDelete(v)
                    prompts[i] = nil 
                end
                PromptKeys = {}
            end
            for i=1, #Config.FastTravels do 
                local v = {name = Config.FastTravels[i].name, coords = Config.FastTravels[i].coords}
                local dist = #(playerD.pcoords-v.coords)

                if Config.Marker.enable then 
                    if dist < 10.0 then
                        Citizen.InvokeNative(0x2A32FAA57B937173, 0x6903B113, v.coords.x, v.coords.y, v.coords.z, 0, 0, 0, 0, 0, 0, Config.Marker.size[1], Config.Marker.size[2], Config.Marker.size[3], Config.Marker.rgba[1], Config.Marker.rgba[2], Config.Marker.rgba[3], Config.Marker.rgba[4], 0, 0, 2, 0, 0, 0, 0)
                    end
                end

                if dist < 1.8 then 
                    while dist and dist < 1.8 do 
                        dist = #(playerD.pcoords-v.coords)
                        if not PromptKeys.key then 
                            PromptKeys.key = MakePrompt("key", TEXTS.Prompt1, Config.Prompts.Prompt1, PromptGroup)
                        end
                        local label  = CreateVarString(10, 'LITERAL_STRING', v.name)
                        PromptSetActiveGroupThisFrame(PromptGroup, label)
                        if Citizen.InvokeNative(0xC92AC953F0A982AE,PromptKeys.key) then
                            TriggerServerEvent("ricx_fasttravel:check_open", i)
                            dist = false
                            Wait(2000)
                        end
                        Wait(Config.RefreshRate)
                    end
                end
            end
        else
            t = 1500
        end
        Citizen.Wait(t)
    end
end)
----------------------------------------------------------------------------------------------------------------
RegisterNetEvent("ricx_fasttravel:open", function()
    if not MenuData or not MenuData?.CloseAll then print("WARNING: redemrp_menu_base install and ensure is not correct! Reinstall the resource without the client side export and ensure it before other scripts in cfg!") return else MenuData.CloseAll() end
    local dat = LocalPlayer.state.ricx_fasttravel_d
    if dat and dat.t == "o" and Config.FastTravels[dat.i] then 
        menuOpen = true
        local id = dat.i
        local elements = {}

        for i,v in pairs(Config.FastTravels[id].locations) do 
            local ms = TEXTS.Select 
            if v.items then 
                ms = false 
                for c,k in pairs(v.items) do 
                    if not ms then 
                        ms = k.label.." ("..k.amount.."x)"
                    else
                        ms = ms..", "..k.label.." ("..k.amount.."x)"
                    end
                end
            end
            elements[i] = {label = v.name.." $"..v.price, value = i, desc = ms}
        end 

        MenuData.Open('default', GetCurrentResourceName(), 'r_fasttravel_main',{
            title    = Config.FastTravels[id].name,
            subtext    = TEXTS.Options,
            align    = "top-right",
            elements = elements,
        },
        function(data, menu)
            if data.current.value then
                if data.current.value then
                    dat.option = data.current.value
                    LocalPlayer.state:set("ricx_fasttravel_d", dat, true)
                    Wait(200)
                    TriggerServerEvent("ricx_fasttravel:check_travel")
                    menuOpen = false
                    menu.close()
                else
                    menuOpen = false
                    menu.close()
                end
            end
        end,
        function(data, menu)
            LocalPlayer.state:set("ricx_fasttravel_d", false, true)
            menuOpen = false
            menu.close()
        end)
    end
end)
--------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("ricx_fasttravel:travel", function()
    local dat = LocalPlayer.state.ricx_fasttravel_d
    if dat.t == "o" and dat.s == "s" then 
        local location = Config.FastTravels[dat.i].locations[dat.option] 
        DoScreenFadeOut(1000)
        travel = true 
        Wait(2000)
        local c = location.coords
        if playerD.mount == 0 then 
            local veh = GetVehiclePedIsIn(playerD.ped, false)
            if not veh or veh == 0 then 
                SetEntityCoords(playerD.ped, c.x, c.y, c.z)
                SetEntityHeading(playerD.ped, c.w)
            else
                SetEntityCoords(veh, c.x, c.y, c.z)
                SetEntityHeading(veh, c.w)
            end
        else
            SetEntityCoords(playerD.mount, c.x, c.y, c.z)
            SetEntityHeading(playerD.mount, c.w)
        end
        DoScreenFadeIn(2000)
        travel = false 
        Wait(1000)
        CallTravelNotif(1)
        LocalPlayer.state:set("ricx_fasttravel_d", false, true)
    end
end)
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("ricx_fasttravel:", function()

end)
--------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
	  return
	end
    if travel then 
        DoScreenFadeIn(0)
    end
    if menuOpen then 
        MenuData.CloseAll()
    end
    for i,v in pairs(prompts) do 
        PromptDelete(v)
    end
    for i,v in pairs(BlipEntities) do 
        RemoveBlip(v)
    end
end)
--------------------------------------------------------------------------------------------------------------------------------------------
