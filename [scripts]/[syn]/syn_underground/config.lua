Config = {}
Config.vorp = true 
Config.redem = false
Config.bucketblock = 2552 -- dont change.


Config.metadata = true -- set to true when using meta data inventory update 
Config.useDecayitems = true -- set to true if you want items to decay over time
Config.Debug = false  -- only turn on when testing never leave on in live setting 

--New Item Blacklist for storage items in this list will not beable to be stored in the storage
Config.ItemBlacklist = {
    "wood",
    "stone",
    "metal",
    "p_ambpack02x",

}
Config.numPoliceDutyReq = false -- police required on duty (if u use syn society) if not using syn society set to false


Config.closestpoint =  {
    {
      name = "Valentine",
	  coords = {x =-283.83,y =806.4,z =   119.38 }
    },
    {
      name = "Saint",
	  coords = {x =2721.4562,y =-1446.0975,z =   46.2303 }
    },
    {
      name = "Armadillo",
	  coords = {x =-3742.5,y =-2600.9,z = -13.23}
    },
    {
      name = "bw",
	  coords = {x =-723.9527,y =-1242.8358,z = 44.7341}
    },
    {
      name = "rhodes",
	  coords = {x =1229.0,y =-1306.1,z =76.9}
    },
	{
		name = "anned",
		coords = {x =2955.95,y =1304.94,z =44.53}
	},
	{
		name = "vanhorn",
		coords = {x =2973.06,y =562.55,z =44.5}
	},
	{
		name = "straw",
		coords = {x =-1747.29,y =-362.9,z =169.5}
	},
	{
		name = "snow",
		coords = {x =-1459.6,y =1634.11,z =243.2}
	},
	{
		name = "tumbleweed",
		coords = {x =-5513.53,y =-2930.86,z =-2.23}
	},
}

Config.npcsales = true -- set to false to disable selling to npcs 

------- due to a problem with onesync from cfx spawning networked AI tends to crash players. this config option is a temp solution until cfx fixes the issue. 
-------enabling this makes mission AI only appear for the player that started the mission and not everyone else. once the problem is fixed from cfx u can disable this option.
Config.solomissions = false 
------
Config.extracartpeds = 10 -- number of enemies that spawn in the extra carts for higher level missions, keep low if a single player is expected to solo the missions 


Config.invpath = "nui://vorp_inventory/html/img/items/" -- this is the inventory path for vorp, change it to your redem one if ur using redem
Config.keys = {
    ["G"] = 0x760A9C6F,
    ["F"] = 0xB2F377E8,
	["BACKSPACE"] = 0x156F7119,
    ["ENTER"] = 0xC7B5340A,

}
-------ONLY ENABLE 1 raid setting
Config.raidpoliceonly = false  -- only police can raid 
Config.raidanyone = true  -- anyone who owns a hideout can raid
Config.disableraid = false -- disable raiding hideouts 
------
--- 139 = 1:39 , 1800 = 18:00 
--(always 1 minute less when u insert it in the list)
-- so if ur restart is at 18:00 u would insert 1759 

Config.restarttime = {059,859,1259,1759} --this is the server restart time    --00:00,06:00,12:00,18:00 

------

