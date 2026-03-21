VORP = exports.vorp_inventory:vorp_inventoryApi()

data = {}

TriggerEvent("vorp_inventory:getData",function(call)
    data = call
end)

Citizen.CreateThread(function()
	Citizen.Wait(2000)

--[[ 	VORP.RegisterUsableItem("bottle_empty", function(data)
		VORP.subItem(data.source, "bottle_empty", 1)
        TriggerClientEvent("bulgar:butelka_napelnij", data.source, 1) 
	end)
	
	VORP.RegisterUsableItem("bottle_dirtywater", function(data)
		VORP.subItem(data.source, "bottle_dirtywater", 1)
        TriggerClientEvent("bulgar:butelka_oddaj", data.source)
        TriggerClientEvent("bulgar:brudna_woda", data.source)
	end)
	
	VORP.RegisterUsableItem("bottlewater", function(data)
		VORP.subItem(data.source, "bottlewater", 1)
        TriggerClientEvent("bulgar:butelka_oddaj", data.source)
        TriggerClientEvent("bulgar:filtro_woda", data.source)
	end) ]]
	
	VORP.RegisterUsableItem("antipoison", function(data)
		VORP.subItem(data.source, "antipoison", 1)
        TriggerClientEvent("bulgar:apson", data.source)
	end)
	
	-- Bucket is not scripted, u only can Fill it with dirty or clear water + get the empty bucket after use.
	-- If u want an effect from it use another plugin u want for it, like planting or other one...
	
	--[[ VORP.RegisterUsableItem("wateringcan_empty", function(data)
		VORP.subItem(data.source, "wateringcan_empty", 1)
        TriggerClientEvent("bulgar:butelka_napelnij", data.source, 2) 
	end) ]]
	

	
	
	
end)

RegisterNetEvent("oddaj:butelka")
AddEventHandler("oddaj:butelka", function()
	local _source = source
	VORP.addItem(_source, "wateringcan_empty", 1)
end)

RegisterNetEvent("oddaj:butelka2")
AddEventHandler("oddaj:butelka2", function()
	local _source = source
	VORP.addItem(_source, "wateringcan_empty", 1)
end)

RegisterNetEvent("dodaj:brudna")
AddEventHandler("dodaj:brudna", function(wynik)
	local _source = source
	
	if wynik == 1 then
		VORP.addItem(_source, "bottlewater", 1)
	elseif wynik == 2 then
		VORP.addItem(_source, "bottle_dirtywater", 1)	
	end
end)

RegisterNetEvent("dodaj:brudna2")
AddEventHandler("dodaj:brudna2", function(wynik)
	local _source = source
	
	if wynik == 1 then
		VORP.addItem(_source, "wateringcan_dirtywater", 1)
	elseif wynik == 2 then
		VORP.addItem(_source, "wateringcan_dirtywater", 1)	
	end
end)

