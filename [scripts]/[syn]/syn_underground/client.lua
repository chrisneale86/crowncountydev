local playerjob 
local hideouts = {}
local prompts = GetRandomIntInRange(0, 0xffffff)
local prompts2 = GetRandomIntInRange(0, 0xffffff)
local prompts3 = GetRandomIntInRange(0, 0xffffff)
local prompts4 = GetRandomIntInRange(0, 0xffffff)
local prompts5 = GetRandomIntInRange(0, 0xffffff)
local prompts6 = GetRandomIntInRange(0, 0xffffff)
local prompts7 = GetRandomIntInRange(0, 0xffffff)
local prompts9 = GetRandomIntInRange(0, 0xffffff)
local prompts10 = GetRandomIntInRange(0, 0xffffff)
local prompts11 = GetRandomIntInRange(0, 0xffffff)
local prompts12 = GetRandomIntInRange(0, 0xffffff) 
local prompts13 = GetRandomIntInRange(0, 0xffffff)
local prompts14 = GetRandomIntInRange(0, 0xffffff)
local prompts15 = GetRandomIntInRange(0, 0xffffff)
local prompts16 = GetRandomIntInRange(0, 0xffffff)
local prompts17 = GetRandomIntInRange(0, 0xffffff)
local prompts18 = GetRandomIntInRange(0, 0xffffff)
local prompts19 = GetRandomIntInRange(0, 0xffffff)
local prompts20 = GetRandomIntInRange(0, 0xffffff)
local blowupprompt
local robcartprompt
local isalerted2 = false 
local stealcash
local lockpickx
local relocateid 
local isrelocating = false  
local stopraidx
local inmenu2 = false
local checking = false 
local isadmin = false 
local drinkmoonshine
local knock2
local raid
local ismenuactive
local stillmenu
local eatalmonds
local washface
local pourmoonshinebutton
local ininventory = false 
local openbookiebutton
local ininventory2 = false 
local inventorybutton
local allow
local buyprompt2
local deleteprompt
local deny
local managementmenu
local exitshack
local knock
local openmenuprompt
local buyprompt
local getout
local getout2
local zonex
local lockdoor = false
local doorinfo = {}
local permalock = {}
local charidentifier
local identifier
local indoors = false 
local thehideoutid
local price = 0.0
local zone = "lemoyne"
local blips = {}
local blipsg = {}
local missionblip 
local invitepending = false 
local shackinviteid
local inviteplayerserverid
local invitename
local shackname = ""
local inmenu = false 
local currenttheme = ""
local currentupgrades = {}
local StartingCoords
local upgradetitle = ""
local addspace
local invuptype
local startedpiano = false 
local countaward = 0
local maxscore = Config.pianodiff
local cooldownpianoman = false 
local pianocooldowntimer = Config.pianocooldown *60000 
local pot = 0
local oddsa = 0
local oddsb = 0 
local fighter = ""
local betx = 0
local inthefight = false 
local createdfighters = {}
local pedA
local pedB
local fight = false
local drinkingnow = false 
local pouredmooonshine = false 
local drunkamount = 0
local drunkscreen = 0
local drunk = false
local hastill = false 
local stilllevel = 0 
local onlineplayers = nil
local israiding = false 
local hasitem = 0
local raidtimer = 0
local raidid = 0
local israidingplayer = false 
local mashtimer = 0
local stilltimer = 0
local TbacGroup
local OldTbacGroup
local TbacGroupName = Config.language.sellcontra
local Wprompt
local IsTargetting
local OldEnt = {}
local existshacktostart = false 
local missiontype = 0
local inmission = false 
local gps = {}
local spawned = false 
local missioninfo = {}
local npcs = {}
local MainCoach, MainPed, EscortPed, EscortCoach, EscortPed2, EscortCoach2
local CartIsDemolished = false 
local CartIsExploded = false 
local isalerted = false 
local allllow = true 

Citizen.CreateThread(function() 
    while true do
        Wait(10)
        if indoors then 
            if mashtimer > 0 then 
                Wait(1000)
                mashtimer = mashtimer - 1
            end
        end
    end
end)
Citizen.CreateThread(function() 
    while true do
        Wait(10)
        if indoors then 
            if stilltimer > 0 then 
                Wait(1000)
                stilltimer = stilltimer - 1
            end
        end
    end
end)
TriggerEvent("menuapi:getData",function(call)
    MenuData = call
end)

RegisterNetEvent('syn_underground:approveinvite')
AddEventHandler('syn_underground:approveinvite', function(x,y,z)
	shackinviteid = x 
	inviteplayerserverid = y
    invitename = z
    invitepending = true 
end)

RegisterCommand(Config.getoutcommand, function(source, args)
    if not indoors then 
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)    
        if GetDistanceBetweenCoords(coords,1785.01,-821.53,191.01 , true) < 100 then
            TriggerServerEvent('instance:setNamed', 0)
            indoors = false
            TriggerEvent("syn_scene:stopscene",true)
            mashtimer = 0
            stilltimer = 0
            DoScreenFadeOut(500)
            Wait(500)
            SetEntityCoords(player, Config.getoutcoords)
            Wait(1000)
            DoScreenFadeIn(1000)
            Wait(1000)
        end
    end
end)




function doanimation(dict, anim, loop)
    local playerPed = PlayerPedId()
    FreezeEntityPosition(playerPed,true)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(100)
    end
    TaskPlayAnim(playerPed, dict, anim, 8.0, 8.0, 120000, 0, 0, true, 0, false, 0, false)  
    Wait(7000)
    ClearPedSecondaryTask(playerPed)
    RemoveAnimDict(dict) 
    FreezeEntityPosition(playerPed,false)
end


RegisterCommand("createhideout", function(source, args)
    TriggerServerEvent('syn_underground:getjob')
    Wait(500)
    if contains(Config.jobs,playerjob) or isadmin then 
        createhideout()
    end
end)

RegisterNetEvent('syn_underground:recjob')
AddEventHandler('syn_underground:recjob', function(x,y,z,a)
	playerjob = x 
    identifier = y 
    charidentifier = z
    isadmin = a
end)

RegisterNetEvent('syn_underground:recinfo')
AddEventHandler('syn_underground:recinfo', function(x)
	hideouts = x 
    checking = false 
    if thehideoutid ~= nil then
        checkstill()
        mashtimer = hideouts[thehideoutid].timer
        stilltimer = hideouts[thehideoutid].timer2
    end
end)
RegisterNetEvent('syn_underground:recinfoxd')
AddEventHandler('syn_underground:recinfoxd', function(stuff,id)
    local processed = false 
    for k,v in pairs(hideouts) do 
        if v.id == id then 
            hideouts[k] = stuff
            processed = true 
        end
    end
    if not processed then 
        hideouts[#hideouts+1] = stuff
    end
end)

RegisterNetEvent('syn_underground:recitem')
AddEventHandler('syn_underground:recitem', function(x)
	hasitem = x 
end)

RegisterNetEvent('syn_underground:reconline')
AddEventHandler('syn_underground:reconline', function(x)
	onlineplayers = x 
end)

RegisterNetEvent('syn_underground:requestinfo')
AddEventHandler('syn_underground:requestinfo', function(id)
	TriggerServerEvent('syn_underground:getinfo',1,id)
end)

RegisterNetEvent('syn_underground:requestinfolocal')
AddEventHandler('syn_underground:requestinfolocal', function()
	TriggerServerEvent('syn_underground:getinfolocal',thehideoutid)
end)

local lastshinecoords 

RegisterNetEvent('syn_underground:reclastshinecoords')
AddEventHandler('syn_underground:reclastshinecoords', function(lastcoords)
    lastshinecoords = lastcoords
end)


RegisterNetEvent('syn_underground:checkinventory')
AddEventHandler('syn_underground:checkinventory', function(x)
    ininventory = x 
end)

RegisterNetEvent("syn:closeinv")
AddEventHandler("syn:closeinv", function()
	if ininventory2 then 
        ininventory2 = false 
        TriggerServerEvent("syn_underground:closeinventory",thehideoutid)
    end
end)

AddEventHandler("onResourceStop",function(resourceName)
    if resourceName == GetCurrentResourceName() then
        endmission()
        PromptDelete(Wprompt) 
		for k,v in pairs(blips) do 
            RemoveBlip(v)
        end
        for k,v in pairs(blipsg) do 
            RemoveBlip(v)
        end
        for k,v in pairs(createdfighters) do 
            DeletePed(v)
        end
    end
end)

RegisterNetEvent("syn_underground:refreshblips")
AddEventHandler("syn_underground:refreshblips", function()
	for k,v in pairs(blips) do 
        RemoveBlip(v)
        table.remove( blips,k)
    end
    Wait(1000)
    for k, v in pairs(hideouts) do
        if charidentifier == v.charidentifier or contains(Config.jobs,playerjob) or containscoowner(v.coowners, charidentifier) then
            local blip = N_0x554d9d53f696d002(1664425300, v.coords.x,v.coords.y,v.coords.z)
            SetBlipSprite(blip, -392465725, 1)
            SetBlipScale(blip, 0.2)
            Citizen.InvokeNative(0x9CB1A1623062F402, blip, v.name)
            table.insert( blips, blip )
        end
        if Config.adminsseehideouts then 
            if isadmin then 
                local blip = N_0x554d9d53f696d002(1664425300, v.coords.x,v.coords.y,v.coords.z)
                SetBlipSprite(blip, -392465725, 1)
                SetBlipScale(blip, 0.2)
                Citizen.InvokeNative(0x9CB1A1623062F402, blip, v.name)
                table.insert( blips, blip )
            end
        end
    end
end)

RegisterNetEvent('syn_underground:invited')
AddEventHandler('syn_underground:invited', function(shackid)
    local v = hideouts[shackid]
    thehideoutid = v.id
    TriggerServerEvent('syn_underground:getinfo',2)
    Wait(500)
    local player = PlayerPedId()
	local coords = GetEntityCoords(player)
    TriggerServerEvent('instance:setNamed', v.id+Config.bucketblock)
    local lastshinecoords = {x =coords.x,y=coords.y,z=coords.z}
    TriggerServerEvent("syn_underground:sendlastcoords",charidentifier,lastshinecoords)
    indoors = true 
    TriggerEvent("syn_scene:stopscene",false)
    TriggerServerEvent("syn_stable:deletehorse")
    TriggerServerEvent("syn_underground:entered",thehideoutid)
    doorinfo = Config.Shacks[v.zone].doorinfo
    permalock = Config.Shacks[v.zone].permalock
    if v.theme == nil then 
        lockdoor = true 
    else
        lockdoor = false 
    end
    if not IsInteriorEntitySetActive(Config.Shacks[v.zone].interior, v.theme) then
        ActivateInteriorEntitySet(Config.Shacks[v.zone].interior, v.theme)
    end
    currenttheme = v.theme 
    currentupgrades = v.upgrades
    for x,y in pairs(v.upgrades) do 
        if not IsInteriorEntitySetActive(Config.Shacks[v.zone].interior, y) then
            ActivateInteriorEntitySet(Config.Shacks[v.zone].interior, y)
        end
    end
    DoScreenFadeOut(500)
    Wait(500)
    SetEntityCoords(player, Config.Shacks[v.zone].inside)
    Wait(1000)
    DoScreenFadeIn(1000)
    Wait(1000)
    getout = Config.Shacks[v.zone].inside
    getout2 = v.coords
    zonex = v.zone
    checkstill()
end)
RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
    checking = true 
    charidentifier = charid
    TriggerServerEvent('syn_underground:signplayer',charid)

    TriggerServerEvent('syn_underground:getinfo',2)
    TriggerServerEvent('syn_underground:getjob')
    while checking do 
        Wait(100)
    end
    TriggerEvent("syn_underground:refreshblips")
    local coords = GetEntityCoords(PlayerPedId())   
    if GetDistanceBetweenCoords(coords,1785.01,-821.53,191.01 , true) < 100 then
        FreezeEntityPosition(PlayerPedId(), true)
        DoScreenFadeOut(500)
        Wait(500)
        TriggerServerEvent("syn_underground:getlastshinecoords",charid)
        while lastshinecoords == nil do 
            Wait(100)
        end
        local closestkey 
        local closest = 100000000000
        for k,v in pairs(Config.closestpoint) do 
            local dist = GetDistanceBetweenCoords( v.coords.x,v.coords.y,v.coords.z,lastshinecoords.x,lastshinecoords.y,lastshinecoords.z , true)
            if closest > dist then 
                closestkey = k
                closest = dist
            end
        end
        local x = (Config.closestpoint[closestkey].coords.x)
        local y = (Config.closestpoint[closestkey].coords.y)
        local z = (Config.closestpoint[closestkey].coords.z)
        SetEntityCoords(PlayerPedId(), x,y,z)
        FreezeEntityPosition(PlayerPedId(), false)
        Wait(1000)
        DoScreenFadeIn(1000)
        Wait(1000)
    end
end)

Citizen.CreateThread(function()
    Citizen.Wait(5000)
    print("Syn Underground Loaded")
    print(Config.debug)
    if Config.debug then 
        print("Debug mode enabled")
        checking = true 
        TriggerServerEvent('syn_underground:signplayer',charidentifier)
    
        TriggerServerEvent('syn_underground:getinfo',2)
        TriggerServerEvent('syn_underground:getjob')
        while checking do 
            Wait(100)
        end
        TriggerEvent("syn_underground:refreshblips")
        local coords = GetEntityCoords(PlayerPedId())   
        if GetDistanceBetweenCoords(coords,1785.01,-821.53,191.01 , true) < 100 then
            FreezeEntityPosition(PlayerPedId(), true)
            DoScreenFadeOut(500)
            Wait(500)
            TriggerServerEvent("syn_underground:getlastshinecoords",charidentifier)
            while lastshinecoords == nil do 
                Wait(100)
            end
            local closestkey 
            local closest = 100000000000
            for k,v in pairs(Config.closestpoint) do 
                local dist = GetDistanceBetweenCoords( v.coords.x,v.coords.y,v.coords.z,lastshinecoords.x,lastshinecoords.y,lastshinecoords.z , true)
                if closest > dist then 
                    closestkey = k
                    closest = dist
                end
            end
            local x = (Config.closestpoint[closestkey].coords.x)
            local y = (Config.closestpoint[closestkey].coords.y)
            local z = (Config.closestpoint[closestkey].coords.z)
            SetEntityCoords(PlayerPedId(), x,y,z)
            FreezeEntityPosition(PlayerPedId(), false)
            Wait(1000)
            DoScreenFadeIn(1000)
            Wait(1000)
        end
    end
end)