Config.jobs = {"realestate"} 
Config.police = {"police","marshal"}
Config.adminsseehideouts = false  
Config.raidonlineonly = true -- if true raids can only happen if owner is online
Config.raiddays = 3 -- only allow raids to happen after 1 day from when the last raid happened 
Config.raidtimer = 10 -- minutes time before raid starts (time owner has to get to shack to defend it)
Config.lockpickitem = "lockpick"
Config.raidendtimer = 20 -- minutes from the time the break in happens where anyone can enter the shack
Config.getoutcommand = "getout" -- command used incase players get stuck in the shack without a way out 
Config.getoutcoords = vector3(1514.6, 438.11, 89.93) -- teleports them here 
Config.pianocooldown = 5 -- minutes
Config.pianodiff = 5000 -- high number = easier dont change if u dont know 
Config.pianomin = 800
Config.pianomax = 1000
Config.skillcheckint = 10 -- seconds a skill check will happen when playing piano
Config.pianosenariomale = "PROP_HUMAN_PIANO"
Config.pianosenariofemale = "PROP_HUMAN_ABIGAIL_PIANO"
Config.pianominigame = true -- enable piano mini game that pays based on score out side of bar
Config.pianominigamepaymult = 1 -- pays score * this value.
Config.pianoMaxReward = 20 -- max amount of successful skill checks that can be converted into cash per payout
Config.reporttopoliceonsale = true 
Config.reportchance = 6 -- higher the more chance it will report. highest is 10 
Config.sellchance = 7 -- higher the more chance of a sale 
Config.themes = { 
	{label = "Floral",hash = 'mp006_mshine_theme_floral', price = 100},
	{label = "Goth",hash = 'mp006_mshine_theme_goth', price = 200},
	{label = "Hunter",hash = 'mp006_mshine_theme_hunter', price = 50},
	{label = "Refined",hash = 'mp006_mshine_theme_refined', price = 300},
}
---------------------Fred metabolism----------------
Config.fredmeta = true 
Config.almondshunger = 10
Config.almondsthirst = -10
Config.almondsmeta = 5
Config.moonshinehunger = -10 
Config.moonshinethirst = 30
Config.moonshinemeta = 5
Config.blipnamechangecost = 100
---------------------------------------------------
----------------BOOKIE---------------
Config.bookieprice = 250
Config.hideoutcut = 0.1 -- 10% of pot goes to hideout ledger
Config.fighterhealthmin = 100 
Config.fighterhealthmax = 200 
Config.bookiepedmodels ={
	'U_M_M_ODriscollBrawler_01',
	'U_M_M_BHT_ODRISCOLLSLEEPING',
	'U_M_M_BHT_ODRISCOLLMAULED',
	'U_M_M_BHT_ODRISCOLLDRUNK',
	'CS_ColmODriscoll',
}
--------------------------------
----------------Drinking---------------
Config.drunkamountincrease = 200.0
Config.drunkscreenincrease = 0.5
Config.drunkamountdecrease = 100.0
Config.drunkscreendecrease = 0.2
Config.drunktimercheck = 60 -- seconds
--------------------------------
Config.stilltypes = { --work
	["1"] = {
		cooks = 15, 
		stilllevel = 1,
		stilltype = "mp006_mshine_Still_01", 
		parts = { 
			{label = "Condenser", name = "condenser", amount = 3},
			{label = "Copper Pipe", name = "pipecopper", amount = 5},
		}
	},
	["2"]  = {
		cooks = 17, 
		stilllevel = 2,
		stilltype = "mp006_mshine_Still_02", 
		parts = { 
			{label = "Condenser", name = "condenser", amount = 3},
			{label = "Distillery Pot", name = "pot", amount = 5},
			{label = "Rubber Tube", name = "rubbertube", amount = 10},
		}
	},
	["3"]  ={
		cooks = 22, 
		stilllevel = 3,
		stilltype = "mp006_mshine_Still_03", 
		parts = { 
			{label = "Still Kit", name = "stillkit", amount = 5},
			{label = "Barrel", name = "barrel", amount = 10},
			{label = "Condenser", name = "condenser", amount = 3},
			{label = "Copper Pipe", name = "pipecopper", amount = 5},
			{label = "Distillery Pot", name = "pot", amount = 5},
			{label = "Rubber Tube", name = "rubbertube", amount = 5},
		}
	},
}
Config.mashrecipies = {
	{
		label = "Alcohol", -- must match DB label
		resultitem = "alcohol",-- must match DB name 
		limit = 100 , -- must match DB limit 
		qt = 25,-- reward amount 
		mashtime = 4, -- in minutes (10 minimum)
		stilllevel = 1,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Hop", name = "hop", amount = 3},
		}
	},
    {
		label = "Blackberry Mash", -- must match DB label
		resultitem = "mashblackberry",-- must match DB name 
		limit = 100 , -- must match DB limit 
		qt = 5,-- reward amount 
		mashtime = 20, -- in minutes (10 minimum)
		stilllevel = 1,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Alcohol", name = "alcohol", amount = 2},
            {label = "Black Berry", name = "Black_Berry", amount = 2},
            {label = "Glass Bottle", name = "glassbottle", amount = 5},
		}
	},
    {
		label = "Raspberry Mash", -- must match DB label
		resultitem = "mashraspberry",-- must match DB name 
		limit = 100 , -- must match DB limit 
		qt = 5,-- reward amount 
		mashtime = 20, -- in minutes (10 minimum)
		stilllevel = 1,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Alcohol", name = "alcohol", amount = 2},
            {label = "Red Raspberry", name = "Red_Raspberry", amount = 2},
            {label = "Glass Bottle", name = "glassbottle", amount = 5},
		}
	},
    {
		label = "Apple Mash", -- must match DB label
		resultitem = "mashapple",-- must match DB name 
		limit = 100 , -- must match DB limit 
		qt = 5,-- reward amount 
		mashtime = 20, -- in minutes (10 minimum)
		stilllevel = 1,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Alcohol", name = "alcohol", amount = 2},
            {label = "Apple", name = "apple", amount = 2},
            {label = "Glass Bottle", name = "glassbottle", amount = 5},
		}
	},
    {
		label = "Peach Mash", -- must match DB label (tier 2 distillery)
		resultitem = "mashpeach",-- must match DB name 
		limit = 100 , -- must match DB limit 
		qt = 5,-- reward amount 
		mashtime = 20, -- in minutes (10 minimum)
		stilllevel = 2,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Alcohol", name = "alcohol", amount = 2},
            {label = "Peach", name = "consumable_peach", amount = 5},
            {label = "Glass Bottle", name = "glassbottle", amount = 5},
		}
	},
    {
		label = "Creekplum Mash", -- must match DB label
		resultitem = "mashplum",-- must match DB name 
		limit = 100 , -- must match DB limit 
		qt = 5,-- reward amount 
		mashtime = 20, -- in minutes (10 minimum)
		stilllevel = 2,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Alcohol", name = "alcohol", amount = 2},
            {label = "Creekplum", name = "Creekplum", amount = 5},
            {label = "Glass Bottle", name = "glassbottle", amount = 5},
		}
	},
    {
		label = "Alaskan Ginseng Mash", -- must match DB label
		resultitem = "mashalaskan",-- must match DB name 
		limit = 100 , -- must match DB limit 
		qt = 5,-- reward amount 
		mashtime = 20, -- in minutes (10 minimum)
		stilllevel = 2,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Alcohol", name = "alcohol", amount = 2},
            {label = "Alaskan Ginseng", name = "Alaskan_Ginseng", amount = 5},
            {label = "Glass Bottle", name = "glassbottle", amount = 5},
		}
	},
    {
		label = "American Ginseng Mash", -- must match DB label
		resultitem = "mashamerican",-- must match DB name 
		limit = 100 , -- must match DB limit 
		qt = 5,-- reward amount 
		mashtime = 20, -- in minutes (10 minimum)
		stilllevel = 2,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Alcohol", name = "alcohol", amount = 2},
            {label = "American Ginseng", name = "American_Ginseng", amount = 5},
            {label = "Glass Bottle", name = "glassbottle", amount = 5},
		}
	},
    {
		label = "Blackberry Mash 90p", -- must match DB label (Tier 3 distillery)
		resultitem = "mashblackberry90p",-- must match DB name 
		limit = 100 , -- must match DB limit 
		qt = 5,-- reward amount 
		mashtime = 20, -- in minutes (10 minimum)
		stilllevel = 3,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Alcohol", name = "alcohol", amount = 4},
            {label = "Black Berry", name = "Black_Berry", amount = 4},
            {label = "Glass Bottle", name = "glassbottle", amount = 5},
		}
	},
    {
		label = "Raspberry Mash 90p", -- must match DB label
		resultitem = "mashraspberry90p",-- must match DB name 
		limit = 100 , -- must match DB limit 
		qt = 5,-- reward amount 
		mashtime = 20, -- in minutes (10 minimum)
		stilllevel = 3,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Alcohol", name = "alcohol", amount = 4},
            {label = "Red Raspberry", name = "Red_Raspberry", amount = 5},
            {label = "Glass Bottle", name = "glassbottle", amount = 5},
		}
	},
    {
		label = "Strong Mash Batch", -- must match DB label
		resultitem = "mashstrong",-- must match DB name 
		limit = 100 , -- must match DB limit 
		qt = 5,-- reward amount 
		mashtime = 20, -- in minutes (10 minimum)
		stilllevel = 3,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Alcohol", name = "alcohol", amount = 5},
            {label = "Hop", name = "hop", amount = 1},
            {label = "Glass Bottle", name = "glassbottle", amount = 5},
		}
	},
}
Config.distillrecipies = {
	{
		label = "Blackberry Moonshine", -- must match DB label
		resultitem = "moonshineblackberry",-- must match DB name 
		distill = true, -- mark false if u only wana list it as an item sellable to peds not a distill item
		limit = 15 , -- must match DB limit 
		qt = 15, -- reward amount 
		sellprice = 35, -- per item 
		stilltime = 20, -- in minutes
		stilllevel = 1,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Blackberry Mash", name = "mashblackberry", amount = 1},
            {label = "Glass Bottle", name = "glassbottle", amount = 15},
            {label = "Sugar", name = "sugar", amount = 1},

		}
	},
    {
		label = "Raspberry Moonshine", -- must match DB label
		resultitem = "moonshineraspberry",-- must match DB name 
		distill = true, -- mark false if u only wana list it as an item sellable to peds not a distill item
		limit = 15 , -- must match DB limit 
		qt = 15, -- reward amount 
		sellprice = 35, -- per item 
		stilltime = 20, -- in minutes
		stilllevel = 1,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Raspberry Mash", name = "mashraspberry", amount = 1},
            {label = "Glass Bottle", name = "glassbottle", amount = 15},
            {label = "Sugar", name = "sugar", amount = 1},

		}
	},
    {
		label = "Apple Moonshine", -- must match DB label
		resultitem = "moonshineapple",-- must match DB name 
		distill = true, -- mark false if u only wana list it as an item sellable to peds not a distill item
		limit = 15 , -- must match DB limit 
		qt = 15, -- reward amount 
		sellprice = 35, -- per item 
		stilltime = 20, -- in minutes
		stilllevel = 1,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Apple Mash", name = "mashapple", amount = 1},
            {label = "Glass Bottle", name = "glassbottle", amount = 15},
            {label = "Sugar", name = "sugar", amount = 1},

		}
	},
    {
		label = "Peach Moonshine", -- must match DB label
		resultitem = "moonshinepeach",-- must match DB name 
		distill = true, -- mark false if u only wana list it as an item sellable to peds not a distill item
		limit = 15 , -- must match DB limit 
		qt = 15, -- reward amount 
		sellprice = 40, -- per item 
		stilltime = 20, -- in minutes
		stilllevel = 2,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Apple Mash", name = "mashpeach", amount = 2},
            {label = "Glass Bottle", name = "glassbottle", amount = 15},
            {label = "Sugar", name = "sugar", amount = 1},

		}
	},
    {
		label = "Plum Moonshine", -- must match DB label
		resultitem = "moonshineplum",-- must match DB name 
		distill = true, -- mark false if u only wana list it as an item sellable to peds not a distill item
		limit = 15 , -- must match DB limit 
		qt = 15, -- reward amount 
		sellprice = 35, -- per item 
		stilltime = 20, -- in minutes
		stilllevel = 2,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Plum Mash", name = "mashplum", amount = 2},
            {label = "Glass Bottle", name = "glassbottle", amount = 15},
            {label = "Sugar", name = "sugar", amount = 1},

		}
	},
    {
		label = "Alaskan Gin Moonshine", -- must match DB label
		resultitem = "moonshinealaskan",-- must match DB name 
		distill = true, -- mark false if u only wana list it as an item sellable to peds not a distill item
		limit = 15 , -- must match DB limit 
		qt = 15, -- reward amount 
		sellprice = 40, -- per item 
		stilltime = 20, -- in minutes
		stilllevel = 2,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Alaskan Gin Mash", name = "mashalaskan", amount = 2},
            {label = "Glass Bottle", name = "glassbottle", amount = 15},
            {label = "Sugar", name = "sugar", amount = 1},

		}
	},
    {
		label = "American Gin Moonshine", -- must match DB label
		resultitem = "moonshineamerican",-- must match DB name 
		distill = true, -- mark false if u only wana list it as an item sellable to peds not a distill item
		limit = 15 , -- must match DB limit 
		qt = 15, -- reward amount 
		sellprice = 35, -- per item 
		stilltime = 20, -- in minutes
		stilllevel = 2,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "American Gin Mash", name = "mashamerican", amount = 2},
            {label = "Glass Bottle", name = "glassbottle", amount = 15},
            {label = "Sugar", name = "sugar", amount = 1},

		}
	},
    {
		label = "Moonshine", -- must match DB label
		resultitem = "moonshine",-- must match DB name 
		distill = true, -- mark false if u only wana list it as an item sellable to peds not a distill item
		limit = 15 , -- must match DB limit 
		qt = 15, -- reward amount 
		sellprice = 55, -- per item 
		stilltime = 20, -- in minutes
		stilllevel = 3,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Strong Mash Batch", name = "mashstrong", amount = 2},
            {label = "Glass Bottle", name = "glassbottle", amount = 10},
            {label = "Sugar", name = "sugar", amount = 1},

		}
	},
    {
		label = "Blackberry Moonshine 90p", -- must match DB label
		resultitem = "moonshineblackberry90p",-- must match DB name 
		distill = true, -- mark false if u only wana list it as an item sellable to peds not a distill item
		limit = 15 , -- must match DB limit 
		qt = 15, -- reward amount 
		sellprice = 50, -- per item 
		stilltime = 20, -- in minutes
		stilllevel = 3,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Blackberry Mash 90p", name = "mashblackberry90p", amount = 2},
            {label = "Glass Bottle", name = "glassbottle", amount = 10},
            {label = "Sugar", name = "sugar", amount = 1},

		}
	},
    {
		label = "Raspberry Moonshine 90p", -- must match DB label
		resultitem = "moonshineraspberry90p",-- must match DB name 
		distill = true, -- mark false if u only wana list it as an item sellable to peds not a distill item
		limit = 15 , -- must match DB limit 
		qt = 15, -- reward amount 
		sellprice = 50, -- per item 
		stilltime = 20, -- in minutes
		stilllevel = 3,
		items = {
			{label = "consumable_water", name = "consumable_water", amount = 1},
			{label = "Raspberry Mash 90p", name = "mashraspberry90p", amount = 2},
            {label = "Glass Bottle", name = "glassbottle", amount = 10},
            {label = "Sugar", name = "sugar", amount = 1},

		}
	},
	{
		label = "Syn", -- must match DB label
		resultitem = "syn",-- must match DB name 
		distill = false, -- mark false if u only wana list it as an item sellable to peds not a distill item
		sellprice = 10, -- per item 
	},
	{
		label = "Heroin", -- must match DB label
		resultitem = "heroin",-- must match DB name 
		distill = false, -- mark false if u only wana list it as an item sellable to peds not a distill item
		sellprice = 50, -- per item 
	},
	{
		label = "weed", -- must match DB label
		resultitem = "weed",-- must match DB name 
		distill = false, -- mark false if u only wana list it as an item sellable to peds not a distill item
		sellprice = 10, -- per item 
	},
	{
		label = "Hemp", -- must match DB label
		resultitem = "hemp",-- must match DB name 
		distill = false, -- mark false if u only wana list it as an item sellable to peds not a distill item
		sellprice = 20, -- per item 
	},
    
}
----------------------------------
Config.itemneededtoblowup = true -- item required to blow up vehicle and rob it 
Config.alertpoliceplayers = true -- send an alert to all police players on the server
Config.cooldown = 15 -- in minutes cool down between allowing mission start
Config.removealertcommand = "calert2"
Config.blowupitem = "dynamite"
Config.blowupitemcount = 1
Config.DetonateTimer = 10			-- time until bomb is detonated in seconds
Config.RobCartTimer = 150			-- time spent to rob the coach in seconds
Config.missionfaildist = 1000 -- if player is 500 units far from coach the mission will fail
Config.diff1 = 4000
Config.diff2 = 3500
Config.diff3 = 3200
Config.diff4 = 2900
Config.missiontype = {
	[1] = { -- mission level 
		[1] = { -- mission locations 
			loc = {x = 1599.916625, y = 855.404, z = 140.00874, h = 155.27587},
			peds = {
				    'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
			},
			weapons = {
				"WEAPON_REPEATER_WINCHESTER",
				"WEAPON_REVOLVER_DOUBLEACTION",
				"WEAPON_RIFLE_SPRINGFIELD",
				"WEAPON_RIFLE_BOLTACTION",
			},
			coach = "coach3",
			reward = {
				{label = "Condenser", name = "condenser", amount = 1,chance = 10}, -- up to 10 the higher the better
				{label = "Copper Pipe", name = "pipecopper", amount = 1,chance = 10},
				{label = "Distillery Pot", name = "pot", amount = 1,chance = 5},
				{label = "Rubber Tube", name = "rubbertube", amount = 1,chance = 5},
				{label = "dynamite", name = "dynamite", amount = 1,chance = 2},
				{label = "Alcohol", name = "alcohol", amount = 5,chance = 5},

			}
		},
        [2] = { -- mission locations 
			loc = {x = 2550.3593, y = -214.27009, z = 42.95154, h = 167.73382},
			peds = {
				    'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
			},
			weapons = {
				"WEAPON_REPEATER_WINCHESTER",
				"WEAPON_REVOLVER_DOUBLEACTION",
				"WEAPON_RIFLE_SPRINGFIELD",
				"WEAPON_RIFLE_BOLTACTION",
			},
			coach = "coach3",
			reward = {
				{label = "Condenser", name = "condenser", amount = 1,chance = 10}, -- up to 10 the higher the better
				{label = "Copper Pipe", name = "pipecopper", amount = 1,chance = 10},
				{label = "Distillery Pot", name = "pot", amount = 1,chance = 5},
				{label = "Rubber Tube", name = "rubbertube", amount = 1,chance = 5},
				{label = "dynamite", name = "dynamite", amount = 1,chance = 2},
			}
		},
        [3] = { -- mission locations 
			loc = {x = 2830.57, y = 931.54, z = 48.52, h = 204.55},
			peds = {
				    'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
			},
			weapons = {
				"WEAPON_REPEATER_WINCHESTER",
				"WEAPON_REVOLVER_DOUBLEACTION",
				"WEAPON_RIFLE_SPRINGFIELD",
				"WEAPON_RIFLE_BOLTACTION",
			},
			coach = "coach3",
			reward = {
				{label = "Condenser", name = "condenser", amount = 1,chance = 10}, -- up to 10 the higher the better
				{label = "Copper Pipe", name = "pipecopper", amount = 1,chance = 10},
				{label = "Distillery Pot", name = "pot", amount = 1,chance = 5},
				{label = "Rubber Tube", name = "rubbertube", amount = 1,chance = 5},
				{label = "dynamite", name = "dynamite", amount = 1,chance = 2},
			}
		},
	},
	[2] = {-- mission level 
		[1] = {
			loc = {x = 477.62918, y = 527.40332, z = 109.8955, h = 174.6644},
			peds = {
                'U_M_M_ODriscollBrawler_01',
                'U_M_M_BHT_ODRISCOLLMAULED',
                'U_M_M_BHT_ODRISCOLLDRUNK',
			},
			weapons = {
				"WEAPON_REPEATER_WINCHESTER",
				"WEAPON_REVOLVER_DOUBLEACTION",
				"WEAPON_RIFLE_SPRINGFIELD",
				"WEAPON_RIFLE_BOLTACTION",
			},
			coach = "coach3",
			reward = {
				{label = "Condenser", name = "condenser", amount = 1,chance = 6}, -- up to 10 the higher the better
				{label = "Copper Pipe", name = "pipecopper", amount = 1,chance = 6},
				{label = "Distillery Pot", name = "pot", amount = 1,chance = 10},
				{label = "Rubber Tube", name = "rubbertube", amount = 1,chance = 10},
				{label = "Still Kit", name = "stillkit", amount = 1,chance = 5},
				{label = "Barrel", name = "barrel", amount = 1,chance = 5},
				{label = "dynamite", name = "dynamite", amount = 1,chance = 2},
				{label = "Apple", name = "apple", amount = 5,chance = 8},
			}
		},
        [2] = {
			loc = {x = -1156.0123, y = 730.9919, z = 108.8246, h = 108.8246},
			peds = {
                'U_M_M_ODriscollBrawler_01',
                'U_M_M_BHT_ODRISCOLLMAULED',
                'U_M_M_BHT_ODRISCOLLDRUNK',
			},
			weapons = {
				"WEAPON_REPEATER_WINCHESTER",
				"WEAPON_REVOLVER_DOUBLEACTION",
				"WEAPON_RIFLE_SPRINGFIELD",
				"WEAPON_RIFLE_BOLTACTION",
			},
			coach = "coach3",
			reward = {
				{label = "Condenser", name = "condenser", amount = 1,chance = 6}, -- up to 10 the higher the better
				{label = "Copper Pipe", name = "pipecopper", amount = 1,chance = 6},
				{label = "Distillery Pot", name = "pot", amount = 1,chance = 10},
				{label = "Rubber Tube", name = "rubbertube", amount = 1,chance = 10},
				{label = "Still Kit", name = "stillkit", amount = 1,chance = 5},
				{label = "Barrel", name = "barrel", amount = 1,chance = 5},
				{label = "dynamite", name = "dynamite", amount = 1,chance = 2},
				{label = "Alcohol", name = "alcohol", amount = 5,chance = 5},
			}
		},
        [3] = {
			loc = {x = -1719.8168, y = -66.1011, z = 176.6823, h = 8.0801},
			peds = {
                'U_M_M_ODriscollBrawler_01',
                'U_M_M_BHT_ODRISCOLLMAULED',
                'U_M_M_BHT_ODRISCOLLDRUNK',
			},
			weapons = {
				"WEAPON_REPEATER_WINCHESTER",
				"WEAPON_REVOLVER_DOUBLEACTION",
				"WEAPON_RIFLE_SPRINGFIELD",
				"WEAPON_RIFLE_BOLTACTION",
			},
			coach = "coach3",
			reward = {
				{label = "Condenser", name = "condenser", amount = 1,chance = 6}, -- up to 10 the higher the better
				{label = "Copper Pipe", name = "pipecopper", amount = 1,chance = 6},
				{label = "Distillery Pot", name = "pot", amount = 1,chance = 10},
				{label = "Rubber Tube", name = "rubbertube", amount = 1,chance = 10},
				{label = "Still Kit", name = "stillkit", amount = 1,chance = 5},
				{label = "Barrel", name = "barrel", amount = 1,chance = 5},
				{label = "dynamite", name = "dynamite", amount = 1,chance = 2},
				{label = "Alcohol", name = "alcohol", amount = 5,chance = 5},
				{label = "Apple", name = "apple", amount = 5,chance = 5},

			}
		},
	},
	[3] = {-- mission level 
		[1] = {
			loc = {x = -2539.9277, y = -1369.6427, z = 151.1600, h = 287.4328},
			peds = {
                'U_M_M_ODriscollBrawler_01',
                'U_M_M_BHT_ODRISCOLLMAULED',
                'U_M_M_BHT_ODRISCOLLDRUNK',
			},
			weapons = {
				"WEAPON_REPEATER_WINCHESTER",
				"WEAPON_REVOLVER_DOUBLEACTION",
				"WEAPON_RIFLE_SPRINGFIELD",
				"WEAPON_RIFLE_BOLTACTION",
			},
			coach = "coach3",
			reward = {
				{label = "Condenser", name = "condenser", amount = 1,chance = 5}, -- up to 10 the higher the better
				{label = "Copper Pipe", name = "pipecopper", amount = 1,chance = 5},
				{label = "Distillery Pot", name = "pot", amount = 1,chance = 6},
				{label = "Rubber Tube", name = "rubbertube", amount = 1,chance = 6},
				{label = "Still Kit", name = "stillkit", amount = 1,chance = 10},
				{label = "Barrel", name = "barrel", amount = 1,chance = 10},
				{label = "dynamite", name = "dynamite", amount = 1,chance = 2},
				{label = "Alcohol", name = "alcohol", amount = 5,chance = 5},
				{label = "Apple", name = "apple", amount = 5,chance = 5},
			}
		},
        [2] = {
			loc = {x = -1854.0235, y = -1686.9230, z = 106.8346, h = 107.21614},
			peds = {
                'U_M_M_ODriscollBrawler_01',
                'U_M_M_BHT_ODRISCOLLMAULED',
                'U_M_M_BHT_ODRISCOLLDRUNK',
			},
			weapons = {
				"WEAPON_REPEATER_WINCHESTER",
				"WEAPON_REVOLVER_DOUBLEACTION",
				"WEAPON_RIFLE_SPRINGFIELD",
				"WEAPON_RIFLE_BOLTACTION",
			},
			coach = "coach3",
			reward = {
				{label = "Condenser", name = "condenser", amount = 1,chance = 5}, -- up to 10 the higher the better
				{label = "Copper Pipe", name = "pipecopper", amount = 1,chance = 5},
				{label = "Distillery Pot", name = "pot", amount = 1,chance = 6},
				{label = "Rubber Tube", name = "rubbertube", amount = 1,chance = 6},
				{label = "Still Kit", name = "stillkit", amount = 1,chance = 10},
				{label = "Barrel", name = "barrel", amount = 1,chance = 10},
				{label = "dynamite", name = "dynamite", amount = 1,chance = 2},
				{label = "Alcohol", name = "alcohol", amount = 5,chance = 5},
				{label = "Apple", name = "apple", amount = 5,chance = 5},
			}
		},
        [3] = {
			loc = {x = -881.3605, y = -742.6576, z = 59.6162, h = 110.9699},
			peds = {
                'U_M_M_ODriscollBrawler_01',
                'U_M_M_BHT_ODRISCOLLMAULED',
                'U_M_M_BHT_ODRISCOLLDRUNK',
			},
			weapons = {
				"WEAPON_REPEATER_WINCHESTER",
				"WEAPON_REVOLVER_DOUBLEACTION",
				"WEAPON_RIFLE_SPRINGFIELD",
				"WEAPON_RIFLE_BOLTACTION",
			},
			coach = "coach3",
			reward = {
				{label = "Condenser", name = "condenser", amount = 1,chance = 5}, -- up to 10 the higher the better
				{label = "Copper Pipe", name = "pipecopper", amount = 1,chance = 5},
				{label = "Distillery Pot", name = "pot", amount = 1,chance = 6},
				{label = "Rubber Tube", name = "rubbertube", amount = 1,chance = 6},
				{label = "Still Kit", name = "stillkit", amount = 1,chance = 10},
				{label = "Barrel", name = "barrel", amount = 1,chance = 10},
				{label = "dynamite", name = "dynamite", amount = 1,chance = 2},
				{label = "Alcohol", name = "alcohol", amount = 5,chance = 5},
				{label = "Apple", name = "apple", amount = 5,chance = 5},
			}
		},
	},

}
-----------------------------------
Config.moveshackcost = 800
Config.relocatecommand = "relocate"
-----------------------------------
Config.inventoryupgrade = { -- make up to 10 upgrades
	["upgrade"] = { -- first level inital inventory 
		upgradeid = 0, 
		space = 500,
		cash = true, 
		amount = 100, 
		items = true, 
		itemsreq = {
			{label = "Hard Wood", name = "hwood", amount = 5},
			{label = "Nails", name = "nails", amount = 10},
		}
	},
	["upgrade +1"] = {
		upgradeid = 1, 
		space = 100,
		cash = true, 
		amount = 100, 
		items = true, 
		itemsreq = {
			{label = "Hard Wood", name = "hwood", amount = 5},
			{label = "Nails", name = "nails", amount = 10},
            {label = "Clay", name = "clay", amount = 5},

		}
	},
	["upgrade +2"] = {
		upgradeid = 2, 
		space = 150,
		cash = true, 
		amount = 150, 
		items = true, 
		itemsreq = {
			{label = "Hard Wood", name = "hwood", amount = 1},
			{label = "Wooden Planks", name = "woodenplanks", amount = 1},
			{label = "Nails", name = "nails", amount = 10},
			{label = "Barrel", name = "barrel", amount = 1},
		}
	},
    ["upgrade +3"] = {
		upgradeid = 3, 
		space = 250,
		cash = true, 
		amount = 250, 
		items = true, 
		itemsreq = {
			{label = "Hard Wood", name = "hwood", amount = 5},
			{label = "Wooden Planks", name = "woodenplanks", amount = 5},
			{label = "Nails", name = "nails", amount = 15},
			{label = "barrel", name = "barrel", amount = 2},
            {label = "Iron Bar", name = "ironbar", amount = 5},
		}
	},
    ["upgrade +4"] = {
		upgradeid = 4, 
		space = 350,
		cash = true, 
		amount = 350, 
		items = true, 
		itemsreq = {
			{label = "Hard Wood", name = "hwood", amount = 8},
			{label = "Wooden Planks", name = "woodenplanks", amount = 8},
			{label = "Nails", name = "nails", amount = 10},
            {label = "Iron Bar", name = "ironbar", amount = 10},
			{label = "Handsaw", name = "handsaw", amount = 1},

		}
	},
    ["upgrade +5"] = {
		upgradeid = 5, 
		space = 500,
		cash = true, 
		amount = 500, 
		items = true, 
		itemsreq = {
			{label = "Hard Wood", name = "hwood", amount = 10},
			{label = "Nails", name = "nails", amount = 10},
            {label = "Wooden Planks", name = "woodenplanks", amount = 10},
            {label = "Iron Bar", name = "ironbar", amount = 15},
			{label = "Handsaw", name = "handsaw", amount = 1},
            {label = "Iron Hammer", name = "ironhammer", amount = 1},
		}
	},
    ["upgrade +6"] = {
		upgradeid = 6, 
		space = 1000,
		cash = true, 
		amount = 1000, 
		items = true, 
		itemsreq = {
			{label = "Hard Wood", name = "hwood", amount = 10},
			{label = "Nails", name = "nails", amount = 10},
            {label = "Wooden Planks", name = "woodenplanks", amount = 10},
            {label = "Iron Bar", name = "ironbar", amount = 20},
            {label = "Sap", name = "sap", amount = 5},
            {label = "Iron Hammer", name = "ironhammer", amount = 1},
			{label = "Handsaw", name = "handsaw", amount = 1},
			{label = "barrel", name = "barrel", amount = 4},
		}
	},
	["upgrade +7"] = {
		upgradeid = 6, 
		space = 1500,
		cash = true, 
		amount = 1500, 
		items = true, 
		itemsreq = {
			{label = "Hard Wood", name = "hwood", amount = 20},
			{label = "Nails", name = "nails", amount = 20},
            {label = "Wooden Planks", name = "woodenplanks", amount = 20},
            {label = "Iron Bar", name = "ironbar", amount = 30},
            {label = "Sap", name = "sap", amount = 10},
            {label = "Iron Hammer", name = "ironhammer", amount = 2},
            {label = "Handsaw", name = "handsaw", amount = 2},
            {label = "barrel", name = "barrel", amount = 5},
		}
	},
}

