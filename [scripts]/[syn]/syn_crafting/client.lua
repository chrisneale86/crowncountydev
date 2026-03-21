local iscrafting = false
local playerjob 
local propinfo
local loctitle = 0
local tableofexp = {}
local inmenu = false 
local item = {}
local prompts = GetRandomIntInRange(0, 0xffffff)
local craftbutton
local charid
local steam
local grade 
local discord 
local waitingforreply = false 
local favolist = {}
local adddesc = 0 
local favokeys = {}
TriggerEvent("menuapi:getData",function(call)
    MenuData = call
end)


local craftingx = Config.crafting
Citizen.CreateThread(function()
    Citizen.Wait(500)
    local str = "Craft"
	craftbutton = PromptRegisterBegin()
	PromptSetControlAction(craftbutton, Config.Keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(craftbutton, str)
	PromptSetEnabled(craftbutton, 1)
	PromptSetVisible(craftbutton, 1)
	PromptSetStandardMode(craftbutton,1)
	PromptSetGroup(craftbutton, prompts)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,craftbutton,true)
	PromptRegisterEnd(craftbutton)

end)
function contains(table, element)
    if table ~= 0 then 
        for k, v in pairs(table) do
              if v == element then
                return true
            end
        end
    end
return false
end
function ToInteger(number)
    number = tonumber(number)
    if number ~= nil then 
        if 0 >  number then 
            number = number * -1
        end
        return math.floor(number or error("Could not cast '" .. tostring(number) .. "' to number.'"))
    else
        return 0
    end
end
function wordfilter(msg)
	local string = string.lower(msg)
	for k,v in pairs(Config.bannedwords) do
		if string.match(string, v) then
			return true 
		end
	end
	return false 
end
function craftingmenu2(x,kkey,typeofreturn) 
	MenuData.CloseAll()
	local elements = {

	}
	local catagory = x['Param']['catagory']
    for k,v in pairs(x['Param']['Item']) do 
        local image =  v.name
        local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
        table.insert( elements, {label = imgPath..v.count.." x "..v.label, value = "none", desc = "" })
    end
    adddesc = 0 
    if Config.itemdescription  then 
        table.insert(elements,{label = language.description, value = 0,tag = "adddesc"  ,desc = language.adddesc , type = "slider" , min =0 , max =1, hop= 1})
    end
    if typeofreturn == "favocraftingmenu" then 
        table.insert( elements, {label = language.removefavo, value = "rfavo", desc =language.removefavo2 })
    else
        table.insert( elements, {label = language.addfavo, value = "favo", desc =language.addfavo2 })
    end

    table.insert( elements, {label = language.craft, value = "craft", desc =language.craftitem })
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = language.craftingmenu,
		subtext    = '',
		align    = 'top-left',
		elements = elements,
        itemHeight = "4vh",
		lastmenu = typeofreturn,

	},
	function(data, menu)
		if(data.current == "backup") then
			_G[data.trigger](catagory)
        elseif data.current.tag == "adddesc" then
            adddesc = tonumber(data.current.value)
        elseif data.current.value == "rfavo" then 
            for k,v in pairs(favokeys) do 
                if k == kkey then 
                    table.remove(favokeys,k)
                end
            end
            print(json.encode(favokeys))
            print(json.encode(x))
            
            for k,v in pairs(favolist) do 
                if v['Param']['Reward'][1].name == x['Param']['Reward'][1].name then 
                    table.remove(favolist,k)
                end
            end 
            TriggerServerEvent('syn_crafting:craftingfavo', favokeys)
            favocraftingmenu() 
        elseif data.current.value == "favo" then 
            if not contains(favokeys, kkey) then 
                table.insert(favolist,x)
                table.insert(favokeys,kkey)
                TriggerServerEvent('syn_crafting:craftingfavo', favokeys)
                craftingmenu(catagory)
            else
                TriggerEvent("vorp:TipBottom", language.alreadyadded, 4000)
            end
        elseif data.current.value == "craft" then 
            MenuData.CloseAll() 
            local count = nil
            local checkfordesc 
			TriggerEvent("syn_inputs:sendinputs",language.confirm,language.amount, function(cb)
                count = ToInteger(tonumber(cb))
                if count ~= nil and count ~= 'close' and count ~= '' and count ~= 0 and count > 0 then
                    if adddesc == 0 then 
                        inmenu = false 
                        FreezeEntityPosition(PlayerPedId(),false)
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('syn_crafting:craftingalg', x['Param'],count,tableofexp)
                        checkfordesc = false 
                  
                    else
                        checkfordesc = true 
                    end

                else
                    inmenu = false 
                    FreezeEntityPosition(PlayerPedId(),false)
                    ClearPedTasks(PlayerPedId())
                    TriggerEvent("vorp:TipBottom", language.invalidamount, 4000)
                    
                end
            end)
            while checkfordesc == nil do
                Wait(100)
            end
            if checkfordesc and count then 
                TriggerEvent("syn_inputs:sendinputs",language.confirm,language.youdesc, function(test)
                    local description = tostring(test)
                    if not wordfilter(description) then 
                        TriggerServerEvent('syn_crafting:craftingalg', x['Param'],count,tableofexp,description)
                    else
                        TriggerEvent("vorp:TipBottom", language.cantusewords, 4000)
                    end                    
                end)
                inmenu = false 
                FreezeEntityPosition(PlayerPedId(),false)
                ClearPedTasks(PlayerPedId())
            end
            
		end
	end,
	function(data, menu)
		menu.close()
	end)
