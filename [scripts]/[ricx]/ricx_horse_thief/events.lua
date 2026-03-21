local TEXTS = Config.Texts
local TEXTURES = Config.Textures
local notifSettings = {}
-----------------------------------------------------------------------------------------------------
local notifSettings = {
	[1] = {
		TEXTS.HorseThief, TEXTS.CantSellThis, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[2] = {
		TEXTS.HorseThief, TEXTS.IgnoredBySeller, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[3] = {
		TEXTS.HorseThief, TEXTS.NotLookingFor, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[4] = {
		TEXTS.HorseThief, TEXTS.NoAnimal, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[5] = {
		TEXTS.HorseThief, TEXTS.LeavingSoon, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[6] = {
		TEXTS.HorseThief, "", TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[7] = {
		TEXTS.HorseThief, TEXTS.NoJob, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[8] = {
		TEXTS.HorseThief, TEXTS.SitOnHorse, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[9] = {
		TEXTS.HorseThief, TEXTS.DeliverHorse, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[10] = {
		TEXTS.HorseThief, TEXTS.FailedMission, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[11] = {
		TEXTS.HorseThief, TEXTS.StealHorse, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[12] = {
		TEXTS.HorseThief, TEXTS.AllFinished, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[13] = {
		TEXTS.HorseThief, TEXTS.InMission, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[14] = {
		TEXTS.HorseThief, "", TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[15] = {
		TEXTS.HorseThief, TEXTS.CantStartNow, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[16] = {
		TEXTS.HorseThief, TEXTS.FinishAllFirst, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[17] = {
		TEXTS.HorseThief, TEXTS.MissionsReseted, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[18] = {
		TEXTS.HorseThief, TEXTS.NoXP, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	}
	--[[
	[] = {
		TEXTS.TEXT, TEXTS.Saved, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
]]
}

-----------------------------------------------------------------------------------------------------
function CallHorseThiefNotif(id, extra)
	local _id = tonumber(id)
	local title = notifSettings[_id][1]
	local text = notifSettings[_id][2]
	local dict = notifSettings[_id][3]
	local texture = notifSettings[_id][4]
	local timer = notifSettings[_id][5]

------------------EXTRA CODE START------------------
	if extra ~= nil then 						 --|
		if extra.title ~= nil then 				 --|
			title = extra.title					 --|
		end									 	 --|
		if extra.text ~= nil then 				 --|
			text = extra.text					 --|
		end										 --|
		if extra.dict ~= nil then 				 --|
			dict = extra.dict					 --|
		end										 --|
		if extra.texture ~= nil then 			 --|
			texture = extra.texture				 --|
		end										 --|
		if extra.timer ~= nil then 				 --|
			timer = extra.timer					 --|
		end										 --|
	end											 --|
------------------EXTRA CODE END------------------
	TriggerEvent("Notification:ricx_horse_thief", title, text, dict, texture, timer)--change this to a different notification logic if you want
end
-----------------------------------------------------------------------------------------------------
RegisterNetEvent("ricx_horse_thief:call_notif", function(id, extra)
	local _id = tonumber(id)
	CallHorseThiefNotif(_id, extra)
end)
----------------------------Basic Notification----------------------------
RegisterNetEvent('Notification:ricx_horse_thief', function(t1, t2, dict, txtr, timer)
    local _dict = tostring(dict)
    PrepareTexture(_dict)
    exports.ricx_horse_thief.LeftNot(0, tostring(t1), tostring(t2), tostring(dict), tostring(txtr), tonumber(timer))
    SetStreamedTextureDictAsNoLongerNeeded(_dict)
end)
--------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('Notification:ricx_horse_thief_item', function(text, dict, icon, text_color, duration)
    PrepareTexture(dict)
    exports.ricx_horse_thief.RightNot(0, text, dict, icon, text_color, duration)
    SetStreamedTextureDictAsNoLongerNeeded(dict)
end)
--------------------------------------------------------------------------------------------------------------------------------------------