Citizen.CreateThread(function()
    Citizen.Wait(500)

    RequestImap(GetHashKey("MP006_A3SUPP_MOONSHINE01"))
    RequestImap(GetHashKey("MP006_A3SUPP_MOONSHINE01_PLUG"))
    RequestImap(GetHashKey("MP006_A2SUPP_MOONSHINE02"))
    RequestImap(GetHashKey("MP006_A2SUPP_MOONSHINE02_PLUG"))
    RequestImap(GetHashKey("MP006_A4SUPP_MOONSHINE03"))
    RequestImap(GetHashKey("MP006_A4SUPP_MOONSHINE03_PLUG"))
    RequestImap(GetHashKey("MP006_A1SUPP_MOONSHINE04"))
    RequestImap(GetHashKey("MP006_A1SUPP_MOONSHINE04_PLUG"))
    RequestImap(GetHashKey("MP006_A4SUPP_MOONSHINE05"))
    RequestImap(GetHashKey("MP006_A4SUPP_MOONSHINE05_PLUG"))

    local str = Config.language.entershack
	openmenuprompt = PromptRegisterBegin()
	PromptSetControlAction(openmenuprompt, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(openmenuprompt, str)
	PromptSetEnabled(openmenuprompt, 1)
	PromptSetVisible(openmenuprompt, 1)
	PromptSetStandardMode(openmenuprompt,1)
	PromptSetGroup(openmenuprompt, prompts)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,openmenuprompt,true)
	PromptRegisterEnd(openmenuprompt)

    local str = Config.language.buyhideout
	buyprompt = PromptRegisterBegin()
	PromptSetControlAction(buyprompt, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(buyprompt, str)
	PromptSetEnabled(buyprompt, 1)
	PromptSetVisible(buyprompt, 1)
	PromptSetStandardMode(buyprompt,1)
	PromptSetGroup(buyprompt, prompts2)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,buyprompt,true)
	PromptRegisterEnd(buyprompt)

    local str = Config.language.deletehideout 
	deleteprompt = PromptRegisterBegin()
	PromptSetControlAction(deleteprompt, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(deleteprompt, str)
	PromptSetEnabled(deleteprompt, 1)
	PromptSetVisible(deleteprompt, 1)
	PromptSetStandardMode(deleteprompt,1)
	PromptSetGroup(deleteprompt, prompts2)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,deleteprompt,true)
	PromptRegisterEnd(deleteprompt)

    local str = Config.language.exithideout
	exitshack = PromptRegisterBegin()
	PromptSetControlAction(exitshack, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(exitshack, str)
	PromptSetEnabled(exitshack, 1)
	PromptSetVisible(exitshack, 1)
	PromptSetStandardMode(exitshack,1)
	PromptSetGroup(exitshack, prompts3)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,exitshack,true)
	PromptRegisterEnd(exitshack)

    local str = Config.language.secretknock
	knock = PromptRegisterBegin()
	PromptSetControlAction(knock, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(knock, str)
	PromptSetEnabled(knock, 1)
	PromptSetVisible(knock, 1)
	PromptSetStandardMode(knock,1)
	PromptSetGroup(knock, prompts4)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,knock,true)
	PromptRegisterEnd(knock)

    local str = Config.language.allowin
	allow = PromptRegisterBegin()
	PromptSetControlAction(allow, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(allow, str)
	PromptSetEnabled(allow, 1)
	PromptSetVisible(allow, 1)
	PromptSetStandardMode(allow,1)
	PromptSetGroup(allow, prompts5)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,allow,true)
	PromptRegisterEnd(allow)
    
    local str = Config.language.denyentry
	deny = PromptRegisterBegin()
	PromptSetControlAction(deny, Config.keys["ENTER"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(deny, str)
	PromptSetEnabled(deny, 1)
	PromptSetVisible(deny, 1)
	PromptSetStandardMode(deny,1)
	PromptSetGroup(deny, prompts5)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,deny,true)
	PromptRegisterEnd(deny)

    local str = Config.language.openbooks
	managementmenu = PromptRegisterBegin()
	PromptSetControlAction(managementmenu, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(managementmenu, str)
	PromptSetEnabled(managementmenu, 1)
	PromptSetVisible(managementmenu, 1)
	PromptSetStandardMode(managementmenu,1)
	PromptSetGroup(managementmenu, prompts6)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,managementmenu,true)
	PromptRegisterEnd(managementmenu)

    local str = Config.language.buyhideout
	buyprompt2 = PromptRegisterBegin()
	PromptSetControlAction(buyprompt2, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(buyprompt2, str)
	PromptSetEnabled(buyprompt2, 1)
	PromptSetVisible(buyprompt2, 1)
	PromptSetStandardMode(buyprompt2,1)
	PromptSetGroup(buyprompt2, prompts7)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,buyprompt2,true)
	PromptRegisterEnd(buyprompt2)

    local str = Config.language.deletehideout
	deleteprompt = PromptRegisterBegin()
	PromptSetControlAction(deleteprompt, Config.keys["ENTER"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(deleteprompt, str)
	PromptSetEnabled(deleteprompt, 1)
	PromptSetVisible(deleteprompt, 1)
	PromptSetStandardMode(deleteprompt,1)
	PromptSetGroup(deleteprompt, prompts7)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,deleteprompt,true)
	PromptRegisterEnd(deleteprompt)



    local str = Config.language.openinventory
	inventorybutton = PromptRegisterBegin()
	PromptSetControlAction(inventorybutton, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(inventorybutton, str)
	PromptSetEnabled(inventorybutton, 1)
	PromptSetVisible(inventorybutton, 1)
	PromptSetStandardMode(inventorybutton,1)
	PromptSetGroup(inventorybutton, prompts9)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,inventorybutton,true)
	PromptRegisterEnd(inventorybutton)

    local str = Config.language.openbookie
	openbookiebutton = PromptRegisterBegin()
	PromptSetControlAction(openbookiebutton, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(openbookiebutton, str)
	PromptSetEnabled(openbookiebutton, 1)
	PromptSetVisible(openbookiebutton, 1)
	PromptSetStandardMode(openbookiebutton,1)
	PromptSetGroup(openbookiebutton, prompts10)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,openbookiebutton,true)
	PromptRegisterEnd(openbookiebutton)

    local str = Config.language.pourmoonshine
	pourmoonshinebutton = PromptRegisterBegin()
	PromptSetControlAction(pourmoonshinebutton, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(pourmoonshinebutton, str)
	PromptSetEnabled(pourmoonshinebutton, 1)
	PromptSetVisible(pourmoonshinebutton, 1)
	PromptSetStandardMode(pourmoonshinebutton,1)
	PromptSetGroup(pourmoonshinebutton, prompts11)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,pourmoonshinebutton,true)
	PromptRegisterEnd(pourmoonshinebutton)

    local str = Config.language.eatalmonds
	eatalmonds = PromptRegisterBegin()
	PromptSetControlAction(eatalmonds, Config.keys["ENTER"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(eatalmonds, str)
	PromptSetEnabled(eatalmonds, 1)
	PromptSetVisible(eatalmonds, 1)
	PromptSetStandardMode(eatalmonds,1)
	PromptSetGroup(eatalmonds, prompts11)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,eatalmonds,true)
	PromptRegisterEnd(eatalmonds)
    
    local str = Config.language.drinkmoonshine
	drinkmoonshine = PromptRegisterBegin()
	PromptSetControlAction(drinkmoonshine, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(drinkmoonshine, str)
	PromptSetEnabled(drinkmoonshine, 1)
	PromptSetVisible(drinkmoonshine, 1)
	PromptSetStandardMode(drinkmoonshine,1)
	PromptSetGroup(drinkmoonshine, prompts12)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,drinkmoonshine,true)
	PromptRegisterEnd(drinkmoonshine)
    
    local str = Config.language.washface
	washface = PromptRegisterBegin()
	PromptSetControlAction(washface, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(washface, str)
	PromptSetEnabled(washface, 1)
	PromptSetVisible(washface, 1)
	PromptSetStandardMode(washface,1)
	PromptSetGroup(washface, prompts13)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,washface,true)
	PromptRegisterEnd(washface)

    local str = Config.language.moonshinemenu
	stillmenu = PromptRegisterBegin()
	PromptSetControlAction(stillmenu, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(stillmenu, str)
	PromptSetEnabled(stillmenu, 1)
	PromptSetVisible(stillmenu, 1)
	PromptSetStandardMode(stillmenu,1)
	PromptSetGroup(stillmenu, prompts14)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,stillmenu,true)
	PromptRegisterEnd(stillmenu)

    local str = Config.language.secretknock
	knock2 = PromptRegisterBegin()
	PromptSetControlAction(knock2, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(knock2, str)
	PromptSetEnabled(knock2, 1)
	PromptSetVisible(knock2, 1)
	PromptSetStandardMode(knock2,1)
	PromptSetGroup(knock2, prompts15)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,knock2,true)
	PromptRegisterEnd(knock2)

    local str = Config.language.raid
	raid = PromptRegisterBegin()
	PromptSetControlAction(raid, Config.keys["ENTER"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(raid, str)
	PromptSetEnabled(raid, 1)
	PromptSetVisible(raid, 1)
	PromptSetStandardMode(raid,1)
	PromptSetGroup(raid, prompts15)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,raid,true)
	PromptRegisterEnd(raid)

    local str = Config.language.stopraid
	stopraidx = PromptRegisterBegin()
	PromptSetControlAction(stopraidx, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(stopraidx, str)
	PromptSetEnabled(stopraidx, 1)
	PromptSetVisible(stopraidx, 1)
	PromptSetStandardMode(stopraidx,1)
	PromptSetGroup(stopraidx, prompts16)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,stopraidx,true)
	PromptRegisterEnd(stopraidx)

    local str = Config.language.lockpick
	lockpickx = PromptRegisterBegin()
	PromptSetControlAction(lockpickx, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(lockpickx, str)
	PromptSetEnabled(lockpickx, 1)
	PromptSetVisible(lockpickx, 1)
	PromptSetStandardMode(lockpickx,1)
	PromptSetGroup(lockpickx, prompts17)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,lockpickx,true)
	PromptRegisterEnd(lockpickx)

    local str = Config.language.takecash
	stealcash = PromptRegisterBegin()
	PromptSetControlAction(stealcash, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(stealcash, str)
	PromptSetEnabled(stealcash, 1)
	PromptSetVisible(stealcash, 1)
	PromptSetStandardMode(stealcash,1)
	PromptSetGroup(stealcash, prompts18)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,stealcash,true)
	PromptRegisterEnd(stealcash)

    local str = Config.language.plantexplosive
	blowupprompt = PromptRegisterBegin()
	PromptSetControlAction(blowupprompt, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(blowupprompt, str)
	PromptSetEnabled(blowupprompt, 1)
	PromptSetVisible(blowupprompt, 1)
	PromptSetStandardMode(blowupprompt,1)
	PromptSetGroup(blowupprompt, prompts19)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,blowupprompt,true)
	PromptRegisterEnd(blowupprompt)

    local str = Config.language.robcart
	robcartprompt = PromptRegisterBegin()
	PromptSetControlAction(robcartprompt, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(robcartprompt, str)
	PromptSetEnabled(robcartprompt, 1)
	PromptSetVisible(robcartprompt, 1)
	PromptSetStandardMode(robcartprompt,1)
	PromptSetGroup(robcartprompt, prompts20)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,robcartprompt,true)
	PromptRegisterEnd(robcartprompt)
end)


Citizen.CreateThread(function() -- piano
    while true do
        Citizen.Wait(10)
        if cooldownpianoman then 
            Wait(pianocooldowntimer)
            cooldownpianoman = false 
        end
    end
end)

function checkPoliceOnDuty(callback)
    TriggerServerEvent("syn_underground:getPlayersOnDuty", Config.police, "playersOnDutyResponse")
    RegisterNetEvent("playersOnDutyResponse")
    local eventHandler = nil
    eventHandler = AddEventHandler("playersOnDutyResponse", function(policeOnDuty)
        if type(policeOnDuty) == "table" then
            local numPoliceOnDuty = #policeOnDuty
            callback(numPoliceOnDuty)
            RemoveEventHandler(eventHandler)
        else
            callback(0) -- Fallback to 0 if there's an error
            RemoveEventHandler(eventHandler)
        end
    end)
end

Citizen.CreateThread(function()
    if Config.npcsales then 
        while true do
            Citizen.Wait(5)
            local ped = PlayerPedId()
            local IsTargetting = Citizen.InvokeNative(0x4605C66E0F935F83, PlayerId())
            if IsTargetting then
                local target, entity = GetPlayerTargetEntity(PlayerId())
                TbacGroup = Citizen.InvokeNative(0xB796970BD125FCE8, entity) 
                local Ped = PlayerPedId()
                local Coords = GetEntityCoords(Ped)
                local EntCoords = GetEntityCoords(entity)
                local Dis = GetDistance(Coords, EntCoords)
                local OnFoot = IsPedOnFoot(entity)
                if OnFoot and not indoors then
                    local Combat = IsPedInMeleeCombat(entity)
                    local PedType = GetPedType(entity)
                    if (PedType == 4 or PedType == 5) and not Combat then
                        if Dis <= 2.5 then
                            if not created then
                                Wprompt = SetupPrompt(1, Config.keys["G"], TbacGroup, TbacGroupName)
                                created = true
                            end
                            if Config.numPoliceDutyReq ~= false then 
                                if PromptHasStandardModeCompleted(Wprompt) then
                                    checkPoliceOnDuty(function(numPoliceOnDuty)
                                        if numPoliceOnDuty < Config.numPoliceDutyReq then
                                            TriggerEvent("vorp:TipBottom", Config.language.notEnoughPolice, 6000)
                                            PromptDelete(Wprompt)
                                            created = false
                                            return
                                        end
                                        if not contains(OldEnt, entity) then
                                            local r = math.random(1, 10)
                                            PromptDelete(Wprompt)
                                            ClearPedTasks(entity)
                                            SetBlockingOfNonTemporaryEvents(entity, true)
                                            Wait(3000)
                                            TurnPedAndAnimateBoth(entity)
                                            if Config.sellchance >= r then
                                                Wait(7000)
                                                ClearPedTasks(Ped)
                                                ClearPedTasks(entity)
                                                Coords = GetEntityCoords(Ped)
                                                EntCoords = GetEntityCoords(entity)
                                                local D = GetDistance(Coords, EntCoords)
                                                local DeadBruh = IsEntityDead(entity)
                                                local KnockedOut = Citizen.InvokeNative(0x61914209C36EFDDB, entity)
                                                if D <= 2.5 and not DeadBruh or KnockedOut then 
                                                    TriggerServerEvent("syn_underground:selltoai", Coords)
                                                    table.insert(OldEnt, entity)
                                                    Wait(10000)
                                                else
                                                    TriggerEvent("vorp:TipBottom", Config.language.toofar, 6000)    
                                                end
                                                ClearPedTasks(entity)
                                                SetBlockingOfNonTemporaryEvents(entity, false)
                                                TaskWanderStandard(entity, 10.0, 10)
                                                created = false
                                            else
                                                SetBlockingOfNonTemporaryEvents(entity, true)
                                                Wait(4000)
                                                ClearPedTasks(Ped)
                                                ClearPedTasks(entity)
                                                SetBlockingOfNonTemporaryEvents(entity, false)
                                                TaskWanderStandard(entity, 10, 10)
                                                created = false
                                            end
                                        end
                                    end)
                                end
                            else
                                if PromptHasStandardModeCompleted(Wprompt) then
                                    if not contains(OldEnt, entity) then
                                        local r = math.random(1, 10)
                                        PromptDelete(Wprompt)
                                        ClearPedTasks(entity)
                                        SetBlockingOfNonTemporaryEvents(entity, true)
                                        Wait(3000)
                                        TurnPedAndAnimateBoth(entity)
                                        if Config.sellchance >= r then
                                            Wait(7000)
                                            ClearPedTasks(Ped)
                                            ClearPedTasks(entity)
                                            Coords = GetEntityCoords(Ped)
                                            EntCoords = GetEntityCoords(entity)
                                            local D = GetDistance(Coords, EntCoords)
                                            local DeadBruh = IsEntityDead(entity)
                                            local KnockedOut = Citizen.InvokeNative(0x61914209C36EFDDB, entity)
                                            if D <= 2.5 and not DeadBruh or KnockedOut then 
                                                TriggerServerEvent("syn_underground:selltoai", Coords)
                                                table.insert(OldEnt, entity)
                                                Wait(10000)
                                            else
                                                TriggerEvent("vorp:TipBottom", Config.language.toofar, 6000)    
                                            end
                                            ClearPedTasks(entity)
                                            SetBlockingOfNonTemporaryEvents(entity, false)
                                            TaskWanderStandard(entity, 10.0, 10)
                                            created = false
                                        else
                                            SetBlockingOfNonTemporaryEvents(entity, true)
                                            Wait(4000)
                                            ClearPedTasks(Ped)
                                            ClearPedTasks(entity)
                                            SetBlockingOfNonTemporaryEvents(entity, false)
                                            TaskWanderStandard(entity, 10, 10)
                                            created = false
                                        end
                                    end
                                end
                            end
                        else
                            PromptDelete(Wprompt)
                            created = false
                        end
                    end
                end
            end
        end
    end
end)
function TurnPedAndAnimateBoth(E)
    math.random() math.random() math.random()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    TaskTurnPedToFaceEntity(E,PlayerPedId(),-1)
    Wait(2000)
    ClearPedTasks(E)
    local dict = "script_re@new_love@give_ring"
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
            Citizen.Wait(10)
    end
    TaskPlayAnim(E, dict, "give_ring_player", 1.0, 8.0, -1, 1, 0, false, false, false)

    local dict = "script_re@new_love@give_ring"
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
            Citizen.Wait(10)
    end
    TaskPlayAnim(PlayerPedId(), dict, "give_ring_player", 1.0, 8.0, -1, 1, 0, false, false, false)
end
function SetupPrompt(name, key, group, text)
    if not PromptIsValid(name) then
        name = PromptRegisterBegin()
        PromptSetControlAction(name, key)
        local str = CreateVarString(10, 'LITERAL_STRING', text)
        PromptSetText(name, str)
        PromptSetEnabled(name, 1)
        PromptSetVisible(name, 1)
        Citizen.InvokeNative(0xCC6656799977741B,name, 1) --stand mode
        PromptSetGroup(name, group)
        PromptRegisterEnd(name)
    end
    return name
end

Citizen.CreateThread(function() -- piano
    while true do
        Citizen.Wait(10)
        if Config.pianominigame then 
            local player = PlayerPedId()
            if Citizen.InvokeNative(0x34D6AC1157C8226C,player,GetHashKey(Config.pianosenariomale)) or Citizen.InvokeNative(0x34D6AC1157C8226C,player,GetHashKey(Config.pianosenariofemale)) then 
                if not cooldownpianoman then 
                    local mathrandomizer = math.random(Config.pianomin,Config.pianomax)
                    if maxscore > 1000 then 
                        maxscore = maxscore - mathrandomizer
                    else
                        maxscore = 1000
                    end
                    startedpiano = true 
                    Wait(Config.skillcheckint * 1000)
                    if Citizen.InvokeNative(0x34D6AC1157C8226C,player,GetHashKey(Config.pianosenariomale)) or Citizen.InvokeNative(0x34D6AC1157C8226C,player,GetHashKey(Config.pianosenariofemale)) then 
                        local testplayer = exports["syn_minigame"]:taskBar(maxscore,7)
                        if testplayer == 100 then 
                            countaward = countaward + 1
                        else
                            countaward = countaward - 1
                        end
                    end
                end
            else
                if startedpiano then 
                    startedpiano = false 
                    if countaward > 0 then 
                        TriggerServerEvent("syn_underground:pianopay",countaward)
                    end
                    countaward = 0
                    maxscore = Config.pianodiff
                    cooldownpianoman = true
                end
            end
        end
    end
end)

AddEventHandler('menuapi:closemenu', function()
    if inmenu then 
	    inmenu = false 
        ClearPedTasksImmediately(PlayerPedId())
        SetEntityCoordsNoOffset(PlayerPedId(), StartingCoords.x, StartingCoords.y, StartingCoords.z)
        TriggerServerEvent("syn_underground:exitmenu",thehideoutid)
    end
    if inmenu2 then 
        inmenu2 = false
        TriggerServerEvent("syn_underground:exitmenu",thehideoutid)
    end
end)



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local sleep = true
        if invitepending then 
            sleep = false
            local label  = CreateVarString(10, 'LITERAL_STRING', invitename..Config.language.isknocking)
            PromptSetActiveGroupThisFrame(prompts5, label)
            if Citizen.InvokeNative(0xC92AC953F0A982AE,allow) then
                invitepending = false 
                TriggerServerEvent("syn_underground:allowentry",shackinviteid,inviteplayerserverid)
            end
            if Citizen.InvokeNative(0xC92AC953F0A982AE,deny) then
                invitepending = false 
            end

        end
    end
end)

Citizen.CreateThread(function() 
    while true do
        Citizen.Wait(10)
		if drunk then 
			Wait(Config.drunktimercheck*1000)
			drunkamount = drunkamount - 100.0
			drunkscreen = drunkscreen - 0.2
			if drunkscreen > 2.5 then 
				drunkscreen = 2.5
			end
			if 0 >= drunkamount then 
				drunkamount = 0
				drunkscreen = 0
				ClearTimecycleModifier()
				Citizen.InvokeNative(0x406CCF555B04FAD3 , PlayerPedId(), false, 0.0)
				Citizen.InvokeNative(0x516C6ABD18322B63, PlayerPedId(), false)
				Citizen.InvokeNative(0x95D2D383D5396B8A, PlayerPedId(), false)
				if Citizen.InvokeNative(0x4A123E85D7C4CA0B,"PlayerDrunk01") then 
					Citizen.InvokeNative(0xB4FD7446BAB2F394,"PlayerDrunk01")
				end
				drunk = false 
			elseif 600 >= drunkamount and drunkamount >= 200 then 
				Citizen.InvokeNative(0x406CCF555B04FAD3, PlayerPedId(), 1, 1.0)
				Citizen.InvokeNative(0xFA08722A5EA82DA7, 'LensDistDrunk')
				Citizen.InvokeNative(0xFDB74C9CC54C3F37, drunkscreen)
			elseif 1000 >= drunkamount and  drunkamount > 600 then
				Citizen.InvokeNative(0x406CCF555B04FAD3, PlayerPedId(), 1, 3.0)
				Citizen.InvokeNative(0xFA08722A5EA82DA7, 'LensDistDrunk')
				Citizen.InvokeNative(0xFDB74C9CC54C3F37, drunkscreen)
			elseif drunkamount > 1000 then 
				Citizen.InvokeNative(0x4102732DF6B4005F, "PlayerDrunk01", 0, true)
				Citizen.InvokeNative(0x406CCF555B04FAD3, PlayerPedId(), 1, 6.0)
				Citizen.InvokeNative(0xFA08722A5EA82DA7, 'LensDistDrunk')
        		Citizen.InvokeNative(0xFDB74C9CC54C3F37, drunkscreen)
			end
		end
	end
end)
function hadadrink()
    drunk = true 
    drunkamount = drunkamount + Config.drunkamountincrease
	drunkscreen = drunkscreen + Config.drunkscreenincrease 
    ClearPedTasksImmediately(PlayerPedId())
    if drunkamount < 1000 then 
		TaskStartScenarioInPlace(PlayerPedId(), GetHashKey(tostring("WORLD_HUMAN_DRINKING_MOONSHINE")), 10000, true, false, false, false)
	else
        if not IsPedMale(PlayerPedId()) then
            TaskStartScenarioInPlace(PlayerPedId(), GetHashKey(tostring("WORLD_HUMAN_DRINKING_MOONSHINE")), 10000, true, false, false, false)
        else
		    TaskStartScenarioInPlace(PlayerPedId(), GetHashKey(tostring("WORLD_HUMAN_DRINKING_DRUNK_MOONSHINE")), 10000, true, false, false, false)
        end
    end 
    Wait(20000)
    ClearPedTasksImmediately(PlayerPedId())
	Citizen.InvokeNative(0xFCCC886EDE3C63EC,PlayerPedId(),false,true)
    drinkingnow = false 
end
function pourmoonshine()
    drinkingnow = true 
    ClearPedTasksImmediately(PlayerPedId())
	Citizen.InvokeNative(0xFCCC886EDE3C63EC,PlayerPedId(),false,true)
    local v =  hideouts[thehideoutid]
    local player = PlayerPedId()
    TaskUseScenarioPoint(PlayerPedId(), -2133000179 ,  "" , -1.0, true, false, 0, false, -1.0, true)
    Wait(5000)
    drinkingnow = false 
end

function checkstill() 
    if hideouts[thehideoutid].still.stilllevel ~= nil then 
        hastill = true 
        stilllevel = hideouts[thehideoutid].still.stilllevel
    else
        hastill = false 
        stilllevel = 0
    end
end

RegisterNetEvent('syn_underground:checkmenu2')
AddEventHandler('syn_underground:checkmenu2', function(x)
    ismenuactive = x 
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local sleep = true 
        if indoors then 
            sleep = false 
            local player = PlayerPedId()
	  	    local coords = GetEntityCoords(player)
            local v =  hideouts[thehideoutid]
            if mashtimer > 0 then 
                if GetDistanceBetweenCoords(coords, Config.Shacks[v.zone].mashanim.x, Config.Shacks[v.zone].mashanim.y, Config.Shacks[v.zone].mashanim.z, true) < 2 then
                    DrawText3D( Config.Shacks[v.zone].mashanim.x, Config.Shacks[v.zone].mashanim.y, Config.Shacks[v.zone].mashanim.z,Config.language.mashtimer..mashtimer)
                end
            end
            if stilltimer > 0 then 
                if GetDistanceBetweenCoords(coords, Config.Shacks[v.zone].stillanim.x, Config.Shacks[v.zone].stillanim.y, Config.Shacks[v.zone].stillanim.z, true) < 2 then
                    DrawText3D( Config.Shacks[v.zone].stillanim.x, Config.Shacks[v.zone].stillanim.y, Config.Shacks[v.zone].stillanim.z,Config.language.distilltimer..stilltimer)
                end
            end
            if hastill then 
                if not inmenu2 and GetDistanceBetweenCoords(coords, Config.Shacks[v.zone].still.x, Config.Shacks[v.zone].still.y, Config.Shacks[v.zone].still.z, true) < 1.5 and (charidentifier == v.charidentifier or containscoowner(v.coowners, charidentifier)) then
                    local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.brewmoonshine)
                    PromptSetActiveGroupThisFrame(prompts14, label)
                    if Citizen.InvokeNative(0xC92AC953F0A982AE,stillmenu) then
                        ismenuactive = nil 
                        TriggerServerEvent("syn_underground:checkmenu",thehideoutid)
                        while ismenuactive == nil do 
                            Citizen.Wait(1)
                        end
                        if not ismenuactive then 
                            inmenu2 = true 
                            openmoonshinemenu()
                            TriggerServerEvent("syn_underground:inmenu",thehideoutid)
                        else
                            TriggerEvent("vorp:TipRight", Config.language.menuinuse, 5000)
                        end
                    end
                end
            end
            if pouredmooonshine and not drinkingnow then 
                local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.moonshine)
                PromptSetActiveGroupThisFrame(prompts12, label)
                if Citizen.InvokeNative(0xC92AC953F0A982AE,drinkmoonshine) then
                    pouredmooonshine = false 
                    drinkingnow = true 
                    hadadrink()
                    if Config.fredmeta then 
                        TriggerEvent('fred_meta:consume', Config.moonshinehunger,Config.moonshinethirst,Config.moonshinemeta,0,0.0,0,0,0,0.0,0.0)
                    end
                end
            end
            if GetDistanceBetweenCoords(coords, Config.Shacks[v.zone].washface.x, Config.Shacks[v.zone].washface.y, Config.Shacks[v.zone].washface.z, true) < 1    then
                local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.waterbarrel)
                PromptSetActiveGroupThisFrame(prompts13, label)
                if Citizen.InvokeNative(0xC92AC953F0A982AE,washface) then
                    ClearPedTasksImmediately(PlayerPedId())
                    Citizen.InvokeNative(0xFCCC886EDE3C63EC,PlayerPedId(),false,true)
                    TaskUseScenarioPoint(PlayerPedId(), -2133000181 ,  "" , -1.0, true, false, 0, false, -1.0, true)
                    Wait(5000)
                    drunk = false
                    drunkamount = 0
				    drunkscreen = 0
				    ClearTimecycleModifier()
                    Citizen.InvokeNative(0x6585D955A68452A5, PlayerPedId())
                    Citizen.InvokeNative(0x9C720776DAA43E7E, PlayerPedId())
                    Citizen.InvokeNative(0x8FE22675A5A45817, PlayerPedId())
                end
            end
            if not pouredmooonshine and GetDistanceBetweenCoords(coords, Config.Shacks[v.zone].poormoon.x, Config.Shacks[v.zone].poormoon.y, Config.Shacks[v.zone].poormoon.z, true) < 2    then
                local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.servemoonshine)
                PromptSetActiveGroupThisFrame(prompts11, label)
                if Citizen.InvokeNative(0xC92AC953F0A982AE,pourmoonshinebutton) then
                    pourmoonshine()
                    pouredmooonshine = true 
                end
                if Citizen.InvokeNative(0xC92AC953F0A982AE,eatalmonds) then
                    ClearPedTasksImmediately(PlayerPedId())
                    Citizen.InvokeNative(0xFCCC886EDE3C63EC,PlayerPedId(),false,true)
                    TaskUseScenarioPoint(PlayerPedId(), -2133000177 ,  "" , -1.0, true, false, 0, false, -1.0, true)
                    if Config.fredmeta then 
                        TriggerEvent('fred_meta:consume', Config.almondshunger,Config.almondsthirst,Config.almondsmeta,0,0.0,0,0,0,0.0,0.0)
                    end
                    Wait(5000)
                end
                
            end
            if v.bookie ~= 0 then 
                if GetDistanceBetweenCoords(coords, Config.Shacks[v.zone].bookie.x, Config.Shacks[v.zone].bookie.y, Config.Shacks[v.zone].bookie.z, true) < 2    then
                    local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.bookie)
                    PromptSetActiveGroupThisFrame(prompts10, label)
                    if Citizen.InvokeNative(0xC92AC953F0A982AE,openbookiebutton) then
                        bookiemenu()
                    end
                end
            end
            if v.invlevel ~= 0 then
                if GetDistanceBetweenCoords(coords, Config.Shacks[v.zone].inventory.x, Config.Shacks[v.zone].inventory.y, Config.Shacks[v.zone].inventory.z, true) < 2  and (charidentifier == v.charidentifier or contains(Config.police,playerjob) or israidingplayer or containscoowner(v.coowners, charidentifier))  then
                    if not ininventory then 
                        local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.inventory)
                        PromptSetActiveGroupThisFrame(prompts9, label)
                        if Citizen.InvokeNative(0xC92AC953F0A982AE,inventorybutton) then
                            TriggerServerEvent("syn_underground:checkstateinventory",thehideoutid)
                            Wait(800)
                            if not ininventory then 
                                TriggerServerEvent("syn_underground:openinventory",thehideoutid)
                                ininventory2 = true 
                                TriggerServerEvent("syn_underground:ReloadHideoutInventory", thehideoutid)
                                TriggerEvent("vorp_inventory:OpenHideoutInventory", Config.language.limit2..hideouts[thehideoutid].invslots, thehideoutid)
                            end
                        end
                    end
                end
            end
            
            if GetDistanceBetweenCoords(coords, Config.Shacks[v.zone].management.x, Config.Shacks[v.zone].management.y, Config.Shacks[v.zone].management.z, true) < 2 then
                if charidentifier == v.charidentifier or containscoowner(v.coowners, charidentifier) then 
                    DrawText3D( Config.Shacks[v.zone].ledger.x, Config.Shacks[v.zone].ledger.y, Config.Shacks[v.zone].ledger.z,Config.language.ledger..v.ledger)
                    if not inmenu then 
                        local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.management)
		                PromptSetActiveGroupThisFrame(prompts6, label)
		                if Citizen.InvokeNative(0xC92AC953F0A982AE,managementmenu) then
                            ismenuactive = nil 
                            TriggerServerEvent("syn_underground:checkmenu",thehideoutid)
                            while ismenuactive == nil do 
                                Citizen.Wait(1)
                            end
                            if not ismenuactive then 
                                TaskStartScenarioAtPosition(player, GetHashKey(Config.Shacks[v.zone].management.scenario), Config.Shacks[v.zone].management.x, Config.Shacks[v.zone].management.y, Config.Shacks[v.zone].management.z, Config.Shacks[v.zone].management.h, -1, false, true)
                                openmanagementmenu()
                                StartingCoords = coords
                                inmenu = true
                                TriggerServerEvent("syn_underground:inmenu",thehideoutid)
                            else
                                TriggerEvent("vorp:TipRight", Config.language.menuinuse, 5000)

                            end
                        end
                    end
                elseif israidingplayer then   
                    DrawText3D( Config.Shacks[v.zone].ledger.x, Config.Shacks[v.zone].ledger.y, Config.Shacks[v.zone].ledger.z,Config.language.ledger..v.ledger)
                    local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.ledger2)
		            PromptSetActiveGroupThisFrame(prompts18, label)
		            if Citizen.InvokeNative(0xC92AC953F0A982AE,stealcash) then
                        TriggerServerEvent("syn_underground:stealcash",v.id)
                        Wait(2000)
                    end
                end
            end
            for x,y in pairs(permalock) do 
                if DoorSystemGetOpenRatio(y.objc) ~= 0.0 then
                    DoorSystemSetOpenRatio(y.objc, 0.0, true)
                    local object = Citizen.InvokeNative(0xF7424890E4A094C0, y.objc, 0)
                    SetEntityRotation(object, y.objYaw1, y.objYaw2, y.objYaw3, 2, true)
                end
                if DoorSystemGetDoorState(y.objc) ~= 1 then
                    Citizen.CreateThread(function()
                        Citizen.InvokeNative(0xD99229FE93B46286,y.objc,1,1,0,0,0,0)
                    end) 
                    local object = Citizen.InvokeNative(0xF7424890E4A094C0, y.objc, 0)
                    SetEntityRotation(object, y.objYaw1, y.objYaw2, y.objYaw3, 2, true)
                    Citizen.InvokeNative(0x6BAB9442830C7F53,y.objc,1)
                end 
            end
            if lockdoor then 
                for x,y in pairs(doorinfo) do 
                    if DoorSystemGetOpenRatio(y.objc) ~= 0.0 then
                        DoorSystemSetOpenRatio(y.objc, 0.0, true)
                        local object = Citizen.InvokeNative(0xF7424890E4A094C0, y.objc, 0)
                        SetEntityRotation(object, y.objYaw1, y.objYaw2, y.objYaw3, 2, true)
                    end
                    if DoorSystemGetDoorState(y.objc) ~= 1 then
                        Citizen.CreateThread(function()
                            Citizen.InvokeNative(0xD99229FE93B46286,y.objc,1,1,0,0,0,0)
                        end) 
                        local object = Citizen.InvokeNative(0xF7424890E4A094C0, y.objc, 0)
                        SetEntityRotation(object, y.objYaw1, y.objYaw2, y.objYaw3, 2, true)
                        Citizen.InvokeNative(0x6BAB9442830C7F53,y.objc,1)
                    end 
                end
            else
                for x,y in pairs(doorinfo) do 
                    if DoorSystemGetDoorState(y.objc) ~= 0 then
                        Citizen.CreateThread(function()
                            Citizen.InvokeNative(0xD99229FE93B46286,y.objc,1,1,0,0,0,0)
                        end) 
                        local object = Citizen.InvokeNative(0xF7424890E4A094C0, y.objc, 0)
                        SetEntityRotation(object, y.objYaw1, y.objYaw2, y.objYaw3, 2, true)
                        Citizen.InvokeNative(0x6BAB9442830C7F53,y.objc,0)
                    end 
                end
            end
        end
        if sleep then 
            Wait(500)
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if israiding and raidtimer > 0 then 
            Wait(1000)
            raidtimer = raidtimer - 1
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local sleep = true 
        if israiding then
            sleep = false
            local v =  hideouts[raidid]
            local player = PlayerPedId()
	  	    local coords = GetEntityCoords(player)
            if GetDistanceBetweenCoords(coords, v.coords.x, v.coords.y, v.coords.z, true) < 100 then
                if raidtimer == 0 then 
                    if GetDistanceBetweenCoords(coords, v.coords.x, v.coords.y, v.coords.z, true) < 2 then
                        local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.raidnow)
                        PromptSetActiveGroupThisFrame(prompts17, label)
                        if Citizen.InvokeNative(0xC92AC953F0A982AE,lockpickx) then
                            TriggerServerEvent("syn_underground:checkitem",Config.lockpickitem)
                            Wait(500)
                            if hasitem >= Config.blowupitemcount then 
                                local testplayer = nil 
                                if not IsEntityPlayingAnim(player, "script_proc@rustling@olar@player_picklock", "base", 3) then
                                    local waiting = 0
                                    RequestAnimDict("script_proc@rustling@olar@player_picklock")
                                    while not HasAnimDictLoaded("script_proc@rustling@olar@player_picklock") do
                                        waiting = waiting + 100
                                        Citizen.Wait(100)
                                        if waiting > 5000 then
                                            break
                                        end
                                    end
                                    
                                    Wait(100)
                                    TaskPlayAnim(player, 'script_proc@rustling@olar@player_picklock', 'base', 8.0, 8.0, 120000, 31, 0, true, 0, false, 0, false)
                                    testplayer = exports["lockpick"]:lockpick()
                                    ClearPedSecondaryTask(player)
                                    RemoveAnimDict("script_proc@rustling@olar@player_picklock")
                                end 
                                if testplayer then                            
                                    TriggerServerEvent("syn_underground:setraided",raidid)
                                    TriggerServerEvent("syn_underground:startraidedcooldown",raidid)
                                    thehideoutid = v.id
                                    TriggerServerEvent('syn_underground:getinfo',2)
                                    Wait(500)
                                    TriggerServerEvent('instance:setNamed', v.id+Config.bucketblock)
                                    local lastshinecoords = {x =coords.x,y=coords.y,z=coords.z}
                                    TriggerServerEvent("syn_underground:sendlastcoords",charidentifier,lastshinecoords)
                                    indoors = true 
                                    TriggerEvent("syn_scene:stopscene",false)
                                    TriggerEvent("syn_stable:deletehorse")
                                    TriggerServerEvent("syn_underground:entered",thehideoutid)
                                    doorinfo = Config.Shacks[v.zone].doorinfo
                                    permalock = Config.Shacks[v.zone].permalock
                                    if v.theme == nil then 
                                        lockdoor = true 
                                    else
                                        lockdoor = false 
                                    end
                                    currenttheme = v.theme 
                                    israidingplayer = true 
                                    currentupgrades = v.upgrades
                                    if not IsInteriorEntitySetActive(Config.Shacks[v.zone].interior, v.theme) then
                                        ActivateInteriorEntitySet(Config.Shacks[v.zone].interior, v.theme)
                                    end
                                    for x,y in pairs(v.upgrades) do 
                                        if not IsInteriorEntitySetActive(Config.Shacks[v.zone].interior, y) then
                                            ActivateInteriorEntitySet(Config.Shacks[v.zone].interior, y)
                                        end
                                    end
                                    DoScreenFadeOut(500)
                                    Wait(500)
                                    SetEntityCoords(player, Config.Shacks[v.zone].inside)
                                    Wait(1000)
                                    DoScreenFadeIn(1000)
                                    Wait(1000)
                                    getout = Config.Shacks[v.zone].inside
                                    getout2 = v.coords
                                    zonex = v.zone
                                    checkstill()
                                    israiding = false 
                                elseif not testplayer then                             
                                    TriggerServerEvent("syn_underground:removeitem",Config.lockpickitem)
                                end 
                            else
                                TriggerEvent("vorp:TipBottom", Config.language.needlockpick, 4000)
                            end
                        end
                    end
                else
                    drawtext(Config.language.wait..raidtimer..Config.language.secsuntil, 0.50, 0.95, 0.6, 0.6, true, 255, 255, 255, 255, true, 10000)
                    local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.raiding)
                    PromptSetActiveGroupThisFrame(prompts16, label)
                    if Citizen.InvokeNative(0xC92AC953F0A982AE,stopraidx) then
                        israiding = false 
                    end
                end
                if IsEntityDead(player) then 
                    israiding = false 
                end
            else
                TriggerEvent("vorp:TipBottom", Config.language.leftarea, 4000)
                israiding = false 
            end
        end
        if sleep then 
            Wait(500)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
		local player = PlayerPedId()
	  	local coords = GetEntityCoords(player)
	  	local sleep = true 
        if next(hideouts) ~= nil then 
	  	    for k, v in pairs(hideouts) do
                if GetDistanceBetweenCoords(coords, v.coords.x, v.coords.y, v.coords.z, true) < 2 and v.owned == 1 and (charidentifier ~= v.charidentifier or not containscoowner(v.coowners, charidentifier)) and v.justraided == 0 then
                    sleep = false
                    if Config.raidpoliceonly then 
                        if contains(Config.police,playerjob) and not israiding and v.raidcooldown == 0 then 
                            local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.hideout.." ID: "..v.id)
                            PromptSetActiveGroupThisFrame(prompts15, label)
                            if Citizen.InvokeNative(0xC92AC953F0A982AE,knock2) then
                              TriggerServerEvent("syn_underground:askforinvite",v.id)
                              Wait(10000)
                            end
                            if Citizen.InvokeNative(0xC92AC953F0A982AE,raid) then
                                if Config.raidonlineonly then 
                                    TriggerServerEvent("syn_underground:getonline")
                                    while onlineplayers == nil do 
                                        Wait(500)
                                    end
                                    if checkonowners(onlineplayers, v.charidentifier,v.coowners) then 
                                        if onlineplayers[v.charidentifier] ~= nil then 
                                            TriggerServerEvent("syn_underground:sendwarning",v.name,onlineplayers[v.charidentifier],coords)
                                        end
                                        for g,z in pairs(v.coowners) do 
                                            if onlineplayers[z.charid] ~= nil then
                                                TriggerServerEvent("syn_underground:sendwarning",v.name,onlineplayers[z.charid],coords)
                                            end
                                        end
                                        onlineplayers = nil 
                                        raidtimer = Config.raidtimer * 60
                                        raidid = v.id
                                        TriggerServerEvent("syn_underground:setraid",raidid)
                                        israiding = true 
                                    else
                                        TriggerEvent("vorp:TipBottom",  Config.language.ownernot, 4000)
                                    end
                                else
                                    raidtimer = Config.raidtimer * 60
                                    raidid = v.id
                                    TriggerServerEvent("syn_underground:setraid",raidid)
                                    israiding = true 
                                end
                            end
                        elseif not israiding then 
                            local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.hideout.." ID: "..v.id)
		    	  	        PromptSetActiveGroupThisFrame(prompts4, label)
		    	  	        if Citizen.InvokeNative(0xC92AC953F0A982AE,knock) then
                                TriggerServerEvent("syn_underground:askforinvite",v.id)
                                Wait(10000)
                            end
                        end
                    elseif Config.disableraid then 
                        local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.hideout.." ID: "..v.id)
                        PromptSetActiveGroupThisFrame(prompts4, label)
                        if Citizen.InvokeNative(0xC92AC953F0A982AE,knock) then
                          TriggerServerEvent("syn_underground:askforinvite",v.id)
                          Wait(10000)
                      end
                    elseif Config.raidanyone then 
                        if not israiding and v.raidcooldown == 0 and containscharid(hideouts, charidentifier) then 
                            local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.hideout.." ID: "..v.id)
                            PromptSetActiveGroupThisFrame(prompts15, label)
                            if Citizen.InvokeNative(0xC92AC953F0A982AE,knock2) then
                              TriggerServerEvent("syn_underground:askforinvite",v.id)
                              Wait(10000)
                            end
                            if Citizen.InvokeNative(0xC92AC953F0A982AE,raid) then
                                if Config.raidonlineonly then 
                                    TriggerServerEvent("syn_underground:getonline")
                                    while onlineplayers == nil do 
                                        Wait(500)
                                    end
                                    if checkonowners(onlineplayers, v.charidentifier,v.coowners) then 
                                        if onlineplayers[v.charidentifier] ~= nil then 
                                            TriggerServerEvent("syn_underground:sendwarning",v.name,onlineplayers[v.charidentifier],coords)
                                        end
                                        for g,z in pairs(v.coowners) do 
                                            if onlineplayers[z.charid] ~= nil then
                                                TriggerServerEvent("syn_underground:sendwarning",v.name,onlineplayers[z.charid],coords)
                                            end
                                        end
                                        onlineplayers = nil
                                        raidtimer = Config.raidtimer * 60
                                        raidid = v.id
                                        TriggerServerEvent("syn_underground:setraid",raidid)
                                        israiding = true 
                                    else
                                        TriggerEvent("vorp:TipBottom",  Config.language.ownernot, 4000)
                                    end
                                else
                                    raidtimer = Config.raidtimer * 60
                                    raidid = v.id
                                    TriggerServerEvent("syn_underground:setraid",raidid)
                                    israiding = true 
                                end
                            end
                        elseif not israiding then 
                            local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.hideout.." ID: "..v.id)
		    	  	        PromptSetActiveGroupThisFrame(prompts4, label)
		    	  	        if Citizen.InvokeNative(0xC92AC953F0A982AE,knock) then
                                TriggerServerEvent("syn_underground:askforinvite",v.id)
                                Wait(10000)
                            end
                        end
                    end
                end
                if GetDistanceBetweenCoords(coords, v.coords.x, v.coords.y, v.coords.z, true) < 2 and v.owned == 0 then
                    sleep = false
                    if contains(Config.jobs,playerjob) or isadmin then 
                        local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.pricex..v.price)
                        PromptSetActiveGroupThisFrame(prompts7, label)
                        if Citizen.InvokeNative(0xC92AC953F0A982AE,buyprompt2) then
                          TriggerServerEvent("syn_underground:buyshack",v.id,v.price)
                          Wait(1000)
                          TriggerEvent("syn_underground:refreshblips")
                        end
                        if Citizen.InvokeNative(0xC92AC953F0A982AE,deleteprompt) then
                            TriggerServerEvent("syn_underground:deleteshack",v.id)
                            Wait(2000)
                            TriggerEvent("syn_underground:refreshblips")
                          end
                    else
                        local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.pricex..v.price)
		    	  	    PromptSetActiveGroupThisFrame(prompts2, label)
		    	  	    if Citizen.InvokeNative(0xC92AC953F0A982AE,buyprompt) then
                            TriggerServerEvent("syn_underground:buyshack",v.id,v.price)
                            Wait(1000)
                            TriggerEvent("syn_underground:refreshblips")
                        end
                    end
                end
		    	if GetDistanceBetweenCoords(coords, v.coords.x, v.coords.y, v.coords.z, true) < 2 and v.owned == 1 and ((charidentifier == v.charidentifier) or (v.justraided == 1) or containscoowner(v.coowners, charidentifier)) then
		    	  	sleep = false
		    	  	local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.hideout.." ID: "..v.id)
		    	  	PromptSetActiveGroupThisFrame(prompts, label)
		    	  	if Citizen.InvokeNative(0xC92AC953F0A982AE,openmenuprompt) then
                        thehideoutid = v.id
                        TriggerServerEvent('syn_underground:getinfo',2)
                        Wait(500)
                        TriggerServerEvent('instance:setNamed', v.id+Config.bucketblock)
                        local lastshinecoords = {x =coords.x,y=coords.y,z=coords.z}
                        TriggerServerEvent("syn_underground:sendlastcoords",charidentifier,lastshinecoords)
                        indoors = true 
                        TriggerEvent("syn_scene:stopscene",false)
                        TriggerEvent("syn_stable:deletehorse")
                        TriggerServerEvent("syn_underground:entered",thehideoutid)
                        doorinfo = Config.Shacks[v.zone].doorinfo
                        permalock = Config.Shacks[v.zone].permalock
                        if v.theme == nil then 
                            lockdoor = true 
                        else
                            lockdoor = false 
                        end
                        currenttheme = v.theme 
                        if v.justraided == 1 then 
                            israidingplayer = true 
                        end
                        currentupgrades = v.upgrades
                        if not IsInteriorEntitySetActive(Config.Shacks[v.zone].interior, v.theme) then
                            ActivateInteriorEntitySet(Config.Shacks[v.zone].interior, v.theme)
                        end
                        for x,y in pairs(v.upgrades) do 
                            if not IsInteriorEntitySetActive(Config.Shacks[v.zone].interior, y) then
                                ActivateInteriorEntitySet(Config.Shacks[v.zone].interior, y)
                            end
                        end
                        DoScreenFadeOut(500)
                        Wait(500)
                        SetEntityCoords(player, Config.Shacks[v.zone].inside)
                        Wait(1000)
                        DoScreenFadeIn(1000)
                        Wait(1000)
                        getout = Config.Shacks[v.zone].inside
                        getout2 = v.coords
                        zonex = v.zone
                        checkstill()
		    	  	end
		    	end
		    end
            if getout ~= nil then 
		    	if GetDistanceBetweenCoords(coords, getout, true) < 2 then
                    sleep = false
                    local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.hideout)
                    PromptSetActiveGroupThisFrame(prompts3, label)
                    if Citizen.InvokeNative(0xC92AC953F0A982AE,exitshack) then
                      DeactivateInteriorEntitySet(Config.Shacks[zonex].interior, currenttheme)
                      for x,y in pairs(currentupgrades) do
                          DeactivateInteriorEntitySet(Config.Shacks[zonex].interior, y)
                      end
                      indoors = false 
                      TriggerEvent("syn_scene:stopscene",true)
                      mashtimer = 0
                      stilltimer = 0
                      if israidingplayer then 
                        israidingplayer = false
                      end
                      TriggerServerEvent("syn_underground:exit",thehideoutid)
                      TriggerServerEvent('instance:setNamed', 0)
                      DoScreenFadeOut(500)
                      Wait(500)
                      SetEntityCoords(player, getout2.x,getout2.y,getout2.z)
                      Wait(1000)
                      DoScreenFadeIn(1000)
                      Wait(1000)
                      getout = nil
                      getout2 = nil
                    end
              end
            end
        end
		if sleep then 
			Wait(500)
		end
	end