Config.upgradescatagory = { 
	"christmas",
	"shelf",
	"frame",
	"struct",
	"bench",
	"band",
}


Config.upgrades = {
	{label = "Christmas",tag = "christmas", hash = 'mp006_mshine_theme_christmas', price = 100},
	{label = "Shelf 1", tag = "shelf",hash = 'mp006_mshine_shelfwall1', price = 20},
	{label = "Shelf 2", tag = "shelf",hash = 'mp006_mshine_shelfwall2', price = 20},
	{label = "Picture Frame 1", tag = "frame",hash = 'mp006_mshine_pic_01', price = 50},
	{label = "Picture Frame 2", tag = "frame",hash = 'mp006_mshine_pic_02', price = 50},
	{label = "Picture Frame 3", tag = "frame",hash = 'mp006_mshine_pic_03', price = 50},
	{label = "Picture Frame 4", tag = "frame",hash = 'mp006_mshine_pic_04', price = 50},
	{label = "Picture Frame 5", tag = "frame",hash = 'mp006_mshine_pic_05', price = 50},
	{label = "Picture Frame 6", tag = "frame",hash = 'mp006_mshine_pic_06', price = 50},
	{label = "Picture Frame 7", tag = "frame",hash = 'mp006_mshine_pic_07', price = 50},
	{label = "Picture Frame 8", tag = "frame",hash = 'mp006_mshine_pic_08', price = 50},
	{label = "Picture Frame 9", tag = "frame",hash = 'mp006_mshine_pic_09', price = 50},
	{label = "Picture Frame 10", tag = "frame",hash = 'mp006_mshine_pic_10', price = 50},
	{label = "Structure 1", tag = "struct",hash = 'mp006_mshine_location1', price = 30},
	{label = "Structure 2", tag = "struct",hash = 'mp006_mshine_location2', price = 30},
	{label = "Structure 3", tag = "struct",hash = 'mp006_mshine_location3', price = 30},
	{label = "Structure 4", tag = "struct",hash = 'mp006_mshine_location4', price = 30},
	{label = "Structure 5", tag = "struct",hash = 'mp006_mshine_location5', price = 30},
	{label = "Bench", tag = "bench",hash = 'mp006_mshine_bar_benchAndFrame', price = 20},
	{label = "Boarded", tag = "band",hash = 'mp006_mshine_band1', price = 100},
	{label = "Boarded2", tag = "band",hash = 'mp006_mshine_band1b', price = 100},
	{label = "Shelves", tag = "band",hash = 'mp006_mshine_band1c', price = 100},
	{label = "Piano", tag = "band",hash = 'mp006_mshine_band2', price = 500},
}


