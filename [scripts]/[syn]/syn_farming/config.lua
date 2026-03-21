Config = {}
Config.vorp = true 
Config.redem = false
Config.debug = false 
Config.keys = {
    ["G"] = 0x760A9C6F,
    ["F"] = 0xB2F377E8,
	["BACKSPACE"] = 0x156F7119,
    ["ENTER"] = 0xC7B5340A,
	["E"] = 0xCEFD9220,
	["SHIFT"] = 0x8FFC75D6,
	["LALT"] = 0x8AAA0AD4,
	["B"] = 0x4CC0E2FE,
	["up"] = 0xE6F612E4,


}
Config.drawtext = true -- turn this on if ur harvest button doesnt show when plant is green
Config.requestupdatetime = 2 -- time in minutes between requests for farm information updates from database




Config.timesave = 5 -- save info every 5 minutes to database
Config.totallife = 6 -- plants will be deleted after 6 restart cycles as per the times specifed above

Config.onlyowner = false -- turn to true if you only want to allow owner of plants to interact with plants.

Config.watercanitems = {"wateringcan", "wateringcan_dirtywater"}
Config.emptycan = "wateringcan_empty"
Config.cleanwateritem = "wateringcan"
Config.dirtywateritem = "wateringcan_dirtywater"
Config.trimmeritem = "planttrimmer"
Config.plantingitem = "hoe"
Config.render = 20 -- render distance of plants
Config.plantspace = 1.5 -- space required between plants
Config.totalplants = 30 -- total number of allowed plants

Config.blip = -675651933 -- blip sprite

Config.removebucketcommand = "cbucket" -- remove bucket from hand

Config.adminwebhook = "https://discord.com/api/webhooks/1471621732342304921/MCgFYsc3KojyIXdSvNxYV1QLAMwsJDlWTzsGGv9s5dm82JkU8A9aV6mp0XCyo9PlLcUg"
Config.webhookavatar = "https://www.freepngimg.com/thumb/cartoon/84544-farm-play-agriculture-recreation-tractor-free-transparent-image-hd.png"

----- result of plant health reaching 0 only select one of the 2 
Config.minigame = true -- disable minigame and disregard everything in this section
Config.healthlossonfail = 10 -- how many health points do plants lose on failed tasks
Config.plantdestructionhp = 0 -- destory and remove plant on 0 plant hp
Config.plantredhp = 50 -- reduce harvest at this plant hp
Config.nohealthsubamount = 2 -- how much to reduce produce by when plant health reaches above indicated health // if harvest reaches 0 or below it will be set automatically to 1 
Config.ragdollonfail = true 
Config.maxdiff = 1000 -- cant get more difficult than this (lower = more difficult)
Config.diffinc = 500 -- difficulty increate on task failure (higher number the more difficult a task gets on fail)

------------------------------------------------

-- jobs listed as farmer jobs will be allowed to plant more plants than normal jobs. you can configure them below
Config.farmerjobs = {"farmer","mcfarmer"} -- jobs which are allowed to plant more 
Config.maxperplant = 30 -- 5 more plants on top of the original plant limit 
Config.maxtotal = 60  -- total plants instead of the normal total 


-- wagons that can store water and how many buckets they can store 
Config.waterwagons = {
	["oilWagon01x"] = 60,
	["oilWagon02x"] = 60,
	["cart05"] = 60
}

-- towns where players cant plant
Config.towns = {
	'Annesburg',
	'Armadillo', 
	'Blackwater', 
	'Rhodes', 
	'Siska', 
	'StDenis', 
	'Strawberry', 
	'Tumbleweed', 
	'Valentine', 
	'Vanhorn', 
}