end)



RegisterNetEvent("syn_underground:forceexit")
AddEventHandler("syn_underground:forceexit", function()
    local player = PlayerPedId()
    DeactivateInteriorEntitySet(Config.Shacks[zonex].interior, currenttheme)
    for x,y in pairs(currentupgrades) do
        DeactivateInteriorEntitySet(Config.Shacks[zonex].interior, y)
    end
    indoors = false 
    TriggerEvent("syn_scene:stopscene",true)
    mashtimer = 0
    stilltimer = 0
    if israidingplayer then 
      israidingplayer = false
    end
    TriggerServerEvent("syn_underground:exit",thehideoutid)
    TriggerServerEvent('instance:setNamed', 0)
    DoScreenFadeOut(500)
    Wait(500)
    SetEntityCoords(player, getout2.x,getout2.y,getout2.z)
    Wait(1000)
    DoScreenFadeIn(1000)
    Wait(1000)
    getout = nil
    getout2 = nil
end)


function openmanagementmenu()
    MenuData.CloseAll()
    local elements = {
		{label = Config.language.hideouttheme, value = 'theme' , desc = Config.language.hideoutthemedesc},
		{label = Config.language.upgrades, value = 'upgrades' , desc = Config.language.upgradesdesc},
		{label = Config.language.logistics, value = 'logistic' , desc = Config.language.logisticsdesc},
		{label = Config.language.moonshinestill, value = 'still' , desc = Config.language.moonshinestilldesc},
		
	}
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.managementmenu,
		subtext    = Config.language.managehideout,
		align    = 'top-left',
		elements = elements,
	},
	function(data, menu)
		if(data.current.value == "theme") then 
            thememenu()
		end
        if(data.current.value == "logistic") then 
            logisticmenu()
		end
        if(data.current.value == "upgrades") then 
            upgradesmenu()
		end
        if(data.current.value == "still") then 
            stillmanagement()
		end
		
	end,
	function(data, menu)
		menu.close()
	end)
