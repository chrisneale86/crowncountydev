Config = {}

Config.defaultlang = 'en'

Config.Align = 'top-left'	-- align to menu

Config.KeyOpenMenu = 0x760A9C6F	-- Key to open the menu

Config.DeliveryWebhook = 'https://discordapp.com/api/webhooks/1483388104604909600/UTDH__W_oZyJlV6_KJmkQR1kR2fsL0F4epN5z2TkHRCizhr8XK7vWjAYsciGeYyfTVBu'
Config.ContractWebhook = 'https://discordapp.com/api/webhooks/1483388346704199771/YIuK9IIgDobqYQIzJG822tWqzraQ9r40IHgcbRsy2I3qb-3zZX6iRea5O3uzFxVhtqcB'

Config.ColorBlipsGPS = 'blue'	-- Choose the color of the gps waypoint and the blips ['yellow', 'white', 'green', 'blue', 'red', 'purple', 'orange', 'pink', 'grey']

Config.DrawMarkerColor = { r = 0, g = 128, b = 0, alpha = 100 }	-- Floor marking color

-- COLORS: https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/colours
Config.HUDColors = {
	Icon = 'COLOR_PLATFORM_GREEN',
	Progress = 'COLOR_PLATFORM_GREEN',
}

Config.BanditsBlip = true	-- enable or disable blip for bandits

Config.DisableCinematicButton = true	-- Disables the cinematic camera while a job is in progress.