end

function craftingmenu(datacatagory) 
	MenuData.CloseAll()
	local elements = {
	}
    if loctitle == 0 then 
        for i = 1, #craftingx do
            local catagory = craftingx[i]['Param']['catagory']
            if catagory == datacatagory then 
                local requiredexp = craftingx[i]['Param']['expreq']
                if tableofexp[catagory] >= requiredexp then 
                    if craftingx[i]['Param']['location'] == 0 then
                        if contains(craftingx[i]['Param']['prop'], propinfo) or craftingx[i]['Param']['prop'] == 0 then
                            if craftingx[i]['Param']['Job'] ~= 0 and craftingx[i]['Param']['uinuqesteam'] ~= nil and (contains(craftingx[i]['Param']['Job'], playerjob) or contains(craftingx[i]['Param']['uinuqesteam'], steam)) then 
                                if contains(craftingx[i]['Param']['uinuqesteam'], steam) then 
                                    local image =  craftingx[i]['Param']['Reward'][1]['name']
                                    local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
                                    table.insert( elements, {label = imgPath..craftingx[i]['Param']['Reward'][1]['count'].." x "..craftingx[i]['Text'], value = craftingx[i],key = i, desc =craftingx[i]['Desc'] })
                                else
                                    if craftingx[i]['Param']['gradelock'] ~= nil then 
                                        if grade >= craftingx[i]['Param']['gradelock'] then 
                                            local image =  craftingx[i]['Param']['Reward'][1]['name'] 
                                            local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
        
                                            table.insert( elements, {label = imgPath..craftingx[i]['Param']['Reward'][1]['count'].." x "..craftingx[i]['Text'], value = craftingx[i],key = i, desc =craftingx[i]['Desc'] })
                                        end
                                    else
                                        local image =  craftingx[i]['Param']['Reward'][1]['name'] 
                                        local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
                                        table.insert( elements, {label = imgPath..craftingx[i]['Param']['Reward'][1]['count'].." x "..craftingx[i]['Text'], value = craftingx[i],key = i, desc =craftingx[i]['Desc'] })
                                    end
                                end
                            elseif craftingx[i]['Param']['uinuqesteam'] ~= nil then 
                                if contains(craftingx[i]['Param']['uinuqesteam'], steam) then 
                                    local image =  craftingx[i]['Param']['Reward'][1]['name'] 
                                        local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
                                    table.insert( elements, {label = imgPath..craftingx[i]['Param']['Reward'][1]['count'].." x "..craftingx[i]['Text'], value = craftingx[i],key = i, desc =craftingx[i]['Desc'] })
                                end
                            elseif craftingx[i]['Param']['discorduniq'] ~= nil then 
                                if contains(craftingx[i]['Param']['discorduniq'], discord) then 
                                    local image =  craftingx[i]['Param']['Reward'][1]['name'] 
                                        local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
                                    table.insert( elements, { label = imgPath..craftingx[i]['Param']['Reward'][1]['count'].." x "..craftingx[i]['Text'], value = craftingx[i],key = i, desc =craftingx[i]['Desc'] })
                                end
                            elseif craftingx[i]['Param']['uinuqe'] ~= nil then 
                                if contains(craftingx[i]['Param']['uinuqe'], charid) then 
                                    local image =  craftingx[i]['Param']['Reward'][1]['name'] 
                                        local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
                                    table.insert( elements, {label = imgPath..craftingx[i]['Param']['Reward'][1]['count'].." x "..craftingx[i]['Text'], value = craftingx[i],key = i, desc =craftingx[i]['Desc'] })
                                end
                            elseif craftingx[i]['Param']['Job'] ~= 0 and contains(craftingx[i]['Param']['Job'], playerjob) then 
                                if craftingx[i]['Param']['gradelock'] ~= nil then 
                                    if grade >= craftingx[i]['Param']['gradelock'] then 
                                        local image =  craftingx[i]['Param']['Reward'][1]['name'] 
                                        local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
                                        table.insert( elements, {label = imgPath..craftingx[i]['Param']['Reward'][1]['count'].." x "..craftingx[i]['Text'], value = craftingx[i],key = i, desc =craftingx[i]['Desc'] })
                                    end
                                else
                                    local image =  craftingx[i]['Param']['Reward'][1]['name'] 
                                        local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
                                    table.insert( elements, {label = imgPath..craftingx[i]['Param']['Reward'][1]['count'].." x "..craftingx[i]['Text'], value = craftingx[i],key = i, desc =craftingx[i]['Desc'] })
                                end
                            elseif craftingx[i]['Param']['Job'] == 0 then
                                local image =  craftingx[i]['Param']['Reward'][1]['name'] 
                                local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
                                table.insert( elements, {label = imgPath..craftingx[i]['Param']['Reward'][1]['count'].." x "..craftingx[i]['Text'], value = craftingx[i],key = i, desc =craftingx[i]['Desc'] })
                            end
                        end
                    end
                end
            end
        end
    else
        for i = 1, #craftingx do
            local catagory = craftingx[i]['Param']['catagory']
            if catagory == datacatagory then 
                local requiredexp = craftingx[i]['Param']['expreq']
                if tableofexp[catagory] >= requiredexp then 
                    if contains(craftingx[i]['Param']['location'], loctitle) then
                        if contains(craftingx[i]['Param']['Job'], playerjob)  then 
                            if craftingx[i]['Param']['gradelock'] ~= nil then 
                                if grade >= craftingx[i]['Param']['gradelock'] then 
                                    local image =  craftingx[i]['Param']['Reward'][1]['name'] 
                                local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
                                    table.insert( elements, {label = imgPath..craftingx[i]['Param']['Reward'][1]['count'].." x "..craftingx[i]['Text'], value = craftingx[i],key = i, desc =craftingx[i]['Desc'] })
                                end
                            else
                                local image =  craftingx[i]['Param']['Reward'][1]['name'] 
                                local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
                                table.insert( elements, {label = imgPath..craftingx[i]['Param']['Reward'][1]['count'].." x "..craftingx[i]['Text'], value = craftingx[i],key = i, desc =craftingx[i]['Desc'] })
                            end
                        elseif  craftingx[i]['Param']['Job'] == 0 then 
                            local image =  craftingx[i]['Param']['Reward'][1]['name'] 
                                local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
                            table.insert( elements, { label = imgPath..craftingx[i]['Param']['Reward'][1]['count'].." x "..craftingx[i]['Text'], value = craftingx[i],key = i, desc = craftingx[i]['Desc']})
                        end
                    end
                end
            end
        end
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    =language.craftingmenu,
		subtext    = '',
		align    = 'top-left',
		elements = elements,
        itemHeight = "4vh",
		lastmenu = "precraftingmenu",

	},
	function(data, menu)
		if(data.current ~= "backup") then
			craftingmenu2(data.current.value,data.current.key,"craftingmenu")
        else
            _G[data.trigger]()
		end
	end,
	function(data, menu)
		menu.close()
	end)
