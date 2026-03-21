local ppson = false

RegisterNetEvent('bulgar:butelka_napelnij')
AddEventHandler('bulgar:butelka_napelnij', function(typ)
	local coords = GetEntityCoords(PlayerPedId())
	local Water = Citizen.InvokeNative(0x5BA7A68A346A5A91,coords.x+3, coords.y+3, coords.z)
	
	if Water == 231313522 or 2005774838 or -1287619521 or -196675805 or -1308233316 or 1755369577 or -2040708515 or -557290573 or -247856387 or 370072007 or -1504425495 or -1369817450 or -1356490953 or -1781130443 or -1300497193 or -1276586360 or -1410384421 or 650214731 or 592454541 or -804804953 or 1245451421 or -218679770 or -1817904483 or -811730579 or -1229593481 or -105598602 then
		if IsEntityInWater(PlayerPedId()) then
				TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 5000, true, false, false, false)
				TriggerEvent("vorp:TipRight", "Filling up the water", 5000)
				Citizen.Wait(5000)
				ClearPedTasksImmediately(PlayerPedId())	
				
				wynik = math.random(1,2)
				
				if typ == 1 then
					TriggerServerEvent("dodaj:brudna", wynik)
				elseif typ == 2 then
					TriggerServerEvent("dodaj:brudna2", wynik)				
				end
		else
			TriggerEvent("vorp:TipRight", "You can't do that here!", 8000)
			TriggerServerEvent("oddaj:butelka")
		end
	else
		TriggerEvent("vorp:TipRight", "You can't do that here!", 8000)
		
		if typ == 1 then
			TriggerServerEvent("oddaj:butelka")
		elseif typ == 2 then
			TriggerServerEvent("oddaj:butelka2")	
		end
	end
end)

RegisterNetEvent('bulgar:butelka_oddaj')
AddEventHandler('bulgar:butelka_oddaj', function()
	TriggerServerEvent("oddaj:butelka")
end)

RegisterNetEvent('bulgar:butelka_oddaj3')
AddEventHandler('bulgar:butelka_oddaj3', function()
	TriggerServerEvent("oddaj:butelka2")
end)

RegisterNetEvent('bulgar:filtro_woda')
AddEventHandler('bulgar:filtro_woda', function()
--[[ 	local stamina = GetAttributeCoreValue(PlayerPedId(), 1)
	local newStamina = stamina + 150

	Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(), 1, newStamina) -- Give some effect after drink clear water.
 ]]	TriggerEvent('fred_meta:consume', Config.food,Config.thirst,Config.metabolism,Config.innercorestamina,Config.innercorestaminagold,Config.outercorestaminagold,Config.innercorehealth,Config.innercorehealthgold,Config.outercorehealthgold)
	--[[ TriggerEvent("vorpmetabolism:changeValue", "Thirst", 200) -- Give some Thrist after drink clear water.
	TriggerEvent("vorpmetabolism:changeValue", "Metabolism", 10) -- Give some Metabolism after drink clear water. ]]
	
	animrequest()
end)

RegisterNetEvent('bulgar:brudna_woda')
AddEventHandler('bulgar:brudna_woda', function()
	local zatrucie = math.random(1,4)
	
	if zatrucie == 1 then
		--[[ TriggerEvent("vorpmetabolism:changeValue", "Hunger", -100) -- lose some Hunger after u get sick.
		TriggerEvent("vorpmetabolism:changeValue", "Thirst", -50) -- lose some Thirst after u get sick.
		TriggerEvent("vorpmetabolism:changeValue", "Metabolism", -15) -- lose some Metabolism after u get sick.
		 ]]
		 TriggerEvent('fred_meta:consume', Config.food1,Config.thirst1,Config.metabolism1,Config.innercorestamina1,Config.innercorestaminagold1,Config.outercorestaminagold1,Config.innercorehealth1,Config.innercorehealthgold1,Config.outercorehealthgold1)

		TriggerEvent("vorp:TipRight", "You have poisoned yourself!", 8000)
		TriggerEvent("vorp:TipRight", "Drinking dirty water can result in poisoning!", 8000)
		TriggerEvent("vorp:TipRight", "Get the antidote!", 8000)
		
		animrequest()
		
		Wait(6000)
		
		TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_VOMIT'), 8000, true, false, false, false) -- VOMIT ANIMATION
		
		ppson = true
	else
--[[ 		local stamina = GetAttributeCoreValue(PlayerPedId(), 1)
		local newStamina = stamina + 100

		Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(), 1, newStamina) -- Give some effect after drink dirty water.
 ]]		