Config.seeds = {
    ["Alaskan Ginseng"] = {
		prop = "alaskanginseng_p",--Spawned prop
		seedname = "Alaskan_Ginseng_Seed",--Seed item
		seedreq = 1,--How many seeds are required to plant 
		rewarditem = {{count = 5, name = "Alaskan_Ginseng", label = "Alaskan Ginseng"}},--Produce
		timetowater = 15, -- at the 3rd minute of growth plant growth is stunned until watered
		maxcount = 30, -- maximum number of plants of this type allowed
        offset = 0.2, -- use if plant is floating, determins how much lower to spawn the plant        
        fert = "fertilizer", --fertilizers jump the time to water time making farming take half the time 
        trimboost = 2, -- trimming adds +2 to all reward counts
		totaltime = 30, -- total growth time of plant
		health = 100, -- total plant health, this effects how many times a player can screw up tasks before the plant is destroyed
		joblocked = 0, -- keep 0 if you dont want to job lock it otherwise use {"job1"}, or {"job1","job2","job3"}
		difficulty = 4000,-- how difficult it is to do tasks related to this plant
	},
	["Pumpkin"] = {
		prop = "p_pumpkin_02x",--Spawned prop
		seedname = "pumpkinseeds",--Seed item
		seedreq = 1,--How many seeds are required to plant 
		rewarditem = {{count = 1, name = "pumpkin", label = "Pumpkin"}},--Produce
		timetowater = 15, -- at the 3rd minute of growth plant growth is stunned until watered
		maxcount = 30, -- maximum number of plants of this type allowed
        offset = 0.2, -- use if plant is floating, determins how much lower to spawn the plant        
        fert = "fertilizer", --fertilizers jump the time to water time making farming take half the time 
        trimboost = 2, -- trimming adds +2 to all reward counts
		totaltime = 30, -- total growth time of plant
		health = 100, -- total plant health, this effects how many times a player can screw up tasks before the plant is destroyed
		joblocked = 0, -- keep 0 if you dont want to job lock it otherwise use {"job1"}, or {"job1","job2","job3"}
		difficulty = 2000,-- how difficult it is to do tasks related to this plant
	},
	["American Ginseng"] = {
		prop = "ginseng_p",
		seedname = "American_Ginseng_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "American_Ginseng", label = "American Ginseng"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Hop"] = {
		prop = "s_milkweed01x",
		seedname = "hop_seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "hop", label = "hop"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 2000,
		totaltime = 30,

	},

	["Black Berry"] = {
		prop = "blackcurrant_p",
		seedname = "Black_Berry_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Black_Berry", label = "Black Berry"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Black Currant"] = {
		prop = "blackcurrant_p",
		seedname = "Black_Currant_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Black_Currant", label = "Black Currant"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Blood Flower"] = {
		prop = "mp005_bloodflower_p",
		seedname = "Blood_Flower_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Blood_Flower", label = "Blood Flower"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},


	["Choc Daisy"] = {
		prop = "mp005_chocdaisy_p",
		seedname = "Choc_Daisy_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Choc_Daisy", label = "Choc Daisy"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Coffee"] = {
		prop = "crp_tobaccoplant_ac_sim",
		seedname = "coffeeseeds",
		seedreq = 1,
		rewarditem = {{count = 5, name = "coffeebeans", label = "Coffee Beans"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Creekplum"] = {
		prop = "mp005_cardinalflw_p",
		seedname = "Creekplum_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Creekplum", label = "Creekplum"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Creeking Thyme"] = {
		prop = "thyme_p",
		seedname = "Creeking_Thyme_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Creeking_Thyme", label = "Creeking Thyme"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Crows Garlic"] = {
		prop = "crowsgarlic_p",
		seedname = "Crows_Garlic_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Crows_Garlic", label = "Crows Garlic"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["English Mace"] = {
		prop = "engmace_p",
		seedname = "English_Mace_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "English_Mace", label = "English Mace"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Indian Tobbaco"] = {
		prop = "s_indiantobaccopicked01x",
		seedname = "Indian_Tobbaco_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Indian_Tobbaco", label = "Indian Tobbaco"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 2500,
		totaltime = 40,

	},

	["Milk Weed"] = {
		prop = "s_milkweed01x",
		seedname = "Milk_Weed_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Milk_Weed", label = "Milk Weed"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Oleander Sage"] = {
		prop = "humbirdsage_p",
		seedname = "Oleander_Sage_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Oleander_Sage", label = "Oleander Sage"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Oregano"] = {
		prop = "oregano_p",
		seedname = "Oregano_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Oregano", label = "Oregano"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Parasol Mushroom"] = {
		prop = "s_inv_parasol",
		seedname = "Parasol_Mushroom_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Parasol_Mushroom", label = "Parasol Mushroom"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Prairie Poppy"] = {
		prop = "prariepoppy_p",
		seedname = "Prairie_Poppy_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Prairie_Poppy", label = "Prairie Poppy"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Red Raspberry"] = {
		prop = "s_inv_raspberry01x",
		seedname = "Red_Raspberry_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Red_Raspberry", label = "Red Raspberry"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Red Sage"] = {
		prop = "redsage_p",
		seedname = "Red_Sage_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Red_Sage", label = "Red Sage"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Tea"] = {
		prop = "crp_tobaccoplant_aa_sim",
		seedname = "teaseeds",
		seedreq = 1,
		rewarditem = {{count = 5, name = "tealeaf", label = "Tea"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 2500,
		totaltime = 40,

	},

	["Wild Carrot"] = {
		prop = "wildcarrot_p",
		seedname = "Wild_Carrot_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Wild_Carrot", label = "Wild Carrot"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Wild Mint"] = {
		prop = "s_inv_wildmint01x",
		seedname = "Wild_Mint_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Wild_Mint", label = "Wild Mint"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Wintergreen Berry"] = {
		prop = "s_inv_wintergreen01bx",
		seedname = "Wintergreen_Berry_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Wintergreen_Berry", label = "Wintergreen Berry"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Yarrow"] = {
		prop = "yarrow03_p",
		seedname = "Yarrow_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Yarrow", label = "Yarrow"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Corn"] = {
		prop = "crp_cornstalks_bb_sim",
		seedname = "cornseed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "corn", label = "Corn"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Apple"] = {
		prop = "p_tree_orange_01",
		seedname = "Apple_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "apple", label = "apple"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.5,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 3000,
		totaltime = 50,

	},

	["Sugar"] = {
		prop = "crp_sugarcane_ac_sim",
		seedname = "sugarcaneseed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "sugar", label = "sugar"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 2000,
		totaltime = 30,

	},
		["wheat"] = {
		prop = "crp_wheat_dry_aa_sim",
		seedname = "wheatseed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "wheat", label = "Wheat"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 2000,
		totaltime = 30,

	},
		["Wild Rhubarb"] = {
		prop = "mp005_rhubarb_p",
		seedname = "Wild_Rhubarb_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Wild_Rhubarb", label = "Wild Rhubarb"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 2000,
		totaltime = 30,

	},

		["cotton"] = {
		prop = "crp_cotton_be_sim",
		seedname = "cottonseed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "cotton", label = "cotton"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 2000,
		totaltime = 30,

	},

	["Potato"] = {
		prop = "crp_potato_aa_sim",
		seedname = "potatoseed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "potato", label = "Potato"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Bitter Weed"] = {
		prop = "mp005_s_inv_bitterweed01dx",
		seedname = "Bitter_Weed_Seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "Bitter_Weed", label = "Bitter Weed"}},    
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},
		["Cocoa"] = {
		prop = "crp_tobaccoplant_ac_sim",
		seedname = "cocoaseeds",
		seedreq = 1,
		rewarditem = {{count = 5, name = "cocoa", label = "Cocoa"}},    
		timetowater = 15,
		maxcount = 30,
        offset = 0.2,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 4000,
		totaltime = 30,

	},

	["Peach"] = {
		prop = "p_tree_orange_01",
		seedname = "peachseeds",
		seedreq = 1,
		rewarditem = {{count = 5, name = "consumable_peach", label = "Peach"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.5,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 3000,
		totaltime = 50,

	},

		["hemp"] = {
		prop = "prop_weed_01",
		seedname = "hemp_seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "hemp", label = "hemp"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.5,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 3000,
		totaltime = 30,

	},

		["weed"] = {
		prop = "prop_weed_02",
		seedname = "weed_seed",
		seedreq = 1,
		rewarditem = {{count = 5, name = "weed", label = "weed"}},
		timetowater = 15,
		maxcount = 30,
        offset = 0.5,        
        fert = "fertilizer",
        trimboost = 2,
        health = 100,
		joblocked = 0,
		difficulty = 3000,
		totaltime = 30,

	},

}