end

function favocraftingmenu() 
	MenuData.CloseAll()
	local elements = {
	}
    for i = 1, #favolist do
        local catagory = favolist[i]['Param']['catagory']
        local requiredexp = favolist[i]['Param']['expreq']
        if tableofexp[catagory] >= requiredexp then 
            if (loctitle == 0 and favolist[i]['Param']['location'] == 0) or contains(favolist[i]['Param']['location'], loctitle) then 
                if contains(favolist[i]['Param']['prop'], propinfo) or favolist[i]['Param']['prop'] == 0 then 
                    if favolist[i]['Param']['Job'] ~= 0 and favolist[i]['Param']['uinuqesteam'] ~= nil and (contains(favolist[i]['Param']['Job'], playerjob) or contains(favolist[i]['Param']['uinuqesteam'], steam)) then 
                        if contains(favolist[i]['Param']['uinuqesteam'], steam) then 
                            local image =  favolist[i]['Param']['Reward'][1]['name']
                                local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
                            table.insert( elements, {label = imgPath..favolist[i]['Param']['Reward'][1]['count'].." x "..favolist[i]['Text'], value = favolist[i],key = i, desc =favolist[i]['Desc'] })
                        else
                            if favolist[i]['Param']['gradelock'] ~= nil then 
                                if grade >= favolist[i]['Param']['gradelock'] then 
                                    local image =  favolist[i]['Param']['Reward'][1]['name']
                                local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
                                    table.insert( elements, { label = imgPath..favolist[i]['Param']['Reward'][1]['count'].." x "..favolist[i]['Text'], value = favolist[i],key = i, desc =favolist[i]['Desc'] })
                                end
                            else
                                local image =  favolist[i]['Param']['Reward'][1]['name']
                                local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"

                                table.insert( elements, { label = imgPath..favolist[i]['Param']['Reward'][1]['count'].." x "..favolist[i]['Text'], value = favolist[i],key = i, desc =favolist[i]['Desc'] })
                            end
                        end
                    elseif favolist[i]['Param']['uinuqesteam'] ~= nil then 
                        if contains(favolist[i]['Param']['uinuqesteam'], steam) then 
                            local image =  favolist[i]['Param']['Reward'][1]['name']
                            local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"

                            table.insert( elements, { label = imgPath..favolist[i]['Param']['Reward'][1]['count'].." x "..favolist[i]['Text'], value = favolist[i],key = i, desc =favolist[i]['Desc'] })
                        end
                    elseif favolist[i]['Param']['discorduniq'] ~= nil then 
                        if contains(favolist[i]['Param']['discorduniq'], discord) then 
                            local image =  favolist[i]['Param']['Reward'][1]['name']
                            local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"

                            table.insert( elements, { label = imgPath..favolist[i]['Param']['Reward'][1]['count'].." x "..favolist[i]['Text'], value = favolist[i],key = i, desc =favolist[i]['Desc'] })
                        end
                    elseif favolist[i]['Param']['uinuqe'] ~= nil then 
                        if contains(favolist[i]['Param']['uinuqe'], charid) then 
                            local image =  favolist[i]['Param']['Reward'][1]['name']
                            local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"

                            table.insert( elements, { label = imgPath..favolist[i]['Param']['Reward'][1]['count'].." x "..favolist[i]['Text'], value = favolist[i],key = i, desc =favolist[i]['Desc'] })
                        end
                    elseif favolist[i]['Param']['Job'] ~= 0 and contains(favolist[i]['Param']['Job'], playerjob) then 
                        if favolist[i]['Param']['gradelock'] ~= nil then 
                            if grade >= favolist[i]['Param']['gradelock'] then 
                                local image =  favolist[i]['Param']['Reward'][1]['name']
                                local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"

                                table.insert( elements, { label = imgPath..favolist[i]['Param']['Reward'][1]['count'].." x "..favolist[i]['Text'], value = favolist[i],key = i, desc =favolist[i]['Desc'] })
                            end
                        else
                            local image =  favolist[i]['Param']['Reward'][1]['name']
                            local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"

                            table.insert( elements, { label = imgPath..favolist[i]['Param']['Reward'][1]['count'].." x "..favolist[i]['Text'], value = favolist[i],key = i, desc =favolist[i]['Desc'] })
                        end
                    elseif favolist[i]['Param']['Job'] == 0 then
                        local image =  favolist[i]['Param']['Reward'][1]['name']
                        local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"

                        table.insert( elements, { label = imgPath..favolist[i]['Param']['Reward'][1]['count'].." x "..favolist[i]['Text'], value = favolist[i],key = i, desc =favolist[i]['Desc'] })
                    end
                end
            end
        end

    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    =language.craftingmenu,
		subtext    = '',
		align    = 'top-left',
		elements = elements,
        itemHeight = "4vh",
		lastmenu = "precraftingmenu",

	},
	function(data, menu)
		if(data.current ~= "backup") then
			craftingmenu2(data.current.value,data.current.key,"favocraftingmenu")
        else
            _G[data.trigger]()
		end
	end,
	function(data, menu)
		menu.close()
	end)