end




function endmission()
    RemoveBlip(missionblip)
    ClearGpsMultiRoute()
    deleteNpcs()
    inmission = false
    existshacktostart = false 
    spawned = false 
    CartIsDemolished = false 
    CartIsExploded = false 
end
function deleteNpcs()
	DeleteEntity(MainCoach)
	DeleteEntity(MainPed)
	DeleteEntity(EscortPed)
	DeleteEntity(EscortCoach)
	DeleteEntity(EscortPed2)
	DeleteEntity(EscortCoach2)
    for k,v in pairs(npcs) do
		DeleteEntity(v.handle)
	end
	
end
function requestModels(v)
	RequestModel(v)
	while not HasModelLoaded(v) do
		Wait(50)
	end
end
function fillCartPassengers(cart)
    local coords, heading = GetEntityCoords(cart), GetEntityHeading(cart)
    if not Config.solomissions then 
        for i=1, Config.extracartpeds do
            Wait(100)
            local random = math.random( 1, keysx(missioninfo.peds))
            local ped = 0 
            while ped == 0 do
                ped = CreatePed(missioninfo.peds[random], coords.x, coords.y, coords.z, heading, true, true, false, 0, 0)
                SetEntityAsMissionEntity(ped)
                Wait(250)
            end
            Citizen.InvokeNative(0x283978A15512B2FE, ped, true)	
            local random2 = math.random( 1, keysx(missioninfo.weapons))
            GiveWeaponToPed_2(ped, GetHashKey(missioninfo.weapons[random2]), 500, true, 1, false, 0.0)
            Citizen.InvokeNative(0xF166E48407BAC484, ped, PlayerPedId(), 0, 0)
            SetPedFleeAttributes(ped, 0, 0)
            SetPedCombatAttributes(ped, 46, 1)
            SetPedCombatAbility(ped, 100)
            SetPedCombatMovement(ped, 2)
            SetPedCombatRange(ped, 2)
            --SetPedAsCop(ped, true)
            SetPedIntoVehicle(ped, cart, -2)
            npcs[#npcs+1] = { handle = ped, isDriver = false}
        end
    else
        for i=1, Config.extracartpeds do
            Wait(100)
            local random = math.random( 1, keysx(missioninfo.peds))
            local ped = 0 
            while ped == 0 do
                ped = CreatePed(missioninfo.peds[random], coords.x, coords.y, coords.z, heading, false, true, false, 0, 0)
                SetEntityAsMissionEntity(ped)
                Wait(250)
            end
            Citizen.InvokeNative(0x283978A15512B2FE, ped, true)	
            local random2 = math.random( 1, keysx(missioninfo.weapons))
            GiveWeaponToPed_2(ped, GetHashKey(missioninfo.weapons[random2]), 500, true, 1, false, 0.0)
            Citizen.InvokeNative(0xF166E48407BAC484, ped, PlayerPedId(), 0, 0)
            SetPedFleeAttributes(ped, 0, 0)
            SetPedCombatAttributes(ped, 46, 1)
            SetPedCombatAbility(ped, 100)
            SetPedCombatMovement(ped, 2)
            SetPedCombatRange(ped, 2)
            --SetPedAsCop(ped, true)
            SetPedIntoVehicle(ped, cart, -2)
            npcs[#npcs+1] = { handle = ped, isDriver = false}
        end
    end
end


function spawnnpc(missiontype)
    RemoveBlip(missionblip)
    ClearGpsMultiRoute()
	local coords = gps
	local r = -coords.h * (math.pi / 180)
	local offsetX, offsetY = (20 * math.sin(r)), (20 * math.cos(r))
	requestModels(GetHashKey(missioninfo.coach))
    for k,v in pairs(missioninfo.peds) do 
        requestModels(GetHashKey(v))
    end
    MainCoach = 0 
    while MainCoach == 0 do
        if not Config.solomissions then 
	        MainCoach = CreateVehicle(GetHashKey(missioninfo.coach), coords.x, coords.y, coords.z, coords.h, true, false)
        else
	        MainCoach = CreateVehicle(GetHashKey(missioninfo.coach), coords.x, coords.y, coords.z, coords.h, false, false)
        end
        Wait(500)
    end
	SetEntityAsMissionEntity(MainCoach)
    MainPed = 0 
    while MainPed == 0 do
        if not Config.solomissions then 
            MainPed = CreatePed(GetHashKey(missioninfo.peds[1]), coords.x, coords.y, coords.z, coords.h, true, true, false, 0, 0)
            SetEntityAsMissionEntity(MainPed)
        else
            MainPed = CreatePed(GetHashKey(missioninfo.peds[1]), coords.x, coords.y, coords.z, coords.h, false, true, false, 0, 0)
            SetEntityAsMissionEntity(MainPed)
        end
        Wait(250)
    end
	SetPedIntoVehicle(MainPed, MainCoach, -1)
	Citizen.InvokeNative(0x283978A15512B2FE, MainPed, true)
	fillCartPassengers(MainCoach)
	local blipx = Citizen.InvokeNative(0x23f74c2fda6e7c61, 953018525, MainCoach)
    SetBlipSprite(blipx, 1612913921, 1)
    if missiontype == 2 or missiontype == 3 then 
        EscortCoach = 0 
        while EscortCoach == 0 do
            if not Config.solomissions then 
	            EscortCoach = CreateVehicle(GetHashKey(missioninfo.coach), coords.x - offsetX, coords.y - offsetY, coords.z, coords.h, true, false)

            else
	            EscortCoach = CreateVehicle(GetHashKey(missioninfo.coach), coords.x - offsetX, coords.y - offsetY, coords.z, coords.h, false, false)

            end
            Wait(500)
        end
	    SetEntityAsMissionEntity(EscortCoach)
        EscortPed = 0 
        while EscortPed == 0 do
            if not Config.solomissions then 
                EscortPed = CreatePed(GetHashKey(missioninfo.peds[1]), coords.x - offsetX, coords.y - offsetY, coords.z, coords.h, true, true, false, 0, 0)
                SetEntityAsMissionEntity(EscortPed)

            else
                EscortPed = CreatePed(GetHashKey(missioninfo.peds[1]), coords.x - offsetX, coords.y - offsetY, coords.z, coords.h, false, true, false, 0, 0)
                SetEntityAsMissionEntity(EscortPed)
            end
            Wait(250)
        end
	    SetPedIntoVehicle(EscortPed, EscortCoach, -1)
	    Citizen.InvokeNative(0x283978A15512B2FE, EscortPed, true)
	    fillCartPassengers(EscortCoach)
    end
    if missiontype == 3 then 
        local r = -coords.h * (math.pi / 180)
        local offsetX, offsetY = (10 * math.sin(r)), (10 * math.cos(r)) 
        EscortCoach2 = 0 
        while EscortCoach2 == 0 do  
            if not Config.solomissions then  
	            EscortCoach2 = CreateVehicle(GetHashKey(missioninfo.coach), coords.x - offsetX, coords.y - offsetY, coords.z, coords.h, true, false)
            else
	            EscortCoach2 = CreateVehicle(GetHashKey(missioninfo.coach), coords.x - offsetX, coords.y - offsetY, coords.z, coords.h, false, false)
            end
            Wait(500)
        end
	    SetEntityAsMissionEntity(EscortCoach2)
        EscortPed2 = 0 
        while EscortPed2 == 0 do
            if not Config.solomissions then
                EscortPed2 = CreatePed(GetHashKey(missioninfo.peds[1]), coords.x - offsetX, coords.y - offsetY, coords.z, coords.h, true, true, false, 0, 0)
                SetEntityAsMissionEntity(EscortPed2)
            else
                EscortPed2 = CreatePed(GetHashKey(missioninfo.peds[1]), coords.x - offsetX, coords.y - offsetY, coords.z, coords.h, false, true, false, 0, 0)
                SetEntityAsMissionEntity(EscortPed2)
            end
            Wait(250)
        end
	    SetPedIntoVehicle(EscortPed2, EscortCoach2, -1)
	    Citizen.InvokeNative(0x283978A15512B2FE, EscortPed2, true)
	    fillCartPassengers(EscortCoach2)
    end
    if missiontype == 2 or missiontype == 3 then 
        TaskVehicleEscort( EscortPed, EscortCoach, MainCoach, 1, 80.0, 262968, 2.0, 0, 2.0)
    end
    if missiontype == 3 then 
        TaskVehicleEscort( EscortPed2, EscortCoach2, MainCoach, 1, 80.0, 262968, 2.0, 0, 2.0)
    end
    Citizen.InvokeNative(0x480142959D337D00,MainPed, MainCoach, 10.0, 262968)
    SetModelAsNoLongerNeeded(GetHashKey(missioninfo.coach))
    for k,v in pairs(missioninfo.peds) do 
        SetModelAsNoLongerNeeded(GetHashKey(v))
    end
end
function blowcart()
    TriggerServerEvent("syn_underground:blowcartlog")
    if Config.alertpoliceplayers then 
        local pos = GetEntityCoords(PlayerPedId())
        TriggerServerEvent("syn_underground:alertpolice",pos)
    end
    if IsVehicleStopped(MainCoach) then
		if (IsVehicleSeatFree(MainCoach, -1) and IsVehicleSeatFree(MainCoach, 0) and IsVehicleSeatFree(MainCoach, 1)) then
			if Config.itemneededtoblowup then 
                TriggerServerEvent("syn_underground:removeitem",Config.blowupitem)
            end
            CartIsDemolished = true
			RequestAnimDict('amb_work@world_human_crouch_inspect@male_c@idle_a')
			while not HasAnimDictLoaded('amb_work@world_human_crouch_inspect@male_c@idle_a') do
				Citizen.Wait(50)
			end
			
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
			itemDynamiteprop = CreateObject(GetHashKey('p_dynamite01x'), x, y, z+0.2,  true,  true, true)
			AttachEntityToEntity(itemDynamiteprop, playerPed, GetPedBoneIndex(playerPed, 54565), 0.06, 0.0, 0.06, 90.0, 0.0, 0.0, true, true, false, true, 1, true)
			SetCurrentPedWeapon(playerPed, GetHashKey("WEAPON_UNARMED"),true)
			Citizen.Wait(700)
			FreezeEntityPosition(playerPed, true)
			TaskPlayAnim(playerPed, 'amb_work@world_human_crouch_inspect@male_c@idle_a', "idle_c", 3.0, -8, -1, 63, 0, 0, 0, 0 )
			local failedtest = false 
            local testplayer = exports["syn_minigame"]:taskBar(Config.diff1,7)
            local testplayer2
            local testplayer3
            local testplayer4
            if testplayer == 100 then
                testplayer2 = exports["syn_minigame"]:taskBar(Config.diff2,7)
            end
            if testplayer2 == 100 then
                testplayer3 = exports["syn_minigame"]:taskBar(Config.diff3,7)
            end
            if testplayer3 == 100 then
                testplayer4 = exports["syn_minigame"]:taskBar(Config.diff4,7)
            end
			if testplayer4 == 100 then 
                ClearPedTasks(playerPed)
                DetachEntity(itemDynamiteprop)
                AttachEntityToEntity(itemDynamiteprop, MainCoach, GetEntityBoneIndexByName(MainCoach, 'door_dside_f'), -0.5, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
                FreezeEntityPosition(playerPed, false)
                Citizen.Wait(500)
                exports['progressBars']:startUI(Config.DetonateTimer * 1000, Config.language.dynamitetimer)
                Citizen.Wait((Config.DetonateTimer * 1000))
                local CartPos = GetEntityCoords(MainCoach)
                SetVehicleDoorBroken(MainCoach, 2, false)
                SetVehicleDoorBroken(MainCoach, 3, false)
                AddExplosion(CartPos.x,CartPos.y,CartPos.z, 25 , 1.0 ,true , false , 27)
                ApplyForceToEntity(MainCoach, 0, CartPos.x,CartPos.y,CartPos.z, 0.0, 0.0, 0.0, 1, false, true, true, true, true) 
                CartIsExploded = true
                DeleteEntity(itemDynamiteprop)  
                TriggerEvent("vorp:TipBottom", Config.language.robthecart, 4000)  
            else
                FreezeEntityPosition(playerPed, false)
                ClearPedTasks(playerPed)
                local CartPos = GetEntityCoords(MainCoach)
                SetVehicleDoorBroken(MainCoach, 2, false)
                SetVehicleDoorBroken(MainCoach, 3, false)
                AddExplosion(CartPos.x,CartPos.y,CartPos.z, 25 , 10.0 ,true , false , 27)
                ApplyForceToEntity(MainCoach, 0, CartPos.x,CartPos.y,CartPos.z, 0.0, 0.0, 0.0, 1, false, true, true, true, true) 
                CartIsExploded = true
                DeleteEntity(itemDynamiteprop)
                Wait(1500)
                SetEntityHealth(playerPed,0,0)
            end
		else
            TriggerEvent("vorp:TipBottom", Config.language.makesurempty, 4000)
		end
	else
        TriggerEvent("vorp:TipBottom", Config.language.cartnotstop, 4000)
	end
end
local freezemyplayer = false 
function robcart()
    local playerPed = PlayerPedId()
    FreezeEntityPosition(playerPed,true)
    freezemyplayer = true 
    RequestAnimDict('amb_work@world_human_crouch_inspect@male_c@idle_a')
	while not HasAnimDictLoaded('amb_work@world_human_crouch_inspect@male_c@idle_a') do
		Citizen.Wait(50)
	end
	local pos = GetEntityCoords(playerPed)
	local moneyBag = CreateObject(GetHashKey('p_moneybag01x'),pos.x, pos.y,pos.z, true, true, true)
	AttachEntityToEntity(moneyBag, playerPed, GetPedBoneIndex(playerPed, 54565), 0.0, 0.0, -0.16, 250.0, -30.0, 0.0, false, false, false, false, 2, true)
	TaskPlayAnim(PlayerPedId(), "amb_work@world_human_crouch_inspect@male_c@idle_a", "idle_c", 8.0, -8.0, -1, 1, 0, false, false, false)
    exports['progressBars']:startUI(Config.RobCartTimer * 1000, Config.language.takingitems)
	Citizen.Wait((Config.RobCartTimer * 1000))
	DeleteEntity(moneyBag)
    freezemyplayer = false 
    FreezeEntityPosition(playerPed,false)
    ClearPedTasksImmediately(PlayerPedId())
	ClearPedSecondaryTask(PlayerPedId())
	TriggerServerEvent("syn_underground:missioncomplete",missioninfo.reward)
	Citizen.Wait(30000)
	endmission()
end
Citizen.CreateThread(function() 
    while true do
        Citizen.Wait(1)
        sleep = true 
        if freezemyplayer then
            sleep = false 
            FreezeEntityPosition(PlayerPedId(),true)
        end
        if sleep then 
            Wait(500)
        end
    end
end)

Citizen.CreateThread(function() 
    while true do
        Citizen.Wait(1)
        sleep = true 
        if inmission then 
            sleep = false 
            local coords = GetEntityCoords(PlayerPedId())
            if missiontype == 1 then 
                if GetDistanceBetweenCoords(coords, gps.x,gps.y,gps.z, true) < 100 and not spawned then
                    spawnnpc(missiontype)
                    spawned = true 
                end
            elseif missiontype == 2 then 
                if GetDistanceBetweenCoords(coords, gps.x,gps.y,gps.z, true) < 100 and not spawned then
                    spawnnpc(missiontype)
                    spawned = true 
                end
            elseif missiontype == 3 then  
                if GetDistanceBetweenCoords(coords, gps.x,gps.y,gps.z, true) < 100 and not spawned then
                    spawnnpc(missiontype)
                    spawned = true 
                end
            end
            if IsEntityDead(PlayerPedId()) then 
                endmission()
                TriggerEvent("vorp:TipBottom", Config.language.failed, 4000)
            end
            if spawned then 
                local CartPos = GetEntityCoords(MainCoach) 
                local distance = GetDistanceBetweenCoords(coords, CartPos.x, CartPos.y, CartPos.z, false)
                if Config.missionfaildist < distance then 
                    endmission()
                    TriggerEvent("vorp:TipBottom", Config.language.failed2, 4000)
                end
                if distance <=5 and not CartIsDemolished then 
                    local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.cart)
                    PromptSetActiveGroupThisFrame(prompts19, label)
                    if Citizen.InvokeNative(0xC92AC953F0A982AE,blowupprompt) then
                        if Config.itemneededtoblowup then 
                            TriggerServerEvent("syn_underground:checkitem",Config.blowupitem)
                            Wait(500)
                            if hasitem >= Config.blowupitemcount then
                                blowcart()
                            else
                                TriggerEvent("vorp:TipBottom", Config.language.needexplosive, 4000)
                            end
                        else
                            blowcart()
                        end
                    end
                end
                if distance <=5 and CartIsExploded then 
                    local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.cart)
                    PromptSetActiveGroupThisFrame(prompts20, label)
                    if Citizen.InvokeNative(0xC92AC953F0A982AE,robcartprompt) then
                        CartIsExploded = false
                        robcart()
                    end
                end
            end

        end
        if sleep then 
            Wait(500)
        end

    end
end)

Citizen.CreateThread(function() 
    while true do
        Citizen.Wait(1)
        sleep = true 
        if existshacktostart then 
            sleep = false 
            if indoors == false then 
                existshacktostart = false 
                startmission()
                TriggerServerEvent("syn_underground:missionstartedlog")
            end
        end
        if sleep then 
            Wait(500)
        end
    end
end)

function startmission()

    if missiontype == 1 then 
        local max = keysx(Config.missiontype[1])
        local rn = math.random(1,max)
        missioninfo = Config.missiontype[1][rn]
    elseif  missiontype == 2 then 
        local max = keysx(Config.missiontype[2])
        local rn = math.random(1,max)
        missioninfo = Config.missiontype[2][rn]
    elseif  missiontype == 3 then 
        local max = keysx(Config.missiontype[3])
        local rn = math.random(1,max)
        missioninfo = Config.missiontype[3][rn]
    end
    ClearGpsMultiRoute()
    StartGpsMultiRoute(0, true, true)
    gps = missioninfo.loc
    --[[ if Config.alertpoliceplayers then 
        TriggerServerEvent("syn_underground:alertpolice",gps)
    end ]]
    AddPointToGpsMultiRoute(gps.x, gps.y, gps.z)
    SetGpsMultiRouteRender(true, 8, 8)
    missionblip = N_0x554d9d53f696d002(1664425300, gps.x, gps.y, gps.z)
    SetBlipSprite(missionblip, 1612913921, 1)
    SetBlipScale(missionblip, 0.2)
    Citizen.InvokeNative(0x9CB1A1623062F402, missionblip, Config.language.missionwagon)
    Citizen.InvokeNative(0x662D364ABF16DE2F,missionblip,0x6F85C3CE)
    inmission = true
end
RegisterCommand(Config.removealertcommand, function(source, args, rawCommand)
    if isalerted then 
        isalerted = false 
        for k,v in pairs(blipsg) do 
            RemoveBlip(v)
        end
        blipsg = {}
    end
    if isalerted2 then 
        isalerted2 = false 
        for k,v in pairs(blipsg) do 
            RemoveBlip(v)
        end
        blipsg = {}
    end
end, false)

RegisterNetEvent("syn_underground:recalert2")
AddEventHandler("syn_underground:recalert2", function(blipxy,string)
    isalerted2 = true 
    local blipx =  N_0x554d9d53f696d002(1664425300, blipxy.x, blipxy.y, blipxy.z)
    SetBlipScale(blipx, 0.2)
    SetBlipSprite(blipx, 639638961, 1) 
    Citizen.InvokeNative(0x9CB1A1623062F402, blipx, string)
    Citizen.InvokeNative(0x662D364ABF16DE2F,blipx,0x6F85C3CE)
    table.insert(blipsg, blipx)
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if isalerted2 then 
            drawtext(Config.language.hideoutraided, 0.15, 0.19, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
            drawtext(Config.language.dothis..Config.removealertcommand..Config.language.removenot, 0.15, 0.22, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
        end
    end
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if isalerted then 
            drawtext(Config.language.crimreport, 0.15, 0.19, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
            drawtext(Config.language.dothis..Config.removealertcommand..Config.language.removenot, 0.15, 0.22, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
        end
    end
end)

RegisterNetEvent("syn_underground:relocate")
AddEventHandler("syn_underground:relocate", function(id,cost)
    relocateid = id 
    isrelocating = true 
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if isrelocating then 
            drawtext(Config.language.reloccommand..Config.relocatecommand, 0.15, 0.19, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
        end
    end
end)

AddEventHandler("syn_scene:stopscene", function(x)
    allllow = x 
end)


function istownbanned(town)
    for k,v in pairs(Config.towns) do
		if town == GetHashKey(v) then
			return true
		end
	end
	return false
end

RegisterCommand(Config.relocatecommand, function(source, args, rawCommand)
    if isrelocating and allllow then 
        if Config.blocktowns  then 
            local town = Citizen.InvokeNative(0x43AD8FC02B429D33, GetEntityCoords(PlayerPedId()), 1)
            if not istownbanned(town) then 
                isrelocating = false 
                local player = PlayerPedId()
                local coords = json.encode(GetEntityCoords(player))
                TriggerServerEvent("syn_underground:confirmrelocate",relocateid,coords)
            else
                TriggerEvent("vorp:TipBottom", Config.language.tooclosetotown, 4000)
            end
        else
            isrelocating = false 
            local player = PlayerPedId()
            local coords = json.encode(GetEntityCoords(player))
            TriggerServerEvent("syn_underground:confirmrelocate",relocateid,coords)
        end
    end
end, false)
RegisterNetEvent("syn_underground:recalert")
AddEventHandler("syn_underground:recalert", function(blipxy,string)
    isalerted = true 
    local blipx =  N_0x554d9d53f696d002(1664425300, blipxy.x, blipxy.y, blipxy.z)
    SetBlipScale(blipx, 0.2)
    SetBlipSprite(blipx, 639638961, 1) 
    Citizen.InvokeNative(0x9CB1A1623062F402, blipx, string)
    Citizen.InvokeNative(0x662D364ABF16DE2F,blipx,0x6F85C3CE)
    table.insert(blipsg, blipx)
end)

function stillmanagement() 
    MenuData.CloseAll()
    local elements = {
    }
    local v = hideouts[thehideoutid]
    if hideouts[thehideoutid].still.stilllevel == nil then 
        if not hideouts[thehideoutid].missioncooldown then 
            table.insert( elements, {label = Config.language.stillmission1, value = 'mission1' , desc = Config.language.stillmissiondesc})
        end
        table.insert( elements, {label = Config.language.craftstill1, value = 'craftstill1' , desc = Config.language.craftstill1desc})
    elseif hideouts[thehideoutid].still.stilllevel == 1 then 
        if not hideouts[thehideoutid].missioncooldown then 
            table.insert( elements, {label = Config.language.stillmission1, value = 'mission1' , desc = Config.language.stillmissiondesc})
            table.insert( elements, {label = Config.language.stillmission2, value = 'mission2' , desc = Config.language.stillmissiondesc})
        end
        table.insert( elements, {label = Config.language.craftstill2, value = 'craftstill2' , desc = Config.language.craftstill1desc2})
    elseif hideouts[thehideoutid].still.stilllevel == 2 or hideouts[thehideoutid].still.stilllevel == 3 then 
        if not hideouts[thehideoutid].missioncooldown then 
            table.insert( elements, {label = Config.language.stillmission2, value = 'mission2' , desc = Config.language.stillmissiondesc})
            table.insert( elements, {label = Config.language.stillmission3, value = 'mission3' , desc = Config.language.stillmissiondesc})
        end
        if hideouts[thehideoutid].still.stilllevel == 2 then 
            table.insert( elements, {label = Config.language.craftstill3, value = 'craftstill3' , desc = Config.language.craftstill1desc3})
        end
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.stillmangmenu,
		subtext    = Config.language.managehideout,
		align    = 'top-left',
		elements = elements,
        lastmenu = "openmanagementmenu",

	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        end
        if data.current.value == "mission1" then 
            existshacktostart = true 
            missiontype = 1
            TriggerEvent("vorp:TipBottom", Config.language.exitstart, 4000)
            TriggerServerEvent("syn_underground:missioncooldown",thehideoutid)
            MenuData.CloseAll()
            inmenu = false 
            TriggerServerEvent("syn_underground:exitmenu",thehideoutid)
            ClearPedTasksImmediately(PlayerPedId())
            SetEntityCoordsNoOffset(PlayerPedId(), StartingCoords.x, StartingCoords.y, StartingCoords.z)
        end
        if data.current.value == "mission2" then 
            existshacktostart = true 
            missiontype = 2
            TriggerEvent("vorp:TipBottom", Config.language.exitstart, 4000)
            TriggerServerEvent("syn_underground:missioncooldown",thehideoutid)
            MenuData.CloseAll()
            inmenu = false 
            TriggerServerEvent("syn_underground:exitmenu",thehideoutid)

            ClearPedTasksImmediately(PlayerPedId())
            SetEntityCoordsNoOffset(PlayerPedId(), StartingCoords.x, StartingCoords.y, StartingCoords.z)
        end
        if data.current.value == "mission3" then 
            existshacktostart = true 
            missiontype = 3
            TriggerEvent("vorp:TipBottom", Config.language.exitstart, 4000)
            TriggerServerEvent("syn_underground:missioncooldown",thehideoutid)
            MenuData.CloseAll()
            inmenu = false 
            TriggerServerEvent("syn_underground:exitmenu",thehideoutid)

            ClearPedTasksImmediately(PlayerPedId())
            SetEntityCoordsNoOffset(PlayerPedId(), StartingCoords.x, StartingCoords.y, StartingCoords.z)
        end
        if data.current.value == "craftstill1" then 
            stillcraft("1")
        end
        if data.current.value == "craftstill2" then 
            stillcraft("2")
        end
        if data.current.value == "craftstill3" then 
            stillcraft("3")
        end
	end,
	function(data, menu)
		menu.close()
	end)
end

function stillcraft(x) 
    MenuData.CloseAll()
    local elements = {
    }
    local v = hideouts[thehideoutid]
    local stillinfo = Config.stilltypes[x]
    for k,v in pairs(stillinfo.parts) do 
        table.insert( elements, {label = v.label, value = '' , desc = "<div style='display: flex;align-items: center;justify-content: space-evenly;flex-direction: column;align-content: center;'<p>"..v.amount.."</p></center> <img style='max-height: 50px;max-width: 50px;' src='"..Config.invpath..""..v.name..".png'></div>"})
    end
    table.insert( elements, {label = Config.language.craftstillx, value = 'craft' , desc = ""})

    MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.stillmangmenu,
		subtext    = Config.language.managehideout,
		align    = 'top-left',
		elements = elements,
        lastmenu = "stillmanagement",

	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        end
        if data.current.value == "craft" then
            TriggerServerEvent("syn_underground:stillcrafting",stillinfo,thehideoutid) 
            openmanagementmenu()
        end
	end,
	function(data, menu)
		menu.close()
	end)
end

function confirmmove()
    MenuData.CloseAll()
    local elements = {
        {label = Config.language.yes, value = 'yes' , desc = ""},
        {label = Config.language.no, value = 'no' , desc = ""},

    }
    MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.yousure,
		subtext    = Config.language.movehideout,
		align    = 'top-left',
		elements = elements,
        lastmenu = "logisticmenu",

	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        end
        if(data.current.value == 'yes') then 
            MenuData.CloseAll()
            inmenu = false 
            TriggerServerEvent("syn_underground:exitmenu",thehideoutid)

            ClearPedTasksImmediately(PlayerPedId())
            SetEntityCoordsNoOffset(PlayerPedId(), StartingCoords.x, StartingCoords.y, StartingCoords.z)
            Wait(500)
            TriggerServerEvent("syn_underground:checkcash",thehideoutid)
        end
        if(data.current.value == 'no') then 
            openmanagementmenu()
        end
    end,
	function(data, menu)
		menu.close()
	end)
end
function confirmmenu3(charidx)
    MenuData.CloseAll()
    local elements = {
        {label = Config.language.yes, value = 'yes' , desc = ""},
        {label = Config.language.no,  value = 'no' , desc = ""},

    }
    MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.yousure,
		subtext    = Config.language.removeowner,
		align    = 'top-left',
		elements = elements,
        lastmenu = "removecoownermenu",

	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        end
        if(data.current.value == 'yes') then
            openmanagementmenu() 
            Wait(500)
            TriggerServerEvent("syn_underground:removecoowner",thehideoutid,charidx)
        end
        if(data.current.value == 'no') then 
            openmanagementmenu()
        end
    end,
	function(data, menu)
		menu.close()
	end)
end

function removecoownermenu()
    MenuData.CloseAll()
    local v = hideouts[thehideoutid]
    local elements = {
    }
    for k,g in pairs(v.coowners) do 
        table.insert( elements,  {label = g.name, value = g.charid , desc = Config.language.removeowner})
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.coownermenu,
        subtext    = Config.language.managehideout,
		align    = 'top-left',
		elements = elements,
        lastmenu = "coownermenu",
	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        else
            confirmmenu3(data.current.value)            
        end
	end,
	function(data, menu)
		menu.close()
	end)
end
function coownermenu()
    MenuData.CloseAll()
    local elements = {
        {label = Config.language.addcoowner, value = 'addco' , desc = Config.language.addcoownerdesc},
        {label = Config.language.transferowner, value = 'transowner' , desc = Config.language.transferownerdesc},
        {label = Config.language.removecoowner, value = 'removeco' , desc = Config.language.removecoownerdesc},
    }
    
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.coownermenu,
        subtext    = Config.language.managehideout,
		align    = 'top-left',
		elements = elements,
        lastmenu = "logisticmenu",
	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        end
        if(data.current.value == 'addco') then 
            TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.id, function(cb)
				local descx =     tonumber(cb)
				if descx ~= nil and descx > 0 then
					local id = descx
                    TriggerServerEvent("syn_underground:addcoowner",thehideoutid,id)
                    logisticmenu()
                else
                    logisticmenu()
				end
			end)
        end
        if(data.current.value == 'transowner') then 
            TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.id, function(cb)
				local descx =     tonumber(cb)
				if descx ~= nil and descx > 0 then
					local id = descx
                    TriggerServerEvent("syn_underground:transowner",thehideoutid,id)
                    logisticmenu()
                else
                    logisticmenu()
				end
			end)
        end
        if(data.current.value == 'removeco') then 
            removecoownermenu()
        end
	end,
	function(data, menu)
		menu.close()
	end)
