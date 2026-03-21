Config = {}

Config.defaultlang = 'en'

Config.Align = 'top-left' -- align to menu

Config.KeyOpenMenu = 0x760A9C6F -- Key to open the menu

Config.Webhook = 'https://discord.com/api/webhooks/1476338311286231149/49V6L0NsZ1WoFldWSJb7KCalwAucaqaaGZPAyD49-pP9dAC8E6c2HXAROydggHiFC9sM'

Config.PoachersBlip = true -- enable or disable blip for poachers
Config.LegendaryAnimalsBlip = true -- enable or disable blip for legendary animals

Config.DisableWound = true	-- true (Disable legendary animals from bleeding and losing health quickly) or false (Animals bleed when shot at weak points, lose health quickly and will fall to the ground)
Config.EnableSkinning = false -- true (Enable skinning of enemy animals spawned by the script except for legendary animals) or false

Config.ActiveCooldown = 14400 -- seconds (Time in seconds before the active legendary hunts rotate)

-- ####################### NAVIGATION COLORS #######################
Config.NavigationColors = {
    Blip = 'BLIP_MODIFIER_MP_COLOR_11',    -- Target blip color: https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/blip_modifiers
    Route = 'COLOR_PLATFORM_GREEN', -- Color of the path route: https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/colours
}

-- ####################### LOCATIONS #######################
Config.Locations = {
	{ -- Riggs station
		name = 'Gus', 
		blip = { enable = true, sprite = -1406874050, color = 'BLIP_MODIFIER_MP_COLOR_11' }, -- enable/disable blip, and hash blip
		OpenCoords = vector3(-1005.67, -540.98, 98.94),
		npc = { model = 'CS_MP_GUS_MACMILLAN', outfit = 1, scenario = 'WORLD_HUMAN_SMOKE_CIGAR', coords = vector4(-1007.9, -541.37, 98.11, 280.7) },
		-- jobs = {	-- job list to open menu or false
		-- 	'hunter',
		-- 	-- 'example',
		-- },
		ActiveAmount = 9, -- number (Number of legendary hunts active and visible in the menu at the same time) or false (disable mission reset)
		RequiredItems = {
			Bear = {	-- items list or false
				{ label = 'Hunting license', item = 'huntinglicense', amount = 1, subitem = false }, 
			},
			Alligator = false,	-- items list or false
			Wolf = false,	-- items list or false
			Ram = false,	-- items list or false
			Boar = false,	-- items list or false
			Panther = false,	-- items list or false
			Moose = false,	-- items list or false
			Buck = false,	-- items list or false
			Bison = false,	-- items list or false
			Beaver = false,	-- items list or false
		},
	},
	{ -- Annesburg
		name = 'Gus', 
		blip = { enable = true, sprite = -1406874050, color = 'BLIP_MODIFIER_MP_COLOR_11' }, -- enable/disable blip, and hash blip
		OpenCoords = vector3(2076.97, 1000.45, 112.49),
		npc = { model = 'CS_MP_GUS_MACMILLAN', outfit = 1, scenario = 'WORLD_HUMAN_SMOKE_CIGAR', coords = vector4(2075.06, 1000.1, 111.55, 291.17) },
		-- jobs = {	-- job list to open menu or false
		-- 	'hunter',
		-- 	-- 'example',
		-- },
		ActiveAmount = 9, -- number (Number of legendary hunts active and visible in the menu at the same time) or false (disable mission reset)
		RequiredItems = {
			Bear = {	-- items list or false
				{ label = 'Hunting license', item = 'huntinglicense', amount = 1, subitem = false }, 
			},
			Alligator = false,	-- items list or false
			Wolf = false,	-- items list or false
			Ram = false,	-- items list or false
			Boar = false,	-- items list or false
			Panther = false,	-- items list or false
			Moose = false,	-- items list or false
			Buck = false,	-- items list or false
			Bison = false,	-- items list or false
			Beaver = false,	-- items list or false
		},
	},
	{ -- Strawberry
		name = 'Gus', 
		blip = { enable = true, sprite = -1406874050, color = 'BLIP_MODIFIER_MP_COLOR_11' }, -- enable/disable blip, and hash blip
		OpenCoords = vector3(-2842.21, 136.98, 184.85),
		npc = { model = 'CS_MP_GUS_MACMILLAN', outfit = 1, scenario = 'WORLD_HUMAN_SMOKE_CIGAR', coords = vector4(-2844.05, 136.48, 183.76, 297.33) },
		-- jobs = {	-- job list to open menu or false
		-- 	'hunter',
		-- 	-- 'example',
		-- },
		ActiveAmount = 9, -- number (Number of legendary hunts active and visible in the menu at the same time) or false (disable mission reset)
		RequiredItems = {
			Bear = {	-- items list or false
				{ label = 'Hunting license', item = 'huntinglicense', amount = 1, subitem = false }, 
			},
			Alligator = false,	-- items list or false
			Wolf = false,	-- items list or false
			Ram = false,	-- items list or false
			Boar = false,	-- items list or false
			Panther = false,	-- items list or false
			Moose = false,	-- items list or false
			Buck = false,	-- items list or false
			Bison = false,	-- items list or false
			Beaver = false,	-- items list or false
		},
	},
	{ -- Manzanita post
		name = 'Gus', 
		blip = { enable = true, sprite = -1406874050}, -- enable/disable blip, and hash blip
		OpenCoords = vector3(-2250.95, -1917.04, 116.93),
		npc = { model = 'CS_MP_GUS_MACMILLAN', outfit = 1, scenario = 'WORLD_HUMAN_SMOKE_CIGAR', coords = vector4(-2251.69, -1915.03, 116.01, 202.7) },
		-- jobs = {	-- job list to open menu or false
		-- 	'hunter',
		-- 	-- 'example',
		-- },
		ActiveAmount = 9, -- number (Number of legendary hunts active and visible in the menu at the same time) or false (disable mission reset)
		RequiredItems = {
			Bear = {	-- items list or false
				{ label = 'Hunting license', item = 'huntinglicense', amount = 1, subitem = false }, 
			},
			Alligator = false,	-- items list or false
			Wolf = false,	-- items list or false
			Ram = false,	-- items list or false
			Boar = false,	-- items list or false
			Panther = false,	-- items list or false
			Moose = false,	-- items list or false
			Buck = false,	-- items list or false
			Bison = false,	-- items list or false
			Beaver = false,	-- items list or false
		},
	},
}