end

function precraftingmenu() 
	MenuData.CloseAll()
    local image =  Config.favoicon
    local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"

	local elements = {
        {label =imgPath..language.favo, value = "favo", desc = language.favo2}
	}
    for k,v in pairs(Config.catagories) do 
        if v.key ~= nil and tableofexp[v.key] ~= nil then 
            local image =  v.picture
            local imgPath ="<img style='max-height:"..Config.imagesize.."px;max-width:"..Config.imagesize.."px; float:left; margin-top: -5px;' src='nui://vorp_inventory/html/img/items/"..image..".png'>"
            table.insert( elements, {label =imgPath..v.label, value = v.key, desc = v.description.."<br>"..language.craftingexp..tableofexp[v.key]})
        end
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = language.craftingmenu,
		subtext    = '',
		align    = 'top-left',
        itemHeight = "4vh",
		elements = elements,

	},
	function(data, menu)
		if(data.current.value == "favo" ) then
            favocraftingmenu()
        else
			craftingmenu(data.current.value)
		end
	end,
	function(data, menu)
		menu.close()
	end)
end

AddEventHandler('menuapi:closemenu', function() -- close menu
    if inmenu then 
        inmenu = false 
        FreezeEntityPosition(PlayerPedId(),false)
        ClearPedTasks(PlayerPedId())
    end
    
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        local player = PlayerPedId()
        local Coords = GetEntityCoords(player)
        local sleep = true 
        for k,v in pairs(Config.craftingprops) do 
            local campfire = DoesObjectOfTypeExistAtCoords(Coords.x, Coords.y, Coords.z, 1.0, GetHashKey(v), 0) -- prop required to interact
            if campfire ~= false and iscrafting == false and inmenu == false then 
                sleep = false 
                local label  = CreateVarString(10, 'LITERAL_STRING', language.crafting)
                PromptSetActiveGroupThisFrame(prompts, label)
                if Citizen.InvokeNative(0xC92AC953F0A982AE,craftbutton) then
                    waitingforreply = true 
                    TriggerServerEvent('syn_crafting:findjob')
                    while waitingforreply do 
                        Wait(100)
                    end
                    propinfo = v
                    loctitle = 0
                    precraftingmenu()
                    FreezeEntityPosition(PlayerPedId(),true)
                    TaskStandStill(PlayerPedId(), -1)
                    inmenu = true 
                end
            end
        end
        for k,v in pairs(Config.locations) do 
            local dist = GetDistanceBetweenCoords(v.x,v.y,v.z, Coords.x,Coords.y,Coords.z, true)
            if 1.0 > dist and iscrafting == false and inmenu == false  then
                sleep = false 
                local label  = CreateVarString(10, 'LITERAL_STRING', language.crafting)
                PromptSetActiveGroupThisFrame(prompts, label)
                if Citizen.InvokeNative(0xC92AC953F0A982AE,craftbutton) then
                    waitingforreply = true 
                    TriggerServerEvent('syn_crafting:findjob')
                    while waitingforreply do 
                        Wait(100)
                    end
                    loctitle = k
                    inmenu = true 
                    FreezeEntityPosition(PlayerPedId(),true)
                    TaskStandStill(PlayerPedId(), -1)
                    precraftingmenu()
                end
            end
        end
        if sleep then 
            Wait(500)
        end
    end
end)