--[[ 		TriggerEvent("vorpmetabolism:changeValue", "Thirst", 100) -- Give some Thrist after drink dirty water.
		TriggerEvent("vorpmetabolism:changeValue", "Metabolism", 15) -- Give some Metabolism after drink dirty water.
 ]]		TriggerEvent('fred_meta:consume', Config.food,Config.thirst,Config.metabolism,Config.innercorestamina,Config.innercorestaminagold,Config.outercorestaminagold,Config.innercorehealth,Config.innercorehealthgold,Config.outercorehealthgold)
		TriggerEvent("vorp:TipRight", "Drinking dirty water can result in poisoning!", 8000)
		
		animrequest()
	end
end)

function modelrequest(model)
    Citizen.CreateThread(function()
        RequestModel(model)
    end)
end

function animrequest()
	local playerPed = PlayerPedId()
	
	local dict = "amb_rest_drunk@world_human_drinking@female_a@idle_b"
	local anim = "idle_b"
	
	if IsPedMale(playerPed) then
		dict = "amb_rest_drunk@world_human_drinking@male_a@idle_a"
		anim = "idle_a"
	end
	
	local pos = GetEntityCoords(playerPed)
	local prop = GetHashKey("P_BOTTLE008X")
	
	RequestAnimDict(dict)
	
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(10)
	end

	while not HasModelLoaded(prop) do
		Wait(500)
		modelrequest(prop)
	end
	
	local tempObj2 = CreateObject(prop, pos.x, pos.y, pos.z, true, true, false)
	local boneIndex = GetEntityBoneIndexByName(playerPed, "SKEL_R_HAND")
	AttachEntityToEntity(tempObj2, playerPed, boneIndex, 0.05, -0.07, -0.05, -75.0, 60.0, 0.0, true, true, false, true, 1, true)
	TaskPlayAnim(playerPed, dict, anim, 1.0, 8.0, -1, 31, 0, false, false, false)
	Citizen.Wait(4000)
	ClearPedTasks(playerPed)
	DeleteObject(tempObj2)
	SetModelAsNoLongerNeeded(prop)
end

----

local WashGroup = GetRandomIntInRange(0, 0xffffff)
local WashPrompt

function WashPrompt()
    Citizen.CreateThread(function()
        local str ="Wash"
        local wait = 0
        WashPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(WashPrompt, 0x760A9C6F)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(WashPrompt, str)
        PromptSetEnabled(WashPrompt, true)
        PromptSetVisible(WashPrompt, true)
        PromptSetHoldMode(WashPrompt, true)
        PromptSetGroup(WashPrompt, WashGroup)
        PromptRegisterEnd(WashPrompt)
    end)
end

function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str)
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
    SetTextCentre(centre)
    SetTextFontForCurrentCommand(15) 
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
    DisplayText(str, x, y)
end

local DrinkPrompt

function DrinkPrompt()
    Citizen.CreateThread(function()
        local str ="Drink"
        local wait = 0
        DrinkPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(DrinkPrompt, 0xC7B5340A)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(DrinkPrompt, str)
        PromptSetEnabled(DrinkPrompt, true)
        PromptSetVisible(DrinkPrompt, true)
        PromptSetHoldMode(DrinkPrompt, true)
        PromptSetGroup(DrinkPrompt, WashGroup)
        PromptRegisterEnd(DrinkPrompt)
    end)
end
local keys = { ['G'] = 0x760A9C6F, ['S'] = 0xD27782E3, ['W'] = 0x8FD015D8, ['H'] = 0x24978A28, ['G'] = 0x5415BE48, ["ENTER"] = 0xC7B5340A, ['E'] = 0xDFF812F9,["BACKSPACE"] = 0x156F7119 }