-- ####################### HEALTH OF LEGENDARY ANIMALS #######################
Config.Health = {
	Bear = 2000,
	Alligator = 1000,
	Wolf = 500,
	Ram = 500,
	Boar = 1000,
	Panther = 1000,
	Moose = 1500,
	Buck = 1500,
	Bison = 2000,
	Beaver = 500,
}

-- ####################### HUNTING LIMIT #######################
Config.HuntingLimit = {
	Bear = {
		Player = {	-- Options for each player.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
		Global = {	-- Global options for all players.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
	},
	Alligator = {
		Player = {	-- Options for each player.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 10,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
		Global = {	-- Global options for all players.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
	},
	Wolf = {
		Player = {	-- Options for each player.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
		Global = {	-- Global options for all players.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
	},
	Ram = {
		Player = {	-- Options for each player.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
		Global = {	-- Global options for all players.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
	},
	Boar = {
		Player = {	-- Options for each player.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
		Global = {	-- Global options for all players.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
	},
	Panther = {
		Player = {	-- Options for each player.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
		Global = {	-- Global options for all players.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
	},
	Moose = {
		Player = {	-- Options for each player.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
		Global = {	-- Global options for all players.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
	},
	Buck = {
		Player = {	-- Options for each player.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
		Global = {	-- Global options for all players.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
	},
	Bison = {
		Player = {	-- Options for each player.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
		Global = {	-- Global options for all players.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
	},
	Beaver = {
		Player = {	-- Options for each player.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
		Global = {	-- Global options for all players.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the hunting or receiving the reward)
			Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the hunting) or false
		},
	},
}