RegisterNetEvent("syn_crafting:sendjob")
AddEventHandler("syn_crafting:sendjob", function(job,exptable,charidx,steamid,jobgrade,discordx,fav)
    playerjob = job
    tableofexp = exptable
    charid = charidx
    steam = steamid
    grade = tonumber(jobgrade)
    discord = discordx
    favokeys = fav
    favolist = {}
    for k,v in pairs(fav) do 
        table.insert(favolist,Config.crafting[v])
    end
    waitingforreply = false
end)

RegisterNetEvent("syn_crafting:closemenu")
AddEventHandler("syn_crafting:closemenu", function()
    inmenu = false
    FreezeEntityPosition(PlayerPedId(),false)
    ClearPedTasks(PlayerPedId())
end)

RegisterNetEvent("syn_crafting:crafting")
AddEventHandler("syn_crafting:crafting", function(items, secureRewards, tableofexp, catagory, secureExp, diff, countz, desc, randomkey, token)
    local playerPed = PlayerPedId()
    iscrafting = true
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 15000, true, false, false, false)
    Wait(3000)
    TriggerEvent("vorp_inventory:CloseInv")
    
    -- Extract the actual reward and experience values using the random key
    local reward = secureRewards[randomkey]
    local expadd = secureExp[randomkey]
    
    if Config.minigame then 
        local testplayer = exports["syn_minigame"]:taskBar(diff,7)
        if testplayer == 100 then 
            if desc ~= nil then
                TriggerServerEvent('syn_crafting:addItem', items, reward, tableofexp, catagory, expadd, countz, desc, token)
            else
                TriggerServerEvent('syn_crafting:addItem', items, reward, tableofexp, catagory, expadd, countz, nil, token)
            end
        else
            -- Cancel the pending craft since the minigame failed
            TriggerServerEvent('syn_crafting:cancelCraft', token)
            TriggerEvent("vorp:TipBottom", language.youfailed, 4000)
        end
    else
        if desc ~= nil then
            TriggerServerEvent('syn_crafting:addItem', items, reward, tableofexp, catagory, expadd, countz, desc, token)
        else
            TriggerServerEvent('syn_crafting:addItem', items, reward, tableofexp, catagory, expadd, countz, nil, token)
        end
    end
    ClearPedTasks(playerPed)
    iscrafting = false
    tableofexp = {}