end
function logisticmenu()
    MenuData.CloseAll()
    local elements = {
        {label = Config.language.changename, value = 'changename' , desc = Config.language.changenamedesc..Config.blipnamechangecost},
        {label = Config.language.ledger2, value = 'ledger' , desc = Config.language.manageledger},
        
    }
    local v = hideouts[thehideoutid]
    if v.invlevel == 0 then 
        table.insert( elements,  {label = Config.language.buyinv, value = "buyinv" , desc = Config.language.buyinvdesc})
        invuptype = 1
    else
        table.insert( elements,  {label = Config.language.upinv, value = "buyinv" , desc = Config.language.upinvdesc..v.invslots})
        invuptype = 2
    end
    if v.bookie == 0 then 
        table.insert( elements,  {label = Config.language.buybookie, value = "buybookie" , desc = Config.language.dollar1..Config.bookieprice})
    end
    if charidentifier == v.charidentifier then 
        table.insert( elements,  {label = Config.language.moveshack, value = 'move' , desc = Config.language.cost1..Config.moveshackcost})
        table.insert( elements,  {label = Config.language.coownermenu, value = "coowner" , desc = Config.language.manageco})
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.logimenu,
        subtext    = Config.language.managehideout,
		align    = 'top-left',
		elements = elements,
        lastmenu = "openmanagementmenu",

	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        end
        if(data.current.value == 'coowner') then 
            coownermenu()
        end
        if(data.current.value == 'move') then 
            confirmmove()
        end
        if(data.current.value == 'buyinv') then 
            invupgrade()
        end
        if(data.current.value == 'buybookie') then 
            TriggerServerEvent("syn_underground:buybookie",thehideoutid,Config.bookieprice)
            Wait(1000)
            openmanagementmenu()
        end
        if(data.current.value == 'ledger') then 
            ledgermenu()
        end
        if(data.current.value == 'changename') then 
            TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.name, function(cb) -- findme
                local descx =     tostring(cb)
                if descx ~= nil and descx ~= "" then
                    local shackname = descx
                    TriggerServerEvent("syn_underground:changename",thehideoutid,shackname,Config.blipnamechangecost)
                    MenuData.CloseAll()
                    Wait(1000)
                    openmanagementmenu()
                    TriggerEvent("syn_underground:refreshblips")
                else
                    openmanagementmenu()
                end
            end)
        end
	end,
	function(data, menu)
		menu.close()
	end)