Config.Shacks = {
	['lemoyne'] = {
        ['outside'] = vector3(1786.26, -820.11, 192.59),
        ['inside'] = vector3(1785.01,-821.53,191.01),
        ['management'] = {
			x = 1789.48, 
			y = -812.1,
			z = 192.10,
			h = 536.57,
			scenario = "MP_LOBBY_PROP_HUMAN_SEAT_CHAIR",
		},
		['mashanim'] = {x = 1792.71, y = -818.89,z = 189.40,h = 64.73},
		['stillanim'] = {x = 1794.37, y = -818.9,z = 189.40,h = 219.5},
		['ledger'] = {x = 1789.48, y = -813.1,z = 192.40},
		['inventory'] = {x = 1784.12, y = -817.1,z = 189.4},
		['poormoon'] = {x = 1779.63, y = -801.65,z = 188.9,h = 223.7},
		['washface'] = {x = 1785.75, y = -806.36,z = 188.95},
		['bookie'] = {x = 1772.29, y = -806.41,z = 188.95},
		['bookieaiA'] = {x = 1775.66, y = -811.12, z = 188.99, h = 44.8},
		['bookieaiB'] = {x = 1774.9, y = -810.5, z = 188.95, h = 225.3},
		['still'] = {x = 1793.8, y = -819.4, z = 189.4},
		['interior'] = 77313,
		["doorinfo"] = {
			{	objc = 3852416013,
				objYaw1 = -0.0,
				objYaw2 = 0.0,
				objYaw3 = -137.38,
			},
			{	objc = 4091334792,
				objYaw1 = 0.0,
				objYaw2 = 0.0,
				objYaw3 = 42.72,
			},
			
		},
		["permalock"] = {
			{
				objc = 2422396838,
				objYaw1 = 0.0,
				objYaw2 = 0.0,
				objYaw3 = -46.6,
			},
			{
				objc = 2116104995,
				objYaw1 = 0.0,
				objYaw2 = -7.63,
				objYaw3 = -46.8,
			},
		},
       
    },

	
}