end)

local itemplaced = 0
local itemname
function townbanned()
    local town = Citizen.InvokeNative(0x43AD8FC02B429D33, GetEntityCoords(PlayerPedId()), 1)
	for k,v in pairs(Config.bannedtowns) do
		if town == GetHashKey(v) then
			return true
		end
	end
	return false
end
RegisterNetEvent("syn_crafting:placeitem")
AddEventHandler("syn_crafting:placeitem", function(data,item)
    TriggerEvent("vorp_inventory:CloseInv")
    local townbanned = townbanned()
    itemname = item 
    if (data.townlock == false or not townbanned) and itemplaced == 0 then 
        TriggerServerEvent('syn_crafting:removepropitem', itemname)
        TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 30000, true, false, false, false)
        exports['progressBars']:startUI(30000, language.placing)
        Citizen.Wait(30000)
        ClearPedTasksImmediately(PlayerPedId())
        local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
        itemplaced = CreateObject(GetHashKey(data.prop), x, y, z, true, false, true)
        SetEntityHeading(itemplaced, GetEntityHeading(PlayerPedId()))
        PlaceObjectOnGroundProperly(itemplaced)
    
    elseif itemplaced ~= 0 then 
        TriggerEvent("vorp:TipBottom", language.alreadyplaced, 4000)

    elseif (data.townlock == true and townbanned) then 
        TriggerEvent("vorp:TipBottom", language.cantuseintown, 4000)

    end
end)

RegisterNetEvent("syn_crafting:openmenuitem")
AddEventHandler("syn_crafting:openmenuitem", function()
    TriggerEvent("vorp_inventory:CloseInv")
    waitingforreply = true 
    TriggerServerEvent('syn_crafting:findjob')
    while waitingforreply do 
        Wait(100)
    end
    loctitle = 0
    precraftingmenu()
    FreezeEntityPosition(PlayerPedId(),true)
    TaskStandStill(PlayerPedId(), -1)
    inmenu = true 
end)

RegisterCommand(Config.removepropcommand, function(source, args, rawCommand)
    Wait(100)
    if itemplaced ~= 0 and itemname ~= nil then
        SetEntityAsMissionEntity(itemplaced)
        DeleteObject(itemplaced)
        itemplaced = 0
		TriggerServerEvent('syn_crafting:addpropitem', itemname)
        itemname = nil 
    end
end, false)