end


function invupgrade()
    MenuData.CloseAll()
    local elements = {

    }
    local ho = hideouts[thehideoutid]
    for k,v in pairs(Config.inventoryupgrade) do 
        if ho.invlevel == v.upgradeid then 
            upgradetitle = k
            addspace = v.space
            if v.cash then 
                table.insert( elements,  {label = Config.language.cashprice..v.amount, value = "cash" , desc = Config.language.cashprice1})
            end
            if v.items then 
                for x,y in pairs(v.itemsreq) do 
                    table.insert( elements,  {label = y.label..Config.language.amountx1..y.amount, value = "item" , desc = Config.language.amountx11})
                end
            end
            table.insert( elements,  {label = Config.language.confirmpurchase, value = "confirm" , desc = ""})
        end
    end
    

    
    
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = upgradetitle,
		subtext    = Config.language.addx1..addspace..Config.language.slotsx1,
		align    = 'top-left',
		elements = elements,
        lastmenu = "logisticmenu",

	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        end
        if(data.current.value == 'confirm') then 
            TriggerServerEvent("syn_underground:upgradeinventory",thehideoutid,upgradetitle)
            Wait(1000)
            openmanagementmenu()
        end
	end,
	function(data, menu)
		menu.close()
	end)
end

function ledgermenu()
    MenuData.CloseAll()
    local elements = {
        {label = Config.language.withdraw, value = 'withdraw' , desc = Config.language.withdraw1},
        {label = Config.language.deposit, value = 'deposit' , desc = Config.language.deposit1},
    }
    
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.ledgermenu,
		subtext    = Config.language.managehideout,
		align    = 'top-left',
		elements = elements,
        lastmenu = "logisticmenu",
	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        end
        if(data.current.value == 'withdraw') then 
            TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.amountx2, function(cb)
				local descx =     tonumber(cb)
				if descx ~= nil and descx > 0 then
					local amount = descx
                    TriggerServerEvent("syn_underground:withdraw",thehideoutid,amount)
                else
                    logisticmenu()
				end
			end)
        end
        if(data.current.value == 'deposit') then 
            TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.amountx2, function(cb)
				local descx =     tonumber(cb)
				if descx ~= nil and descx > 0 then
					local amount = descx
                    TriggerServerEvent("syn_underground:deposit",thehideoutid,amount)
                else
                    logisticmenu()
				end
			end)
        end
	end,
	function(data, menu)
		menu.close()
	end)