Citizen.CreateThread(function()
    WashPrompt()
    DrinkPrompt()
	while true do
		
		local TAJM = 500
		local coords = GetEntityCoords(PlayerPedId())
		local Water = Citizen.InvokeNative(0x5BA7A68A346A5A91,coords.x+3, coords.y+3, coords.z)
		
		if Water == 231313522 or 2005774838 or -1287619521 or -196675805 or -1308233316 or 1755369577 or -2040708515 or -557290573 or -247856387 or 370072007 or -1504425495 or -1369817450 or -1356490953 or -1781130443 or -1300497193 or -1276586360 or -1410384421 or 650214731 or 592454541 or -804804953 or 1245451421 or -218679770 or -1817904483 or -811730579 or -1229593481 or -105598602 then
			TAJM = 0
			if IsPedOnFoot(PlayerPedId()) then
				if IsEntityInWater(PlayerPedId()) then
					if IsControlPressed(0, 0x8AAA0AD4) then
						DrawTxt("Press [B] to wash, [U] to Drink Water", 0.15, 0.02, 0.1, 0.3, true, 255, 255, 255, 255, true, 10000)

						if IsControlJustReleased(0, 0x4CC0E2FE) then
							StartWash("amb_misc@world_human_wash_face_bucket@ground@male_a@idle_d", "idle_l")
            	    	end


            			if IsControlJustReleased(0, 0xD8F73058) then
							zatrucie2 = math.random(1,10)

							ClearPedTasksImmediately(PlayerPedId())
							TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_BUCKET_DRINK_GROUND'), -1, true, false, false, false)
							Citizen.Wait(10000)
							ClearPedTasks(PlayerPedId())
						
							if zatrucie2 == 1 then
								TriggerEvent('fred_meta:consume', Config.food1,Config.thirst1,Config.metabolism1,Config.innercorestamina1,Config.innercorestaminagold1,Config.outercorestaminagold1,Config.innercorehealth1,Config.innercorehealthgold1,Config.outercorehealthgold1)

								TriggerEvent("vorp:TipRight", "You have poisoned yourself!", 8000)
								TriggerEvent("vorp:TipRight", "Drinking dirty water can result in poisoning!", 8000)
								TriggerEvent("vorp:TipRight", "Get the antidote!", 8000)

								TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_VOMIT'), 8000, true, false, false, false) -- VOMIT ANIMATION

								ppson = true
							else
								TriggerEvent('fred_meta:consume', Config.food,Config.thirst,Config.metabolism,Config.innercorestamina,Config.innercorestaminagold,Config.outercorestaminagold,Config.innercorehealth,Config.innercorehealthgold,Config.outercorehealthgold)
								TriggerEvent("vorp:TipRight", "Cool, clear water", 8000)
							end
						end
					end
				end
			end
		else
			TAJM = 500
		end
		Citizen.Wait(TAJM)
	end
end)

StartWash = function(dic, anim)
    LoadAnim(dic)
    TaskPlayAnim(PlayerPedId(), dic, anim, 1.0, 8.0, 5000, 0, 0.0, false, false, false)
    Citizen.Wait(5000)
    ClearPedTasks(PlayerPedId())
    Citizen.InvokeNative(0x6585D955A68452A5, PlayerPedId())
    Citizen.InvokeNative(0x9C720776DAA43E7E, PlayerPedId())
    Citizen.InvokeNative(0x8FE22675A5A45817, PlayerPedId())
end

LoadAnim = function(dic)
    RequestAnimDict(dic)

    while not (HasAnimDictLoaded(dic)) do
        Citizen.Wait(0)
    end
end

RegisterNetEvent('bulgar:apson')
AddEventHandler('bulgar:apson', function()
	ppson = false
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)
		
		if ppson then
			Citizen.Wait(30000) -- VOMIT EVERY 30 SECOND
			
			if ppson then
				TriggerEvent("vorp:TipRight", "You have poisoned yourself!", 8000)
				TriggerEvent("vorp:TipRight", "Get the antidote!", 8000)
				TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_VOMIT'), 8000, true, false, false, false) -- VOMIT ANIMATION
			end	
		end
	end
end)