-- ####################### JOBS SYSTEM #######################
Config.Limit = {
	Corn = {
		Player = {	-- Options for each player.
			Amount = false,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Global = {	-- Global options for all players.
			Amount = false,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Simultaneous = true,	-- true or false (Choose whether the job can be started at the same time by several players)
	},
	Supplies = {
		Player = {	-- Options for each player.
			Amount = false,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Global = {	-- Global options for all players.
			Amount = false,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Simultaneous = true,	-- true or false (Choose whether the job can be started at the same time by several players)
	},
	Liqueur = {
		Player = {	-- Options for each player.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = 3600,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Global = {	-- Global options for all players.
			Amount = false,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Simultaneous = false,	-- true or false (Choose whether the job can be started at the same time by several players)
	},
	Explosives = {
		Player = {	-- Options for each player.
			Amount = false,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Global = {	-- Global options for all players.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = 14400,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Simultaneous = false,	-- true or false (Choose whether the job can be started at the same time by several players)
	},
	Escort = {
		Player = {	-- Options for each player.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Start',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = 1800,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Global = {	-- Global options for all players.
			Amount = false,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Simultaneous = false,	-- true or false (Choose whether the job can be started at the same time by several players)
	},
	Kidnapping = {
		Player = {	-- Options for each player.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Start',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = 3600,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Global = {	-- Global options for all players.
			Amount = false,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Start',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Simultaneous = false,	-- true or false (Choose whether the job can be started at the same time by several players)
	},
	Prisioner = {
		Player = {	-- Options for each player.
			Amount = false,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Global = {	-- Global options for all players.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Start',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = 14400,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Simultaneous = false,	-- true or false (Choose whether the job can be started at the same time by several players)
	},
	Train = {
		Player = {	-- Options for each player.
			Amount = false,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Global = {	-- Global options for all players.
			Amount = 1,	-- number (Number of times it can be started/completed) or false
			Subtract = 'Start',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
			Cooldown = 28800,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
		},
		Simultaneous = false,	-- true or false (Choose whether the job can be started at the same time by several players)
	},
}

Config.LocationsLimit = {	-- Number of times all players can do the job until the server is restarted (LOCATIONS)
	['D-SaintDenis'] = {
		Corn = {
			Player = {	-- Options for each player.
				Amount = false,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Global = {	-- Global options for all players.
				Amount = 1,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = 900,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Simultaneous = true,	-- true or false (Choose whether the job can be started at the same time by several players)
		},
		Supplies = {
			Player = {	-- Options for each player.
				Amount = false,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Global = {	-- Global options for all players.
				Amount = 1,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = 1800,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Simultaneous = true,	-- true or false (Choose whether the job can be started at the same time by several players)
		},
		Liqueur = {
			Player = {	-- Options for each player.
				Amount = false,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Global = {	-- Global options for all players.
				Amount = 2,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Start',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Simultaneous = false,	-- true or false (Choose whether the job can be started at the same time by several players)
		},
		Explosives = {
			Player = {	-- Options for each player.
				Amount = false,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Global = {	-- Global options for all players.
				Amount = 1,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Start',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Simultaneous = false,	-- true or false (Choose whether the job can be started at the same time by several players)
		},
	},
	['C-FortMercer'] = {
		Escort = {
			Player = {	-- Options for each player.
				Amount = false,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Global = {	-- Global options for all players.
				Amount = 1,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Start',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = 1800,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Simultaneous = false,	-- true or false (Choose whether the job can be started at the same time by several players)
		},
		Kidnapping = {
			Player = {	-- Options for each player.
				Amount = false,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Global = {	-- Global options for all players.
				Amount = 1,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Start',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = 3600,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Simultaneous = false,	-- true or false (Choose whether the job can be started at the same time by several players)
		},
		Prisioner = {
			Player = {	-- Options for each player.
				Amount = false,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Global = {	-- Global options for all players.
				Amount = 1,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Start',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = 7200,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Simultaneous = false,	-- true or false (Choose whether the job can be started at the same time by several players)
		},
		Train = {
			Player = {	-- Options for each player.
				Amount = false,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Reward',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = false,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Global = {	-- Global options for all players.
				Amount = 1,	-- number (Number of times it can be started/completed) or false
				Subtract = 'Start',	-- 'Start' or 'Reward' (When Amount is subtracted when starting the job or receiving the reward)
				Cooldown = 14400,	-- seconds (When Amount is number; Cooldown time that will be recovered from 1 to Amount at the limit to restart/complete the job) or false
			},
			Simultaneous = false,	-- true or false (Choose whether the job can be started at the same time by several players)
		},
	},
}

-- ####################### EXPERIENCE #######################
Config.VorpXP = false	-- true (Use VORP player experience, experience for deliveries and contracts will be the same) or false (Use unique experience for deliveries and contracts)

-- ####################### LOCATIONS #######################
Config.DeliveriesLocations = {
	{	-- VALENTINE
		id = 'D-Valentine',	-- Location ID, to share the experience or limit in different locations.
		name = 'delivery job',	-- Name and menu title
		blip = { enable = true, sprite = -243818172 },	-- enable/disable blip, and hash blip
		pos = vector4(-190.05, 636.3, 112.58, 56.24),	-- Npc position
		spawn = vector4(-188.53, 644.55, 112.44, 137.59),	-- Coordinates to spawn the cart
		npc = { model = 'A_M_M_DELIVERYTRAVELERS_COOL_01', scenario = 'WORLD_HUMAN_WAITING_IMPATIENT' },	-- scenario = 'ScenarioName' or false
		jobs = false,
		MaxExp = 500,
		Required = {
			Exp = {
				Corn = 0,	-- number
				Supplies = 200,	-- number
				Liqueur = 350,	-- number
				Explosives = 500,	-- number
			},
			Items = {
				Corn = false,	-- items list or false
				Supplies = false,	-- items list or false
				Liqueur = false,	-- items list or false
				Explosives = false,	-- items list or false
			}
		},
		-- JobsRequired = {	-- { Amount = number, Jobs = { 'Example1', 'Example2' } } or false
		-- 	Amount = 1,
		-- 	Jobs = {
		-- 		'sheriff', 
		-- 		'police',
		-- 	},
		-- },
	},
	{	-- SAINT DENIS
		id = 'D-SaintDenis',	-- Location ID, to share the experience or limit in different locations.
		name = 'delivery job',	-- Name and menu title
		blip = { enable = true, sprite = -243818172 },	-- enable/disable blip, and hash blip
		pos = vector4(2892.65, -1242.6, 44.97, 265.56),	-- Npc position
		spawn = vector4(2892.82, -1252.1, 44.86, 158.08),	-- Coordinates to spawn the cart
		npc = { model = 'A_M_M_DELIVERYTRAVELERS_COOL_01', scenario = 'WORLD_HUMAN_WAITING_IMPATIENT' },	-- scenario = 'ScenarioName' or false
		jobs = {    -- List of jobs or false
			{ job = 'deliver', grade = 3 },
			-- { job = 'example', grade = false },
		},
		MaxExp = 500,
		Required = {
			Exp = {
				Corn = 0,	-- number
				Supplies = 200,	-- number
				Liqueur = 350,	-- number
				Explosives = 500,	-- number
			},
			Items = {
				Corn = false,	-- items list or false
				Supplies = false,	-- items list or false
				Liqueur = false,	-- items list or false
				Explosives = false,	-- items list or false
			}
		},
		-- JobsRequired = {	-- { Amount = number, Jobs = { 'Example1', 'Example2' } } or false
		-- 	Amount = 1,
		-- 	Jobs = {
		-- 		'sheriff', 
		-- 		'police',
		-- 	},
		-- },
	},
}

Config.ContractsLocations = {
	{	-- FORT WALLACE
		id = 'C-FortWallace',	-- Location ID, to share the experience or limit in different locations.
		name = 'delivery job',	-- Name and menu title
		blip = { enable = true, sprite = 202506373 },	-- enable/disable blip, and hash blip
		pos = vector4(336.09, 1506.86, 180.33, 209.05),	-- Npc position
		npc = { model = 'CS_VALSHERIFF', scenario = 'MP_LOBBY_PROP_HUMAN_SEAT_CHAIR_WHITTLE' },	-- scenario = 'ScenarioName' or false
		-- jobs = {    -- List of jobs or false
		-- 	{ job = 'police', grade = false },
		-- 	-- { job = 'example', grade = false },
		-- },
		MaxExp = 500,
		Required = {
			Exp = {
				Escort = 0,	-- number
				Kidnapping = 200,	-- number
				Prisioner = 350,	-- number
				Train = 500,	-- number
			},
			Items = {
				Escort = false,	-- items list or false
				Kidnapping = false,	-- items list or false
				Prisioner = false,	-- items list or false
				Train = {	-- items list or false
					{ label = 'Bounty hunter license', item = 'bountyhunterlicense', amount = 1, subitem = false }, 
				},
			}
		},
		JobsRequired = {	-- { Amount = number, Jobs = { 'Example1', 'Example2' } } or false
			Amount = 1,
			Jobs = {
				'sheriff', 
				'police',
			},
		},
	},
	{	-- FORT MERCER
		id = 'C-FortMercer',	-- Location ID, to share the experience or limit in different locations.
		name = 'delivery job',	-- Name and menu title
		blip = { enable = true, sprite = 202506373 },	-- enable/disable blip, and hash blip
		pos = vector4(-4238.37, -3495.31, 36.08, 323.32),	-- Npc position
		npc = { model = 'CS_VALSHERIFF', scenario = 'WORLD_HUMAN_LEAN_TABLE_SHARPEN_KNIFE' },	-- scenario = 'ScenarioName' or false
		jobs = {    -- List of jobs or false
			{ job = 'bandit', grade = false },
			-- { job = 'example', grade = false },
		},
		MaxExp = 500,
		Required = {
			Exp = {
				Escort = 0,	-- number
				Kidnapping = 200,	-- number
				Prisioner = 350,	-- number
				Train = 500,	-- number
			},
			Items = {
				Escort = false,	-- items list or false
				Kidnapping = false,	-- items list or false
				Prisioner = false,	-- items list or false
				Train = {	-- items list or false
					{ label = 'Bounty hunter license', item = 'bountyhunterlicense', amount = 1, subitem = false }, 
				},
			},
		},
		JobsRequired = {	-- { Amount = number, Jobs = { 'Example1', 'Example2' } } or false
			Amount = 1,
			Jobs = {
				'sheriff', 
				'police',
			},
		},
	},
}

-- ####################### TRAIN OPTIONS #######################
Config.DriverImmortalTrain = true	-- true (The driver of the trains will be immortal) or false (the driver can die)
Config.DrivableTrain = false	-- true (Players will be able to drive the train) or false (Players will not be able to drive the train)

-- ####################### DELIVERY JOBS #######################
Config.Deliveries = {
-- ================ CORN ================
	Corn = {
		{	-- EMERALD RANCH
			locations = { 'D-SaintDenis' },	-- { (Id of the locations or 'all')}
			coords = vector3(1431.23, 294.44, 87.86),	-- (vector3) Coordinates to collect the corn
			rewardExp = 3,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 50, 150 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = {	-- list of items or false
				{ label = 'Apple Seed', item = 'Apple_Seed', amount = { 5, 10 } }, 
			},
			numberSacks = 5,	-- Number of sacks to load the cart
		},
		{	-- MATTOCK POND
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(1367.01, -849.83, 69.84),	-- (vector3) Coordinates to collect the corn
			rewardExp = 3,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 50, 150 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = {	-- list of items or false
				{ label = 'Peach Seeds', item = 'peachseeds', amount = { 5, 10 } },
			},
			numberSacks = 10,	-- Number of sacks to load the cart
		},
		{	-- MACFARLANE'S RANCH
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(-2363.71, -2395.27, 61.18),	-- (vector3) Coordinates to collect the corn
			rewardExp = 3,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 50, 150 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = {	-- list of items or false
				{ label = 'Sugarcane Seed', item = 'sugarcaneseed', amount = { 5, 10 } }, 
			},
			numberSacks = 8,	-- Number of sacks to load the cart
		},
		{	-- HANGING DOG RANCH
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(-2174.3, 697.85, 120.42),	-- (vector3) Coordinates to collect the corn
			rewardExp = 3,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 50, 150 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = {	-- list of items or false
				{ label = 'Wheat Seed', item = 'wheatseed', amount = { 5, 10 } }, 
			},
			numberSacks = 7,	-- Number of sacks to load the cart
		},
		{	-- BLACKWATER
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(-740.38, -1258.72, 43.73),	-- (vector3) Coordinates to collect the corn
			rewardExp = 3,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 50, 150 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = {	-- list of items or false
				{ label = 'Sugarcane Seed', item = 'sugarcaneseed', amount = { 5, 10 } },
			},
			numberSacks = 6,	-- Number of sacks to load the cart
		},
		{	-- CALIGA HALL
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(1856.13, -1243.14, 42.09),	-- (vector3) Coordinates to collect the corn
			rewardExp = 3,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 50, 150 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = {	-- list of items or false
				{ label = 'Wheat Seed', item = 'wheatseed', amount = { 5, 10 } }, 
			},
			numberSacks = 9,	-- Number of sacks to load the cart
		},
	},

-- ================ SUPPLIES ================
	Supplies = {
		{	-- VALENTINE
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			rewardExp = 7,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 100, 200 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = {	-- list of items or false
				{ label = 'Madera blanda', item = 'wood', amount = 5 }, 
				{ label = 'Madera dura', item = 'hwood', amount = 1 }, 
			},
			deliveries = {
				{
					coords = vector4(-387.6, 917.08, 116.74, 98.04),	-- coords = (vector4)
					numberSupplies = 8,	-- Quantity of supplies to deliver
					NPC = { model = 'A_F_M_BiVFancyTravellers_01', scenario = 'WORLD_HUMAN_DRINK_CHAMPAGNE' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
				},
				-- {
					-- coords = vector4(-387.6, 917.08, 116.74, 98.04),	-- coords = (vector4)
					-- 	numberSupplies = 8,	-- Quantity of supplies to deliver
					-- 	NPC = { model = 'A_F_M_BiVFancyTravellers_01', scenario = 'WORLD_HUMAN_DRINK_CHAMPAGNE' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
				-- },
			},
			supply = 'Crates',	-- 'Furnitures', 'Oranges', 'Apples', 'Crates'
		},
		{	-- KAMASSA RIVER
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			rewardExp = 7,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 100, 200 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = {	-- list of items or false
				{ label = 'Madera blanda', item = 'wood', amount = 8 }, 
				{ label = 'Madera dura', item = 'hwood', amount = 2 }, 
			},
			deliveries = {
				{
					coords = vector4(1796.19, -86.65, 54.47, 270.37),	-- coords = (vector4)
					numberSupplies = 5,	-- Quantity of supplies to deliver
					NPC = { model = 'CS_AberdeenPigFarmer', scenario = 'WORLD_HUMAN_CANNED_FOOD_COOKING' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
				},
				-- {
					-- coords = vector4(1796.19, -86.65, 54.47, 270.37),	-- coords = (vector4)
					-- 	numberSupplies = 5,	-- Quantity of supplies to deliver
					-- 	NPC = { model = 'CS_AberdeenPigFarmer', scenario = 'WORLD_HUMAN_CANNED_FOOD_COOKING' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
				-- },
			},

			supply = 'Apples',	-- 'Furnitures', 'Oranges', 'Apples', 'Crates'
		},
		{	-- BRAITHWAITE MANOR
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			rewardExp = 7,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 100, 200 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = {	-- list of items or false
				{ label = 'Madera blanda', item = 'wood', amount = 10 }, 
				{ label = 'Madera dura', item = 'hwood', amount = 4 }, 
			},
			deliveries = {
				{
					coords = vector4(1008.46, -1755.95, 45.61, 3.3),	-- coords = (vector4)
					numberSupplies = 10,	-- Quantity of supplies to deliver
					NPC = { model = 'MP_ASN_BRAITHWAITEMANOR_MALES_03', scenario = 'WORLD_HUMAN_SMOKE' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
				},
				-- {
					-- coords = vector4(1008.46, -1755.95, 45.61, 3.3),	-- coords = (vector4)
					-- 	numberSupplies = 10,	-- Quantity of supplies to deliver
					-- 	NPC = { model = 'MP_ASN_BRAITHWAITEMANOR_MALES_03', scenario = 'WORLD_HUMAN_SMOKE' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
				-- },
			},
			supply = 'Furnitures',	-- 'Furnitures', 'Oranges', 'Apples', 'Crates'
		},
		{	-- MANZANITA POST
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			rewardExp = 7,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 100, 200 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = {	-- list of items or false
				{ label = 'Madera blanda', item = 'wood', amount = 8 }, 
				{ label = 'Madera dura', item = 'hwood', amount = 3 }, 
			},
			deliveries = {
				{
					coords = vector4(-1985.46, -1646.15, 116.1, 123.75),	-- coords = (vector4)
					numberSupplies = 7,	-- Quantity of supplies to deliver
					NPC = { model = 'U_M_M_HtlForeman_01', scenario = 'WORLD_HUMAN_CLEAN_TABLE' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
				},
				-- {
					-- coords = vector4(-1985.46, -1646.15, 116.1, 123.75),	-- coords = (vector4)
					-- 	numberSupplies = 7,	-- Quantity of supplies to deliver
					-- 	NPC = { model = 'U_M_M_HtlForeman_01', scenario = 'WORLD_HUMAN_CLEAN_TABLE' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
				-- },
			},
			supply = 'Furnitures',	-- 'Furnitures', 'Oranges', 'Apples', 'Crates'
		},
		{	-- STRAWBERRY
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			rewardExp = 7,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 100, 200 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = {	-- list of items or false
				{ label = 'Madera blanda', item = 'wood', amount = 12 }, 
				{ label = 'Madera dura', item = 'hwood', amount = 3 }, 
			},
			deliveries = {
				{
					coords = vector4(-1814.75, -423.32, 159.0, 345.54),	-- coords = (vector4)
					numberSupplies = 11,	-- Quantity of supplies to deliver
					NPC = { model = 'U_M_O_BHT_DOCWORMWOOD', scenario = 'WORLD_HUMAN_STAND_WAITING' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
				},
				-- {
					-- coords = vector4(-1814.75, -423.32, 159.0, 345.54),	-- coords = (vector4)
					-- 	numberSupplies = 11,	-- Quantity of supplies to deliver
					-- 	NPC = { model = 'U_M_O_BHT_DOCWORMWOOD', scenario = 'WORLD_HUMAN_STAND_WAITING' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
				-- },
			},
			supply = 'Oranges',	-- 'Furnitures', 'Oranges', 'Apples', 'Crates'
		},
		{	-- BLACKWATER
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			rewardExp = 7,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 100, 200 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = {	-- list of items or false
				{ label = 'Madera blanda', item = 'wood', amount = 9 }, 
				{ label = 'Madera dura', item = 'hwood', amount = 4 }, 
			},
			deliveries = {
				{
					coords = vector4(-757.97, -1348.08, 42.64, 324.37),	-- coords = (vector4)
					numberSupplies = 6,	-- Quantity of supplies to deliver
					NPC = { model = 'U_M_O_BHT_DOCWORMWOOD', scenario = 'WORLD_HUMAN_DRINKING_MOONSHINE' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
				},
				-- {
					-- coords = vector4(-757.97, -1348.08, 42.64, 324.37),	-- coords = (vector4)
					-- 	numberSupplies = 6,	-- Quantity of supplies to deliver
					-- 	NPC = { model = 'U_M_O_BHT_DOCWORMWOOD', scenario = 'WORLD_HUMAN_DRINKING_MOONSHINE' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
				-- },
			},
			supply = 'Apples',	-- 'Furnitures', 'Oranges', 'Apples', 'Crates'
		},
	},
	
-- ================ LIQUEUR ================
	Liqueur = {
		{	-- LAGRAS
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(2096.73, -584.56, 40.52, 128.81),	-- coords = (vector4) on main roads
			rewardExp = 13,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 200, 250 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			bandits = { model = 'A_M_M_HUNTERTRAVELERS_WARM_01', number = 8, distanceSpawn = 200 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance that the bandits will appear from the delivery point)
			deliveryNPC = { model = 'A_M_M_RkrFancyTravellers_01', scenario = 'WORLD_HUMAN_DRINKING_MOONSHINE' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			cartHealth = 1000,	-- number (cart health, minimum 1)
			ExecuteCommand = 'witness A person has been seen trying to deliver a cart of liquor',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen near some bandits trying to deliver a cart of liquor',	-- Command that is executed or text that is sent to the Notify function when horse bandits spawn or false
		},
		{	-- MANZANITA POST
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(-1959.1, -1621.5, 114.91, 311.86),	-- coords = (vector4) on main roads
			rewardExp = 13,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 200, 250 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			bandits = { model = 'mp_g_m_m_uniinbred_01', number = 12, distanceSpawn = 100 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance that the bandits will appear from the delivery point)
			deliveryNPC = { model = 'CS_SDSALOONDRUNK_01', scenario = 'WORLD_HUMAN_DRINKING_DRUNK' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			cartHealth = 1000,	-- number (cart health, minimum 1)
			ExecuteCommand = 'witness A person has been seen trying to deliver a cart of liquor',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen near some bandits trying to deliver a cart of liquor',	-- Command that is executed or text that is sent to the Notify function when horse bandits spawn or false
		},
		{	-- MACFARLANE'S RANCH
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(-2511.03, -2454.96, 59.47, 203.27),	-- coords = (vector4) on main roads
			rewardExp = 13,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 200, 250 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			bandits = { model = 'G_M_M_UniBanditos_01', number = 9, distanceSpawn = 150 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance that the bandits will appear from the delivery point)
			deliveryNPC = { model = 'A_M_M_RANCHER_01', scenario = 'WORLD_HUMAN_DRINKING' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			cartHealth = 1000,	-- number (cart health, minimum 1)
			ExecuteCommand = 'witness A person has been seen trying to deliver a cart of liquor',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen near some bandits trying to deliver a cart of liquor',	-- Command that is executed or text that is sent to the Notify function when horse bandits spawn or false
		},
		{	-- BENEDICT PASS
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(-4790.52, -2735.06, -15.35, 161.75),	-- coords = (vector4) on main roads
			rewardExp = 13,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 200, 250 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			bandits = { model = 'mp_g_m_m_unibanditos_01', number = 13, distanceSpawn = 100 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance that the bandits will appear from the delivery point)
			deliveryNPC = { model = 'mp_chu_kid_armadillo_males_01', scenario = 'WORLD_CAMP_DUTCH_SMOKE_CIGAR' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			cartHealth = 1000,	-- number (cart health, minimum 1)
			ExecuteCommand = 'witness A person has been seen trying to deliver a cart of liquor',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen near some bandits trying to deliver a cart of liquor',	-- Command that is executed or text that is sent to the Notify function when horse bandits spawn or false
		},
		{	-- HEARTLAND OIL FIELDS
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(866.54, 832.35, 115.7, 261.24),	-- coords = (vector4) on main roads
			rewardExp = 13,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 200, 250 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			bandits = { model = 'A_M_M_WapWarriors_01', number = 6, distanceSpawn = 70 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance that the bandits will appear from the delivery point)
			deliveryNPC = { model = 'A_M_M_BLWObeseMen_01', scenario = 'WORLD_HUMAN_SMOKE_CIGAR' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			cartHealth = 1000,	-- number (cart health, minimum 1)
			ExecuteCommand = 'witness A person has been seen trying to deliver a cart of liquor',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen near some bandits trying to deliver a cart of liquor',	-- Command that is executed or text that is sent to the Notify function when horse bandits spawn or false
		},
		{	-- ELYSIAN POOL
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(2508.32, 790.53, 68.72, 240.41),	-- coords = (vector4) on main roads
			rewardExp = 13,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 200, 250 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			bandits = { model = 'G_M_M_UniInbred_01', number = 8, distanceSpawn = 90 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance that the bandits will appear from the delivery point)
			deliveryNPC = { model = 'A_M_M_BtcHillbilly_01', scenario = 'WORLD_HUMAN_DRINK_FLASK' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			cartHealth = 1000,	-- number (cart health, minimum 1)
			ExecuteCommand = 'witness A person has been seen trying to deliver a cart of liquor',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen near some bandits trying to deliver a cart of liquor',	-- Command that is executed or text that is sent to the Notify function when horse bandits spawn or false
		},
	},

-- ================ EXPLOSIVES ================
	Explosives = {
		{	-- GAPTOOTH RIDGE
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(-5998.07, -3316.07, -22.81, 175.22),	-- coords = (vector4) on main roads
			time = 900,	-- time = (seconds)
			rewardExp = 20,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 250, 300 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			bandits = { model = 'mp_g_m_m_unibanditos_01', number = 20, distanceSpawn = 100 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance that the bandits will appear from the delivery point)
			deliveryNPC = { model = 'mp_chu_kid_tumbleweed_males_01', scenario = 'WORLD_CAMP_DUTCH_SMOKE_CIGAR' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			cartHealth = 200,	-- number (cart health, minimum 1)
			ExecuteCommand = 'witness A person has been seen trying to deliver a cart of explosives',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen near some bandits trying to deliver a cart of explosives',	-- Command that is executed or text that is sent to the Notify function when horse bandits spawn or false
		},
		{	-- BENEDICT POINT
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(-5246.52, -3436.54, -22.81, 108.47),	-- coords = (vector4) on main roads
			time = 780,	-- time = (seconds)
			rewardExp = 20,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 250, 300 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			bandits = { model = 'A_M_M_BtcHillbilly_01', number = 15, distanceSpawn = 150 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance that the bandits will appear from the delivery point)
			deliveryNPC = { model = 'A_M_M_NbxDockWorkers_01', scenario = 'WORLD_HUMAN_WRITE_NOTEBOOK' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			cartHealth = 200,	-- number (cart health, minimum 1)
			ExecuteCommand = 'witness A person has been seen trying to deliver a cart of explosives',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen near some bandits trying to deliver a cart of explosives',	-- Command that is executed or text that is sent to the Notify function when horse bandits spawn or false
		},
		{	-- FORT MERCER
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(-4158.46, -3382.04, 38.39, 358.93),	-- coords = (vector4) on main roads
			time = 600,	-- time = (seconds)
			rewardExp = 20,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 250, 300 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			bandits = { model = 'A_M_M_BynFancyDRIVERS_01', number = 17, distanceSpawn = 90 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance that the bandits will appear from the delivery point)
			deliveryNPC = { model = 'S_M_M_AmbientBlWPolice_01', scenario = 'WORLD_HUMAN_SMOKE_NERVOUS_STRESSED' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			cartHealth = 200,	-- number (cart health, minimum 1)
			ExecuteCommand = 'witness A person has been seen trying to deliver a cart of explosives',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen near some bandits trying to deliver a cart of explosives',	-- Command that is executed or text that is sent to the Notify function when horse bandits spawn or false
		},
		{	-- LIMPANY
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(-394.28, -105.96, 43.97, 56.32),	-- coords = (vector4) on main roads
			time = 300,	-- time = (seconds)
			rewardExp = 20,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 250, 300 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			bandits = { model = 'A_M_M_BynRoughTravellers_01', number = 14, distanceSpawn = 90 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance that the bandits will appear from the delivery point)
			deliveryNPC = { model = 'S_M_Y_Army_01', scenario = 'WORLD_HUMAN_WAITING_IMPATIENT' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			cartHealth = 200,	-- number (cart health, minimum 1)
			ExecuteCommand = 'witness A person has been seen trying to deliver a cart of explosives',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen near some bandits trying to deliver a cart of explosives',	-- Command that is executed or text that is sent to the Notify function when horse bandits spawn or false
		},
		{	-- THREE SISTERS
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(1607.7, 854.32, 139.25, 71.13),	-- coords = (vector4) on main roads
			time = 390,	-- time = (seconds)
			rewardExp = 20,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 250, 300 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			bandits = { model = 'G_M_M_UniMountainMen_01', number = 16, distanceSpawn = 90 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance that the bandits will appear from the delivery point)
			deliveryNPC = { model = 'mp_u_m_m_lbt_accomplice_01', scenario = 'WORLD_HUMAN_STAND_WAITING' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			cartHealth = 200,	-- number (cart health, minimum 1)
			ExecuteCommand = 'witness A person has been seen trying to deliver a cart of explosives',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen near some bandits trying to deliver a cart of explosives',	-- Command that is executed or text that is sent to the Notify function when horse bandits spawn or false
		},
		{	-- BRAITHWAITE MANOR
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(1328.13, -1618.09, 65.41, 344.29),	-- coords = (vector4) on main roads
			time = 480,	-- time = (seconds)
			rewardExp = 20,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 250, 300 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			bandits = { model = 'mp_g_m_m_unimountainmen_01', number = 17, distanceSpawn = 80 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance that the bandits will appear from the delivery point)
			deliveryNPC = { model = 'A_M_M_RHDDEPUTYRESIDENT_01', scenario = 'WORLD_HUMAN_CLIPBOARD' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			cartHealth = 200,	-- number (cart health, minimum 1)
			ExecuteCommand = 'witness A person has been seen trying to deliver a cart of explosives',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen near some bandits trying to deliver a cart of explosives',	-- Command that is executed or text that is sent to the Notify function when horse bandits spawn or false
		},
	},
}

-- ####################### CONTRACT JOBS #######################
Config.Contract = {
-- ================ ESCORT ================
	Escort = {
		{	-- TWIN ROCKS
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(-3968.65, -2151.86, -7.34, 116.53),	-- coords = (vector4)
			rewardExp = 3,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 50, 100 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			client = { model = 'A_M_M_FARMTRAVELERS_WARM_01', Health = 1000 },
			enemiesHorse = { model = 'A_M_M_RhdTownfolk_02', number = 3, delay = 240 },	-- delay = (seconds)
			deliveryNPC = { model = 'CS_VALSHERIFF', scenario = 'WORLD_HUMAN_STAND_WAITING' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			ExecuteCommand = 'witness A person has been seen trying to escort a client',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
		},
		{	-- CALIGA HALL (SHOUTH)
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(2069.77, -1842.15, 40.8, 107.29),	-- coords = (vector4)
			rewardExp = 3,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 50, 100 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			client = { model = 'G_F_M_UNIDUSTER_01', Health = 1000 },
			enemiesHorse = { model = 'G_M_M_UNIDUSTER_05', number = 2, delay = 180 },	-- delay = (seconds)
			deliveryNPC = { model = 'G_M_M_UNILANGSTONBOYS_01', scenario = 'WORLD_HUMAN_SMOKE_NERVOUS_STRESSED' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			ExecuteCommand = 'witness A person has been seen trying to escort a client',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
		},
		{	-- EMERALD STATION
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(1519.52, 445.48, 89.68, 41.73),	-- coords = (vector4)
			rewardExp = 3,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 50, 100 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			client = { model = 'A_M_M_BTCObeseMen_01', Health = 1000 },
			enemiesHorse = { model = 'G_M_O_UniExConfeds_01', number = 1, delay = 100 },	-- delay = (seconds)
			deliveryNPC = { model = 'MES_FINALE2_MALES_01', scenario = 'WORLD_HUMAN_DRINKING_MOONSHINE' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			ExecuteCommand = 'witness A person has been seen trying to escort a client',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
		},
		{	-- WINDOW ROCK
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(-351.4, 1649.93, 199.19, 238.2),	-- coords = (vector4)
			rewardExp = 3,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 50, 100 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			client = { model = 'A_F_M_BTCObeseWomen_01', Health = 1000 },
			enemiesHorse = { model = 'G_M_M_UniMountainMen_01', number = 1, delay = 90 },	-- delay = (seconds)
			deliveryNPC = { model = 'CS_AberdeenPigFarmer', scenario = 'WORLD_HUMAN_SMOKE_CIGAR' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			ExecuteCommand = 'witness A person has been seen trying to escort a client',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
		},
		{	-- AURORA BASIN
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(-2364.48, -1587.41, 152.36, 282.92),	-- coords = (vector4)
			rewardExp = 3,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 50, 100 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			client = { model = 'RE_INJUREDRIDER_MALES_01', Health = 1000 },
			enemiesHorse = { model = 'mp_s_m_m_cornwallguard_01', number = 2, delay = 200 },	-- delay = (seconds)
			deliveryNPC = { model = 'S_F_M_BwmWorker_01', scenario = 'WORLD_HUMAN_DRINK_FLASK' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			ExecuteCommand = 'witness A person has been seen trying to escort a client',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
		},
		{	-- MANTECA FALLS (west)
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(-2022.53, -3022.83, -10.89, 3.89),	-- coords = (vector4)
			rewardExp = 3,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 50, 100 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			client = { model = 'CS_JAMIE', Health = 1000 },
			enemiesHorse = { model = 'G_M_M_UniAfricanAmericanGang_01', number = 3, delay = 300 },	-- delay = (seconds)
			deliveryNPC = { model = 'CS_SUNWORSHIPPER', scenario = 'WORLD_HUMAN_SMOKE' },	-- model = 'npc model' / scenario = ('ScenarioName' or false)
			ExecuteCommand = 'witness A person has been seen trying to escort a client',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
		},
	},

-- ================ KIDNAPPING ================
	Kidnapping = {
		{	-- LAKAY
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(2251.03, -766.31, 42.9),	-- Vector3 spawn from enemies
			rewardExp = 7,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 100, 150 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			blipRadius = 65.0, -- Radius of the blip to search
			kidnapped = {
				model = 'MSP_BOUNTYHUNTER1_FEMALES_01',	-- npc model
				coords = vector4(2254.39, -791.27, 43.24, 215.08),	-- vector4
				AnimDict = 'script_re@campfire_massacre',	-- anim dict or false
				AnimName = 'woman_cry_idle'	-- anim name or false
			},
			enemies = { model = 'G_M_M_UniDuster_04', number = 15 },	-- model = 'npc model' / number = (number of bandits)
			ExecuteCommand = 'witness A person has been seen trying to save a kidnapped person',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen saving a kidnapped person',	-- Command that is executed or text that is sent to the function Notify the player save the kidnapped or false
		},
		{	-- FORT BRENNAND
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(2455.56, 288.97, 70.58),	-- Vector3 spawn from enemies
			rewardExp = 7,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 100, 150 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			blipRadius = 40.0, -- Radius of the blip to search for the baby
			kidnapped = {
				model = 'A_F_M_VhtProstitute_01',	-- npc model
				coords = vector4(2447.18, 288.67, 66.29, 80.18),	-- vector4
				AnimDict = 'script_re@campfire_massacre',	-- anim dict or false
				AnimName = 'woman_cry_idle'	-- anim name or false
			},
			enemies = { model = 'G_M_M_UniInbred_01', number = 10 },	-- model = 'npc model' / number = (number of bandits)
			ExecuteCommand = 'witness A person has been seen trying to save a kidnapped person',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen saving a kidnapped person',	-- Command that is executed or text that is sent to the function Notify the player save the kidnapped or false
		},
		{	-- COLTER
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(-1349.74, 2420.77, 307.2),	-- Vector3 spawn from enemies
			rewardExp = 7,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 100, 150 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			blipRadius = 65.0, -- Radius of the blip to search for the baby
			kidnapped = {
				model = 'mp_re_kidnapped_females_01',	-- npc model
				coords = vector4(-1357.22, 2444.04, 307.47, 244.71),	-- vector4
				AnimDict = 'script_re@campfire_massacre',	-- anim dict or false
				AnimName = 'woman_cry_idle'	-- anim name or false
			},
			enemies = { model = 'A_M_M_huntertravelers_cool_01', number = 14 },	-- model = 'npc model' / number = (number of bandits)
			ExecuteCommand = 'witness A person has been seen trying to save a kidnapped person',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen saving a kidnapped person',	-- Command that is executed or text that is sent to the function Notify the player save the kidnapped or false
		},
		{	-- HANGING DOG RANCH
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(-2203.66, 712.78, 122.3),	-- Vector3 spawn from enemies
			rewardExp = 7,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 100, 150 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			blipRadius = 45.0, -- Radius of the blip to search for the baby
			kidnapped = {
				model = 'RE_KIDNAPPEDVICTIM_FEMALES_01',	-- npc model
				coords = vector4(-2177.17, 722.56, 125.25, 163.31),	-- vector4
				AnimDict = 'script_re@campfire_massacre',	-- anim dict or false
				AnimName = 'woman_cry_idle'	-- anim name or false
			},
			enemies = { model = 'A_M_M_GriSurvivalist_01', number = 9 },	-- model = 'npc model' / number = (number of bandits)
			ExecuteCommand = 'witness A person has been seen trying to save a kidnapped person',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen saving a kidnapped person',	-- Command that is executed or text that is sent to the function Notify the player save the kidnapped or false
		},
		{	-- FORT RIGGS
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(-1579.32, -908.09, 83.89),	-- Vector3 spawn from enemies
			rewardExp = 7,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 100, 150 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			blipRadius = 35.0, -- Radius of the blip to search for the baby
			kidnapped = {
				model = 'A_F_O_WAPTOWNFOLK_01',	-- npc model
				coords = vector4(-1580.01, -926.11, 83.63, 88.69),	-- vector4
				AnimDict = 'script_re@campfire_massacre',	-- anim dict or false
				AnimName = 'woman_cry_idle'	-- anim name or false
			},
			enemies = { model = 'A_M_M_WapWarriors_01', number = 10 },	-- model = 'npc model' / number = (number of bandits)
			ExecuteCommand = 'witness A person has been seen trying to save a kidnapped person',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen saving a kidnapped person',	-- Command that is executed or text that is sent to the function Notify the player save the kidnapped or false
		},
		{	-- LIMPANY
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(-362.89, -132.33, 46.86),	-- Vector3 spawn from enemies
			rewardExp = 7,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 100, 150 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			blipRadius = 45.0, -- Radius of the blip to search for the baby
			kidnapped = {
				model = 'A_F_M_ValProstitute_01',	-- npc model
				coords = vector4(-365.17, -116.58, 50.28, 238.27),	-- vector4
				AnimDict = 'script_re@campfire_massacre',	-- anim dict or false
				AnimName = 'woman_cry_idle'	-- anim name or false
			},
			enemies = { model = 'A_M_M_MOONSHINERS_01', number = 9 },	-- model = 'npc model' / number = (number of bandits)
			ExecuteCommand = 'witness A person has been seen trying to save a kidnapped person',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A person has been seen saving a kidnapped person',	-- Command that is executed or text that is sent to the function Notify the player save the kidnapped or false
		},
	},

-- ================ PRISIONER ================
	Prisioner = {
		{	-- FIRWOOD RISE
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(170.96, 916.22, 196.06, 308.18),	-- vector4 on main roads
			rewardExp = 13,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 150, 200 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			prisionerModel = 'A_M_M_SkpPrisoner_01',	-- prisionerModel = (prisoner model)
			enemiesHorse = { model = 'S_M_Y_Army_01', number = 13 },	-- model = 'npc model' / number = (number of bandits)
			ExecuteCommand = 'witness A bandit has been seen trying to steal a prisoner cart',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A bandit has been seen freeing a prisoner from an assaulted cart',	-- Command that is executed or text that is sent to the function Notify the player releases the prisoner or false
		},
		{	-- BROKEN TREE
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(-1444.84, -1266.05, 79.47, 39.26),	-- vector4 on main roads
			rewardExp = 13,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 150, 200 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			prisionerModel = 'A_M_M_SkpPrisonLine_01',	-- prisionerModel = (prisoner model)
			enemiesHorse = { model = 'S_M_M_Army_01', number = 8 },	-- model = 'npc model' / number = (number of bandits)
			ExecuteCommand = 'witness A bandit has been seen trying to steal a prisoner cart',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A bandit has been seen freeing a prisoner from an assaulted cart',	-- Command that is executed or text that is sent to the function Notify the player releases the prisoner or false
		},
		{	-- VETTER'S ECHO
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(-2187.96, 490.8, 118.7, 74.38),	-- vector4 on main roads
			rewardExp = 13,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 150, 200 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			prisionerModel = 'CS_Mickey',	-- prisionerModel = (prisoner model)
			enemiesHorse = { model = 'A_M_M_JamesonGuard_01', number = 10 },	-- model = 'npc model' / number = (number of bandits)
			ExecuteCommand = 'witness A bandit has been seen trying to steal a prisoner cart',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A bandit has been seen freeing a prisoner from an assaulted cart',	-- Command that is executed or text that is sent to the function Notify the player releases the prisoner or false
		},
		{	-- VAN HORN MANSION (south)
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(2728.41, 55.49, 52.3, 174.62),	-- vector4 on main roads
			rewardExp = 13,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 150, 200 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			prisionerModel = 'CS_Meredith',	-- prisionerModel = (prisoner model)
			enemiesHorse = { model = 'A_M_M_UniCoachGuards_01', number = 12 },	-- model = 'npc model' / number = (number of bandits)
			ExecuteCommand = 'witness A bandit has been seen trying to steal a prisoner cart',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A bandit has been seen freeing a prisoner from an assaulted cart',	-- Command that is executed or text that is sent to the function Notify the player releases the prisoner or false
		},
		{	-- BOLGER GLADE
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(1511.21, -1700.56, 60.7, 82.96),	-- vector4 on main roads
			rewardExp = 13,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 150, 200 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			prisionerModel = 'CS_Magnifico',	-- prisionerModel = (prisoner model)
			enemiesHorse = { model = 'mp_s_m_m_cornwallguard_01', number = 9 },	-- model = 'npc model' / number = (number of bandits)
			ExecuteCommand = 'witness A bandit has been seen trying to steal a prisoner cart',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A bandit has been seen freeing a prisoner from an assaulted cart',	-- Command that is executed or text that is sent to the function Notify the player releases the prisoner or false
		},
		{	-- PIKES BASIN (ARMADILLO)
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector4(-2787.38, -2559.8, 61.81, 284.98),	-- vector4 on main roads
			rewardExp = 13,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 150, 200 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			prisionerModel = 'CS_GermanSon',	-- prisionerModel = (prisoner model)
			enemiesHorse = { model = 'S_M_M_ValBankGuards_01', number = 13 },	-- model = 'npc model' / number = (number of bandits)
			ExecuteCommand = 'witness A bandit has been seen trying to steal a prisoner cart',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A bandit has been seen freeing a prisoner from an assaulted cart',	-- Command that is executed or text that is sent to the function Notify the player releases the prisoner or false
		},
	},

-- ================ TRAIN ================
	Train = {
		{	-- CLAWSON'S REST
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(-388.24, 1324.67, 150.91),	-- Vector3 coordinates on the train tracks
			rewardExp = 20,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 200, 250 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			train = 'passager',	-- 'passager', 'trade', 'industrial1', 'industrial2', 'bountyhunter', 'military' or false to make it random
			enemiesWagons = { model = 'S_M_M_UniTrainGuards_01', number = 5},	-- model = 'npc model' / number = (amount of enemies per wagon max.15) 
			enemiesHorse = { model = 'S_M_M_UniTrainGuards_01', number = 5, distanceSpawn = 15 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance spawn enemies on horseback from the robbery)
			ExecuteCommand = 'witness A bandit has been seen intending to rob a train',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A bandit has been seen robbing a train',	-- Command that is executed or text that is sent to the Notify function when the train spawns or false
			RequireClear = true, -- Enemies must be eliminated before start the robbery
			-- JobsRequired = {	-- { Amount = number, Jobs = { 'Example1', 'Example2' } } or false
			-- 	Amount = 1,
			-- 	Jobs = {
			-- 		'sheriff', 
			-- 		'police',
			-- 	},
			-- },
		},
		{	-- CITADEL ROCK
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(76.1, 637.48, 118.52),	-- Vector3 coordinates on the train tracks
			rewardExp = 20,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 200, 250 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			train = 'trade',	-- 'passager', 'trade', 'industrial1', 'industrial2', 'bountyhunter', 'military' or false to make it random
			enemiesWagons = { model = 'G_M_M_UniCriminals_02', number = 8},	-- model = 'npc model' / number = (amount of enemies per wagon max.15) 
			enemiesHorse = { model = 'G_M_M_UniCriminals_01', number = 10, distanceSpawn = 15 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance spawn enemies on horseback from the robbery)
			ExecuteCommand = 'witness A bandit has been seen intending to rob a train',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A bandit has been seen robbing a train',	-- Command that is executed or text that is sent to the Notify function when the train spawns or false
			RequireClear = true, -- Enemies must be eliminated before start the robbery
			-- JobsRequired = {	-- { Amount = number, Jobs = { 'Example1', 'Example2' } } or false
			-- 	Amount = 1,
			-- 	Jobs = {
			-- 		'sheriff', 
			-- 		'police',
			-- 	},
			-- },
		},
		{	-- CALIGA HALL
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(1674.91, -1642.36, 55.25),	-- Vector3 coordinates on the train tracks
			rewardExp = 20,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 200, 250 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			train = 'military',	-- 'passager', 'trade', 'industrial1', 'industrial2', 'bountyhunter', 'military' or false to make it random
			enemiesWagons = { model = 'S_M_M_AmbientBlWPolice_01', number = 8},	-- model = 'npc model' / number = (amount of enemies per wagon max.15) 
			enemiesHorse = { model = 'S_M_M_MARSHALLSRURAL_01', number = 7, distanceSpawn = 15 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance spawn enemies on horseback from the robbery)
			ExecuteCommand = 'witness A bandit has been seen intending to rob a train',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A bandit has been seen robbing a train',	-- Command that is executed or text that is sent to the Notify function when the train spawns or false
			RequireClear = true, -- Enemies must be eliminated before start the robbery
			-- JobsRequired = {	-- { Amount = number, Jobs = { 'Example1', 'Example2' } } or false
			-- 	Amount = 1,
			-- 	Jobs = {
			-- 		'sheriff', 
			-- 		'police',
			-- 	},
			-- },
		},
		{	-- VAN HORN MANSION (south)
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(2663.86, 142.07, 55.01),	-- Vector3 coordinates on the train tracks
			rewardExp = 20,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 200, 250 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			train = false,	-- 'passager', 'trade', 'industrial1', 'industrial2', 'bountyhunter', 'military' or false to make it random
			enemiesWagons = { model = 'S_M_M_Army_01', number = 10},	-- model = 'npc model' / number = (amount of enemies per wagon max.15) 
			enemiesHorse = { model = 'S_M_M_Army_01', number = 10, distanceSpawn = 15 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance spawn enemies on horseback from the robbery)
			ExecuteCommand = 'witness A bandit has been seen intending to rob a train',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A bandit has been seen robbing a train',	-- Command that is executed or text that is sent to the Notify function when the train spawns or false
			RequireClear = true, -- Enemies must be eliminated before start the robbery
			-- JobsRequired = {	-- { Amount = number, Jobs = { 'Example1', 'Example2' } } or false
			-- 	Amount = 1,
			-- 	Jobs = {
			-- 		'sheriff', 
			-- 		'police',
			-- 	},
			-- },
		},
		{	-- ABANDONED TRADING POST
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(2448.78, 2118.45, 172.3),	-- Vector3 coordinates on the train tracks
			rewardExp = 20,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 200, 250 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			train = 'passager',	-- 'passager', 'trade', 'industrial1', 'industrial2', 'bountyhunter', 'military' or false to make it random
			enemiesWagons = { model = 'G_M_Y_UniExConfeds_01', number = 4},	-- model = 'npc model' / number = (amount of enemies per wagon max.15) 
			enemiesHorse = { model = 'G_M_Y_UNIEXCONFEDS_02', number = 9, distanceSpawn = 15 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance spawn enemies on horseback from the robbery)
			ExecuteCommand = 'witness A bandit has been seen intending to rob a train',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A bandit has been seen robbing a train',	-- Command that is executed or text that is sent to the Notify function when the train spawns or false
			RequireClear = true, -- Enemies must be eliminated before start the robbery
			-- JobsRequired = {	-- { Amount = number, Jobs = { 'Example1', 'Example2' } } or false
			-- 	Amount = 1,
			-- 	Jobs = {
			-- 		'sheriff', 
			-- 		'police',
			-- 	},
			-- },
		},
		{	-- GAPTOOTH BERACH
			locations = { 'all' },	-- { (Id of the locations or 'all')}
			coords = vector3(-5829.28, -3249.12, -20.26),	-- Vector3 coordinates on the train tracks
			rewardExp = 20,	-- Experience reward for localization job
			rewardCurrency = { type = 0, amount = { 200, 250 } },	-- type (0 = money, 1 = gold, 2 = rol), amount (number, false to disable rewardCurrency or { min, max })
			rewardItems = false,	-- list of items or false
			train = 'trade',	-- 'passager', 'trade', 'industrial1', 'industrial2', 'bountyhunter', 'military' or false to make it random
			enemiesWagons = { model = 'S_M_M_FussarHenchman_01', number = 9},	-- model = 'npc model' / number = (amount of enemies per wagon max.15) 
			enemiesHorse = { model = 'S_M_M_FussarHenchman_01', number = 8, distanceSpawn = 15 },	-- model = 'npc model' / number = (number of bandits) / distanceSpawn = (distance spawn enemies on horseback from the robbery)
			ExecuteCommand = 'witness A bandit has been seen intending to rob a train',	-- Command that is executed or text that is sent to the Notify function when starting the job or false
			ExecuteCommand2 = 'witness A bandit has been seen robbing a train',	-- Command that is executed or text that is sent to the Notify function when the train spawns or false
			RequireClear = true, -- Enemies must be eliminated before start the robbery
			-- JobsRequired = {	-- { Amount = number, Jobs = { 'Example1', 'Example2' } } or false
			-- 	Amount = 1,
			-- 	Jobs = {
			-- 		'sheriff', 
			-- 		'police',
			-- 	},
			-- },
		},
	},
}