end

function upgradesmenu()
    MenuData.CloseAll()
    local elements = {
    }
    for k,v in pairs(Config.upgradescatagory) do 
        table.insert( elements,  {label = v, value = v , desc = v})
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.upmenu,
		subtext    = Config.language.managehideout,
		align    = 'top-left',
		elements = elements,
        lastmenu = "openmanagementmenu",
	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        end
        if data.current.value  then
            upgradesmenu2(data.current.value)
		end
		
	end,
	function(data, menu)
		menu.close()
	end)
end

function upgradesmenu2(cata)
    MenuData.CloseAll()
    local elements = {
    }
    local y = hideouts[thehideoutid]
    for g,m in pairs(y.upgrades) do 
        if g == cata then 
            table.insert( elements,  {label = Config.language.remup, value = 'remove' , desc = Config.language.remupdesc})
        end
    end
    for k,v in pairs(Config.upgrades) do 
        local y = hideouts[thehideoutid]
        if next(y.upgrades) == nil then 
            if cata == v.tag then  
                table.insert( elements,  {label = v.label..Config.language.price1..v.price, value = v.hash , desc = v.price})
            end
        else
            if y.upgrades[v.tag] ~= v.hash then 
                if cata == v.tag then 
                    table.insert( elements,  {label = v.label..Config.language.price1..v.price, value = v.hash , desc = v.price})
                end
            end
        end
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = "Upgrades Menu",
		subtext    = "Manage Hideout",
		align    = 'top-left',
		elements = elements,
        lastmenu = "upgradesmenu",

	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        
        elseif(data.current.value == 'remove') then 
            local v = hideouts[thehideoutid]
            local tabletosend = v.upgrades
            local keytosend = cata
            TriggerServerEvent("syn_underground:removeupgrade",thehideoutid,tabletosend,keytosend)
            upgradesmenu() 
        else
            local v = hideouts[thehideoutid]
            local tabletosend = v.upgrades
            local keytosend = cata
            local price = data.current.desc
            local hash = data.current.value
            TriggerServerEvent("syn_underground:buyupgrade",thehideoutid,tabletosend,keytosend,price,hash)
            upgradesmenu()
		end
	end,
	function(data, menu)
		menu.close()
	end)
end

function thememenu()
    MenuData.CloseAll()
	local elements = {}
    local y = hideouts[thehideoutid]
    for k,v in pairs(Config.themes) do 
        if y.theme ~= v.hash then 
            table.insert( elements,  {label = v.label, value = k , desc = Config.language.pricex..v.price})
        end 
    end   
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.upmenu,
		subtext    = Config.language.managehideout,
		align    = 'top-left',
		elements = elements,
        lastmenu = "openmanagementmenu",
	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        end        
		if data.current ~= "backup" then 
            TriggerServerEvent("syn_underground:buytheme",thehideoutid,Config.themes[data.current.value].price,Config.themes[data.current.value].hash)
            openmanagementmenu()
		end
		
	end,
	function(data, menu)
		menu.close()
	end)
end

function zoneselect()
	MenuData.CloseAll()
	local elements = {
		{label = Config.language.lemoyne, value = 'lemoyne' , desc = Config.language.zone},
		--[[ {label = "Cattail Pond", value = 'cattail_pond' , desc = "zone"},
		{label = "New Austin", value = 'new_austin' , desc = "zone"},
		{label = "Hanover", value = 'hanover' , desc = "zone"},
		{label = "Manzanita Post", value = 'manzanita_post' , desc = "zone"}, ]]
	}
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.createhideout,
		subtext    = "",
		align    = 'top-left',
		elements = elements,
        lastmenu = "createhideout",
	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
		else 
            zone = data.current.value
            createhideout()
		end
		
	end,
	function(data, menu)
		menu.close()
	end)
end