Config.language = {
	qt = "Invalid quantity",
    carry = "You cant carry more items",
    limit = "You reached the limit for this item",
    maxslots = "your Hideout cant store more items, slot limit is ",	
	nomat = "Not Enough Materials in Hideout Inventory",
	missionwagon = "Marked Location",
	sellcontra = "Sell Contraband",
	entershack = "Enter Shack",
	buyhideout = "Buy Hideout",
	deletehideout = "Delete Hideout",
	exithideout = "Exit Hideout",
	secretknock = "Secret Knock",
	allowin = "Allow In",
	denyentry = "Deny Entry",
	openbooks = "Open Books",
	openinventory = "Open Inventory",
	openbookie = "Open Bookie",
	pourmoonshine = "Pour Moonshine",
	eatalmonds = "Eat Almonds",
	drinkmoonshine = "Drink Moonshine",
	washface = "Wash Face",
	moonshinemenu = "Moonshine Menu",
	raid = "Raid",
	stopraid = "Stop Raid",
	lockpick = "Pick Lock",
	takecash = "Take Cash",
	plantexplosive = "Plant Explosive",
	robcart = "Rob Cart",
	toofar = "Too Far",
	isknocking = " is Knocking",
	mashtimer = " Mash Timer: ~pa~",
	distilltimer = " Distill Timer: ~pa~",
	brewmoonshine = "Brew Moonshine",
	moonshine = "Moonshine",
	consumable_waterbarrel = "consumable_water Barrel",
	servemoonshine = "Serve Moonshine",
	bookie = "Bookie",
	limit2 = "Limit: ",
	inventory = "Inventory",
	ledger = "Ledger: $~t6~",
	ledger2 = "Ledger",
	management = "Management",
	raidnow = "Raid Now",
	needlockpick = "You need a lockpick",
	wait = "Wait ",
	secsuntil = " Seconds until you can Raid, dont leave the area.",
	raiding = "Raiding",
	leftarea = "You Left The Area And The Raid Stopped",
	hideout = "Hideout",
	ownernot = "Owner Not Around.",
	pricex = "Price $ ",
	hideouttheme = "Hideout Theme",
	hideoutthemedesc = "Buy a Theme for your hideout",
	upgrades = "Upgrades",
	upgradesdesc = "Buy upgrades for your hideout",
	logistics = "Logistics",
	logisticsdesc = "Manage hideout logistics",
	moonshinestill =  "Moonshine Still",
	moonshinestilldesc = "Manage Moonshine Still",
	managementmenu = "Management Menu",
	managehideout = "Manage Hideout",
	dynamitetimer = "Dynamite Timer",
	robthecart = "Rob The Wagon",
	makesurempty = "Make Sure Wagon is Empty",
	cartnotstop = "Wagon not Stopped",
	takingitems = "Taking Items",
	failed = "Failed",
	failed2 = "Failed Wagon got Away",
	cart = "Wagon",
	needexplosive = "You need Explosives",
	hideoutraided = "~eYour Hideout is getting raided Check Your Map For Coords",
	removenot = " to remove notifications",
	dothis = "~e~do /",
	crimreport = "~eCrime Reported Check Your Map For Coords",
	reloccommand = "~e~Go To Relocate Location and use the command /",
	stillmissiondesc = "Go On Mission To Get Still Parts",
	stillmission1 = "Still Parts Mission 1",
	stillmission2 = "Still Parts Mission 2",
	stillmission3 = "Still Parts Mission 3",
	craftstill1 = "Craft Still 1",
	craftstill2 = "Craft Still 2",
	craftstill3 = "Craft Still 3",
	craftstill1desc = "Craft Level 1 Still",
	craftstill1desc2 = "Craft Level 2 Still",
	craftstill1desc3 = "Craft Level 3 Still",
	stillmangmenu = "Still Management Menu",
	exitstart = "exit shack to start mission",
	craftstillx = "Craft Still",
	yes = "Yes",
	no = "No",
	yousure = "Are You Sure ?",
	movehideout = "Move Hideout",
	removeowner = "Remove Owner",
	coownermenu = "Co-owners Menu",
	addcoowner = "Add Co-owner",
	addcoownerdesc = "Add Co-owner to hideout",
	transferowner = "Transfer Ownership",
	transferownerdesc = "Give Away Main Ownership",
	removecoowner = "Remove Co-owner",
	removecoownerdesc = "Remove Co-owner from hideout",
	confirm = "Confirm",
	id = "ID",
	changename = "Change Name",
	changenamedesc = "Change blip name of hideout, costs $",
	manageledger = "Manage Ledger",
	buyinv = "Buy Inventory",
	buyinvdesc = "buy an inventory box",
	upinv = "Upgrade Inventory",
	upinvdesc = "Current Slots: ",
	dollar1 = "$",
	buybookie = "Buy Bookie",
	moveshack = "Move Shack",
	cost1 = "Cost $",
	manageco = "Manage Co-owners",
	logimenu = "Logistics Menu",
	name = "Name",
	cashprice = "Cash Price: ",
	cashprice1 = "Cash price for upgrade",
	amountx1 = " / amount: ",
	amountx11 = "Item Requirement",
	confirmpurchase = "Confirm Purchase",
	withdraw = "Withdraw",
	withdraw1 = "Withdraw money from ledger",
	deposit = "Deposit",
	deposit1 = "Deposit money to ledger",
	ledgermenu = "Ledger Menu",
	addx1 = "Add +",
	slotsx1 = " slots",
	amountx2 = "Amount",
	upmenu = "Upgrades Menu",
	remup = "Remove Upgrade",
	remupdesc = "Remove the upgrade in this catagory",
	price1 = " price: $",
	price2 = "Price",
	price2desc = "price of hideout",
	createhideout = "Create Hideout",
	zone = "Zone",
	lemoyne = "Lemoyne",
	namedesc = "Shack Blip Name",
	confirmxdesc = "Confirm and Create",
	ensureoptions = "Ensure all options have been entered correctly",
	fightstopped = "Fight Was Interupted Money lost",
	fightstopped2 = "Fight Was Interupted Money lost",
	mash = "Mash",
	mashdesc = "Prepare Mash",
	stillx = "Still",
	stillxdesc = "Distill Mash",
	stilllevel = "Still Level: ",
	distillmenu = "Distiller Menu",
	mashmenuu = "Mash Menu",
	distillrecipie = "Distilling Recipie",
	mashrecipie = "mash Recipie",
	placebet = "Place Your Bet",
	potx12 = "Pot: $ ",
	odds = "Odds: A/B ",
	startthefight = "Start The Fight",
	fightprogress = "Fight In Progress",
	youbet = "Your Bet",
	fightera = "Fighter A",
	fighterb = "Fighter B",
	selectfight = "Select a Fighter To Bet On",
	youbet2 = "You Bet $",
	sure2 = "Are You Sure?",
	stillcraftedd = "Still Crafted,  exit and re-enter for it to apply",
	yousold = "You sold ",
	forrr = " For $",
	contrabandsale = "Contraband Sale",
	someonesellingreported = "Someone Selling Contraband Items Reported",
	nomoney = "Not Enough Money $ ",
	addedd = "Added ",
	asco = " As Co-owner",
	invalidid = "Invalid ID",
	ownertrans = "Ownership Transfered",
	removedco = "Removed Co-owner",
	namechanged = "Name Changed to ",
	ledgercashno = "Not Enough Money In Ledger $ ",
	robsetup = "Robbery Setup",
	awagonrob = "A Wagon Robbery has been reported, check map for coords",
	gettingraided = "~e~Your Hideout: ",
	gettingraided2 = " is getting Raided. You got ",
	gettingraided3 = " minutes to defend",
	raidspot = "Raid Spot",
	youdepo = "You Deposited $",
	relocated = "Relocated",
	youwith = "You Withdrew $",
	youtook = "You Took $",
	noledger = "No Money In Ledger",
	pianopay = "You got paid for playing the piano $",
	pianocooldown = "The owner just paid you, give the piano a rest before trying again.",
	purchasscuss = "Purchase successful,  exit and re-enter for it to apply",
	purchasscuss3 = "Removal successful,  exit and re-enter for it to apply",
	purchasscuss2 = "Purchase successful",
	noledgermon = "Not Enough Money In Ledger $",
	yougott = "You Got ",
	nospaceinv = "No Space In Inventory",
	nomates = "You Dont Have The Required Materials",
	nomonbet = "Not Enough Money To Make Bet $ ",
	youwon = "You Won $ ",
	notEnoughPolice = "Not Enough Police Online",
	blacklisteditem = "this item is not alowed to be stored in here "

}