function createhideout()
	MenuData.CloseAll()
	local elements = {
		{label = Config.language.price2, value = 'price' , desc = Config.language.price2desc},
		--{label = "Zone", value = 'zone' , desc = "zone"},
		{label =  Config.language.name, value = 'name' , desc = Config.language.namedesc},
		{label = Config.language.confirm, value = 'confirm' , desc = Config.language.confirmxdesc},
	}
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.createhideout,
		subtext    = "",
		align    = 'top-left',
		elements = elements,
	},
	function(data, menu)
		if(data.current.value == 'price') then 
            TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.price2, function(cb)
				local descx =     tonumber(cb)
				if descx ~= nil and descx > 0 then
					price = descx
				end
			end)
		end
        if(data.current.value == 'name') then 
            TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.name, function(cb)
				local descx =     tostring(cb)
				if descx ~= nil and descx ~= "" then
					shackname = descx
				end
			end)
		end
		if(data.current.value == 'zone') then 
			zoneselect()
		end
		if(data.current.value == 'confirm') then
            if price ~= nil and zone ~= nil and shackname ~= nil then 
			    MenuData.CloseAll()
                local player = PlayerPedId()
                local coords = json.encode(GetEntityCoords(player))
                local zone = 'lemoyne'
                TriggerServerEvent("syn_underground:create",coords,zone,price,shackname)
            else
                TriggerEvent("vorp:TipBottom", Config.language.ensureoptions, 4000)
            end
		end
	end,
	function(data, menu)
		menu.close()
	end)
end


RegisterNetEvent('syn_underground:cleanup')
AddEventHandler('syn_underground:cleanup', function()
	Wait(5000)
    for k,v in pairs(createdfighters) do 
		DeletePed(v)
	end
    pot = 0
    oddsa = 0
    oddsb = 0 
    fighter = ""
    betx = 0
    inthefight = false 
    createdfighters = {}
    pedA = nil 
    pedB = nil 
    fight = false
end)

function startfight()
	Wait(5000)
    SetRelationshipBetweenGroups(5, GetPedRelationshipGroupHash(pedA), GetPedRelationshipGroupHash(pedB))
	ClearPedTasks(pedA)
	ClearPedTasks(pedB)
	FreezeEntityPosition(pedA, false) 
	FreezeEntityPosition(pedB, false) 
	SetPedCombatMovement(pedA,3)
	SetPedCombatMovement(pedB,3)
	SetPedCombatAttributes(pedA,46 , true)
	SetPedCombatAttributes(pedB,46 , true)
	SetPedCombatAbility(pedA,CAL_PROFESSIONAL)
	SetPedCombatAbility(pedB,CAL_PROFESSIONAL)
    TaskCombatPed(pedA, pedB,0,16)
	TaskCombatPed(pedB, pedA,0,16)
	fight = true 
end

function resumefight()
    Wait(500)
    TaskCombatPed(pedA, pedB,0,16)
	TaskCombatPed(pedB, pedA,0,16)
end

Citizen.CreateThread(function()
	while true do
	  Citizen.Wait(10)
		if fight then
            local coords1 = GetEntityCoords(pedA)
            local coords2 = GetEntityCoords(pedB)
            local dist = GetDistanceBetweenCoords(coords1,coords2,false)
            if dist > 1.25 then 
                ClearPedTasks(pedA)
	            ClearPedTasks(pedB)
                SetEntityCoords(pedA, Config.Shacks[zonex].bookieaiA.x, Config.Shacks[zonex].bookieaiA.y, Config.Shacks[zonex].bookieaiA.z- 1.0)
                SetEntityHeading(pedA, Config.Shacks[zonex].bookieaiA.h)
                SetEntityCoords(pedB, Config.Shacks[zonex].bookieaiB.x, Config.Shacks[zonex].bookieaiB.y, Config.Shacks[zonex].bookieaiB.z- 1.0)
                SetEntityHeading(pedB, Config.Shacks[zonex].bookieaiB.h)
                resumefight()
            end
            DrawText3D( coords1.x, coords1.y, coords1.z,"A")
            DrawText3D( coords2.x, coords2.y, coords2.z,"B")
			if IsEntityDead(pedA) then 
				if GetPedCauseOfDeath(pedA) == -1569615261 then 
					winner = "B"
					TriggerServerEvent("syn_underground:fightfinished",winner,thehideoutid)
				else
					TriggerEvent("vorp:TipBottom", Config.language.fightstopped, 4000)
					TriggerServerEvent("syn_underground:Interupted",thehideoutid)
				end
				fight = false 
			elseif IsEntityDead(pedB) then 
				if GetPedCauseOfDeath(pedB) == -1569615261 then 
					winner = "A"
					TriggerServerEvent("syn_underground:fightfinished",winner,thehideoutid)
				else
					TriggerEvent("vorp:TipBottom", Config.language.fightstopped2, 4000)
					TriggerServerEvent("syn_underground:Interupted",thehideoutid)
				end
				fight = false 
			end
		end
	end
end)

function spawnped()
	local fighterhealthmin = Config.fighterhealthmin
	local fighterhealthmax = Config.fighterhealthmax
	local pedlist = Config.bookiepedmodels
	local pedvariants = keysx(pedlist)
	local random1 = math.random(1,pedvariants)
    local ped = pedlist[random1]
	local hashModel = GetHashKey(ped)
	local pedHP = math.random(fighterhealthmin,fighterhealthmax)
	if IsModelValid(hashModel) then
		RequestModel(hashModel)
		while not HasModelLoaded(hashModel) do                
			Wait(100)
		end
	end
    local v = Config.Shacks[zonex]
    local npc = 0
	while npc == 0 do
		npc = CreatePed(hashModel,  v.bookieaiA.x, v.bookieaiA.y, v.bookieaiA.z- 1.0,v.bookieaiA.h, true, true, true, true)
		Wait(500)
	end
	Citizen.InvokeNative(0x283978A15512B2FE, npc, true) 
	FreezeEntityPosition(npc, true) 
	SetPedMaxHealth(npc,pedHP)
	Citizen.InvokeNative(0x166E7CF68597D8B5,npc, pedHP)
	Citizen.InvokeNative(0xAC2767ED8BDFAB15,npc, pedHP,0) 
	table.insert(createdfighters, npc)
	pedA = npc
	
	local random2 = math.random(1,pedvariants)
    local ped2 = pedlist[random2]
	local hashModel = GetHashKey(ped2)
	local pedHP = math.random(fighterhealthmin,fighterhealthmax)
	if IsModelValid(hashModel) then 
		RequestModel(hashModel)
		while not HasModelLoaded(hashModel) do                
			Wait(100)
		end
	end
    local npc2 = 0
	while npc2 == 0 do
        npc2 = CreatePed(hashModel,  v.bookieaiB.x, v.bookieaiB.y, v.bookieaiB.z- 1.0,v.bookieaiB.h, true, true, true, true)
		Wait(500)
	end
	Citizen.InvokeNative(0x283978A15512B2FE, npc2, true) 
	FreezeEntityPosition(npc2, true) 
	SetPedMaxHealth(npc2,pedHP)
	Citizen.InvokeNative(0x166E7CF68597D8B5,npc2, pedHP)
	Citizen.InvokeNative(0xAC2767ED8BDFAB15,npc2, pedHP,0) 
	table.insert(createdfighters, npc2)
	pedB = npc2
end


RegisterNetEvent('syn_underground:getpot')
AddEventHandler('syn_underground:getpot', function(potx,fightera,fighterb)
	MenuData.CloseAll()
    pot = potx
    oddsa = fightera
    oddsb = fighterb
end)

RegisterNetEvent('syn_underground:recfightstat')
AddEventHandler('syn_underground:recfightstat', function(stat)
	inthefight = stat
end)
RegisterNetEvent('syn_underground:setfighting')
AddEventHandler('syn_underground:setfighting', function(stat)
	inthefight = stat
end)
function openmoonshinemenu()  
	MenuData.CloseAll()
	local elements = {	
	}
    if mashtimer == 0 then
        table.insert( elements, {label = Config.language.mash, value = 'mash' , desc = Config.language.mashdesc} )
    end
    if stilltimer == 0 then
        table.insert( elements, {label = Config.language.stillx, value = 'still' , desc = Config.language.stillxdesc} )
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.moonshinemenu,
		subtext    = Config.language.stilllevel..stilllevel,
		align    = 'top-left',
		elements = elements,
	},
	function(data, menu)
		if(data.current.value == 'mash') then
			mashmenu()
		end
		if(data.current.value == 'still') then
			stillmenux()
		end
	end,
	function(data, menu)
		menu.close()
	end)
end
function stillmenux()  
	MenuData.CloseAll()
	local elements = {
	}
    for k,v in pairs(Config.distillrecipies) do 
        if v.distill then 
            if stilllevel >= v.stilllevel then 
                table.insert( elements, {label = v.label, value = v , desc = Config.language.stillxdesc} )
            end
        end
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.distillmenu,
		subtext    = "",--'Cooks Remaining: '..hideouts[thehideoutid].still.cooks,
		align    = 'top-left',
		elements = elements,
        lastmenu = "openmoonshinemenu",
	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        else
            distilling(data.current.value)
        end
	end,
	function(data, menu)
		menu.close()
	end)
end
function distilling(x)  
	MenuData.CloseAll()
	local elements = {
	}
    for k,v in pairs(x.items) do 
        table.insert( elements, {label = v.label, value = "" , desc = "<div style='display: flex;align-items: center;justify-content: space-evenly;flex-direction: column;align-content: center;'<p>"..v.amount.."</p></center> <img style='max-height: 50px;max-width: 50px;' src='"..Config.invpath..""..v.name..".png'></div>"} )
    end
    table.insert( elements, {label = Config.language.confirm, value = "confirm" , desc = Config.language.confirm} )
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.distillrecipie,
		subtext    = '',
		align    = 'top-left',
		elements = elements,
        lastmenu = "stillmenux",
	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        elseif data.current.value == "confirm" then 
            TriggerServerEvent("syn_underground:checkforstill",x,thehideoutid)
            MenuData.CloseAll()
            Wait(10000)
            inmenu2 = false 
            TriggerServerEvent("syn_underground:exitmenu",thehideoutid)

        end
	end,
	function(data, menu)
		menu.close()
	end)
end
function mashmenu()  
	MenuData.CloseAll()
	local elements = {
	}
    for k,v in pairs(Config.mashrecipies) do 
        if stilllevel >= v.stilllevel then 
            table.insert( elements, {label = v.label, value = v , desc = Config.language.mashdesc} )
        end
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.mashmenuu,
		subtext    = '',
		align    = 'top-left',
		elements = elements,
        lastmenu = "openmoonshinemenu",
	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        else
            mashing(data.current.value)
        end
	end,
	function(data, menu)
		menu.close()
	end)
end
function mashing(x)  
	MenuData.CloseAll()
	local elements = {
	}
    for k,v in pairs(x.items) do 
        table.insert( elements, {label = v.label, value = "" , desc = "<div style='display: flex;align-items: center;justify-content: space-evenly;flex-direction: column;align-content: center;'<p>"..v.amount.."</p></center> <img style='max-height: 50px;max-width: 50px;' src='"..Config.invpath..""..v.name..".png'></div>"} )
    end
    table.insert( elements, {label = Config.language.confirm, value = "confirm" , desc = Config.language.confirm} )
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.mashrecipie,
		subtext    = '',
		align    = 'top-left',
		elements = elements,
        lastmenu = "mashmenu",
	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        elseif data.current.value == "confirm" then 
            TriggerServerEvent("syn_underground:checkformash",x,thehideoutid)
            MenuData.CloseAll()
            Wait(10000)
            inmenu2 = false 
            TriggerServerEvent("syn_underground:exitmenu",thehideoutid)

        end
	end,
	function(data, menu)
		menu.close()
	end)
end
RegisterNetEvent('syn_underground:mashanimation')
AddEventHandler('syn_underground:mashanimation', function()
    SetEntityCoords(PlayerPedId(), Config.Shacks[zonex].mashanim.x, Config.Shacks[zonex].mashanim.y, Config.Shacks[zonex].mashanim.z- 1.0)
    SetEntityHeading(PlayerPedId(), Config.Shacks[zonex].mashanim.h)
    doanimation("script_re@moonshine_camp@player_put_in_herbs", "put_in_still", 2)
end)
RegisterNetEvent('syn_underground:stillanimation')
AddEventHandler('syn_underground:stillanimation', function()
    SetEntityCoords(PlayerPedId(), Config.Shacks[zonex].stillanim.x, Config.Shacks[zonex].stillanim.y, Config.Shacks[zonex].stillanim.z- 1.0)
    SetEntityHeading(PlayerPedId(), Config.Shacks[zonex].stillanim.h)
    doanimation("script_re@moonshine_camp@player_put_in_herbs", "put_in_still", 2)
end)

function bookiemenu()
	MenuData.CloseAll()
    local v =  hideouts[thehideoutid]
	local elements = {
		
		{label = Config.language.placebet, value = 'placebet' , desc = ""},
		{label = Config.language.potx12..pot, value = 'pot' , desc = ""},
		{label = Config.language.odds..oddsa.."/"..oddsb, value = 'pot' , desc = ""},
	}
	if pot > 0 and (charidentifier == v.charidentifier or containscoowner(v.coowners, charidentifier)) and not inthefight then 
		table.insert( elements,
		 {label = Config.language.startthefight, value = 'fightstart' , desc = ""}
	 	)
	end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = 'Betting Menu',
		subtext    = '',
		align    = 'top-left',
		elements = elements,
	},
	function(data, menu)
		if(data.current.value == 'fightstart') then
			MenuData.CloseAll()
			TriggerServerEvent("syn_underground:fitchfightstatus",thehideoutid)
			Wait(100)
			if not inthefight then 
				for k,v in pairs(createdfighters) do 
					DeletePed(v)
				end
				TriggerServerEvent("syn_underground:fightstart",thehideoutid)
				spawnped()
				startfight()
			else
				TriggerEvent("vorp:TipBottom", Config.language.fightprogress, 4000)
			end
		end
		if(data.current.value == 'placebet') then
			MenuData.CloseAll()
            TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.youbet, function(cb)
				betx =     tonumber(cb)
				if betx ~= nil and betx ~= 0 and betx > 0 then
					fighterselection()
				else 
					bookiemenu()
				end	
		   end)
		end
	end,
	function(data, menu)
		menu.close()
	end)
end

function fighterselection()
	MenuData.CloseAll()
	local elements = {
		{label = Config.language.fightera, value = 'A' , desc = ""},
		{label = Config.language.fighterb, value = 'B' , desc = ""},
	}
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.selectfight,
		subtext    = '',
		align    = 'top-left',
		elements = elements,
        lastmenu = "bookiemenu",

	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        end
		if(data.current.value == 'A') then
			fighter = "A"
			confirmmenu()
		end
		if(data.current.value == 'B') then
			fighter = "B"
			confirmmenu()
		end
	end,
	function(data, menu)
		menu.close()
	end)
end

function confirmmenu()
	MenuData.CloseAll()
	local elements = {
		{label = Config.language.yes, value = 'yes' , desc = ""},
		{label = Config.language.no, value = 'no' , desc = ""},
	}
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.youbet2..betx,
		subtext    = Config.language.sure2,
		align    = 'top-left',
		elements = elements,
        lastmenu = "fighterselection",

	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        end
		if(data.current.value == 'yes') then
			TriggerServerEvent("syn_underground:placedbet",betx,fighter,thehideoutid)
			Wait(500)
			MenuData.CloseAll()
		end
		if(data.current.value == 'no') then
			bookiemenu()
		end
	end,
	function(data, menu)
		menu.close()
	end)
end