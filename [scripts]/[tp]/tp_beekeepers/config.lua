Config = {}

Config.DevMode = false
Config.Debug   = false

Config.Keys = {
    ['G'] = 0x760A9C6F,["B"] = 0x4CC0E2FE,['S'] = 0xD27782E3,['W'] = 0x8FD015D8,['H'] = 0x24978A28,
    ['U'] = 0xD8F73058,["R"] = 0xE30CD707,["ENTER"] = 0xC7B5340A,['E'] = 0xCEFD9220,["J"] = 0xF3830D8E,
    ['F'] = 0xB2F377E8, ['C'] = 0x9959A6F0,
    ['L'] = 0x80F28E95, ['BACKSPACE'] = 0x156F7119,["DOWN"] = 0x05CA7C52,["UP"] = 0x6319DB71,["LEFT"] = 0xA65EBAB4,
    ["RIGHT"] = 0xDEB34313, ["SPACEBAR"] = 0xD9D0E1C0,
}

Config.PromptsKeys = {
    ['COLLECT_LIGHT_UP']  = { label = "Light Cannabis Leaves ",        key = 'ENTER' },
    ['COLLECT_INSECTS']   = { label = "Collect All Insects",           key = 'UP'    },
    ['COLLECT_QUEEN']     = { label = "Collect Queen",                 key = 'DOWN' },
    ['COLLECT_HONEYCOMB'] = { label = "Collect Product (Honeycomb)",   key = 'RIGHT'  },
}

Config.ApiaryPromptsKeys = {
    ['MANAGE']            = { label = "Manage",                        key = 'G'   },
    ['BUILD']             = { label = "Build Apiary",                  key = 'ENTER' }, -- 1.1.3
}

--[[ ------------------------------------------------
   Discord API Configurations
]]---------------------------------------------------

-- The specified discord roles will be able to manage all apiaries.
Config.PermittedDiscordRoles  = { 111111111111111, 222222222222222222 }

--[[ ------------------------------------------------
   Discord Webhooking
]]---------------------------------------------------

-- (!) Checkout tp_libs/server/webhooks.lua to modify the webhook urls.

Config.DiscordWebhooking = { 
    Enabled = false, 
    Color   = 10038562 
}

--[[ ------------------------------------------------
   General Configurations
]]---------------------------------------------------

-- The specified groups will be able to manage all apiaries.
Config.Groups = { 'admin', 'mod' }

-- The distance for objects rendering (beehive objects or hornet and bees gathering).
Config.ObjectRenderDistance = 50.0

-- The specified jobs will be able to collect honey from hornets or bees.
-- Set to false if you wan't all players to perform this action.
-- Ex: Config.PermittedJobs = false
Config.PermittedJobs = false--{ -- SUGGESTED IS HAVING JOBS FOR THIS KIND OF ACTION.
--     'beekeeper',
-- }

Config.ActionDistance = 1.8

-- @Config.DisablePlayerDroppedSaving :
-- When player disconnects and never selected a character, it is possible for some frameworks
-- to throw an error, this error does NOT cause any issues, this system is required
-- for saving apiary data properly on owners.

-- In case you don't want it, you can disable it, with it, the error will also not be visible anymore
-- but like i mentioned above, this is a required system for saving more often and the error does not cause any issues either.
Config.DisablePlayerDroppedSaving = false

--[[ ------------------------------------------------
   Apiary Configurations
]]---------------------------------------------------

-- The alpha stage when placing an apiary that needs to be built.
Config.SetEntityAlphaOnPlacement = 150 -- Alpha: 0 - 250

Config.Actions = {

    ['APIARY_BUILDING'] = { 

        RequiredItem = 'ironhammer', -- The same item for picking up / destroying an apiary.

        Attachment = { 
            Model = "p_hammer04x", 
            BoneIndex = 'skel_r_hand', 
            xpos = 0.08, 
            ypos = -0.04, 
            zpos = -0.05, 
            xrot = -76.0, 
            yrot = 10.0, 
            zrot = 0.0 
        },

        Animation = {
            Dict          = "amb_work@world_human_hammer_kneel_stakes@male@male_a@idle_a",
            AnimationName = 'idle_a',
            Flag          = 1
        },

        ActionDuration = 15000, -- Time in milliseconds.
        ActionLabel    = 'Building Apiary...',

    },

}

-- How many apiaries should a player own?
Config.MaximumOwnedApiaries = 20

-- The action distance between a player and an apiary location for opening the management menu.
-- I suggest the default distance and when placing apiaries, to not be next to each other within some
-- meters, otherwise they will interact to each other.
Config.ApiaryActionDistance = 1.8

-- What distance should an apiary have between other closest apiaries?
Config.ApiaryPlacementDistanceBetweenOthers = 4.0

-- Set to false if you want only the players who have Config.Groups or Config.PermittedDiscordRoles (admins)
-- to be able to remove the placement of an apiary (it completely removes it from the placed location).
-- Set to true if you want also the apiary owners to remove its placement.
Config.RemoveApiaryPlacementByOwners = true

-- What is the distance for the system prevent the players to open a menu while someone else is nearby?
-- The specified system is required to prevent glitches (abuse).
Config.PreventMenuNearPlayersDistance = 2.5

-- Set to false if you don't want any blips to be displayed on owned apiarz locations
-- when opening the menu map selector.
Config.DisplayBlipOwnedApiaries = false
Config.DisplayBlipSprite        = -1236018085

-- The specified apirary models will be able to be used and placed on the desired position. 
Config.Apiaries = { 

    [1] = {
    Label = 'Apiary Model (1)',
    ModelName = "bee_house_gk_1",
    Item = 'apiary_bee_house_gk_1',
    MaximumInsects = 300,
},

[2] = {
    Label = 'Apiary Model (2)',
    ModelName = "bee_house_gk_2",
    Item = 'apiary_bee_house_gk_2',
    MaximumInsects = 300,
},


-- BEE HIVES

[3] = {
    Label = 'Bee Hive (02)',
    ModelName = "bee_hive02",
    Item = 'bee_hive02',
    MaximumInsects = 200,
},


[4] = {
    Label = 'Bee Hive (04)',
    ModelName = "bee_hive04",
    Item = 'bee_hive04',
    MaximumInsects = 400,
},


[5] = {
    Label = 'Bee Hive (08)',
    ModelName = "bee_hive08",
    Item = 'bee_hive08',
    MaximumInsects = 100,
},

[6] = {
    Label = 'Bee Hive (12)',
    ModelName = "bee_hive12",
    Item = 'bee_hive12',
    MaximumInsects = 600,
},


}

Config.ApiarySettings = {

    UpdateApiaryDuration = 5, -- The time in minutes for updating all the progress and apiary status.

    -- Set to false if you don't want the system to create insect bee swarm particles around the Apiary.
    PTFX = true,

    -- If the apiary has a Queen, what is the percentage that should be produced every @UpdateApiaryDuration ?
    -- When reaching 100%, you will be able to collect the product.

    -- ProductAmount is based on the insects your Apiary has, more insects, faster product results.
    -- Keep in mind, an apiary has maximum insects size, based on Config.Apiaries @MaximumInsects.
    ProduceAmount = {
        { minInsects = 1,     maxInsects = 20,   produce = 2},   -- % Per X @UpdateApiaryDuration in minutes
        { minInsects = 21,    maxInsects = 50,   produce = 4},   -- % Per X @UpdateApiaryDuration in minutes
        { minInsects = 51,    maxInsects = 100,  produce = 8},   -- % Per X @UpdateApiaryDuration in minutes
        { minInsects = 101,   maxInsects = 150,  produce = 12},  -- % Per X @UpdateApiaryDuration in minutes
        { minInsects = 151,   maxInsects = 200,  produce = 16},  -- % Per X @UpdateApiaryDuration in minutes
        { minInsects = 201,   maxInsects = 300,  produce = 20},  -- % Per X @UpdateApiaryDuration in minutes
        { minInsects = 301,   maxInsects = 500,  produce = 25},  -- % Per X @UpdateApiaryDuration in minutes
        { minInsects = 500,   maxInsects = 1000, produce = 30},  -- % Per X @UpdateApiaryDuration in minutes
    },

    -- If the apiary has a Queen, how many new insects should be generated every @UpdateApiaryDuration ?
    -- Personally, we should not add many insects, every update, 0-1 is enough, because if the generated insects
    -- are more, then the players will not spend time to gather from the nests.
    NewInsects = { 5, 10},

    -- If the apiary does NOT have a Queen, how many insects should be lost - killed every @UpdateApiaryDuration ?
    KillInsectsValueNoQueen = { 1, 5 },

    ['COLLECT_PRODUCT'] = {
        
        Scenario = 'SC_WORLD_HUMAN_WILDERNESS_LOOTER',
        ActionDuration = 18, -- Time in seconds.
    },

    ['WATER_SOURCE'] = { 

        -- The required item that can be used for renewing / adding water source.
        RequiredItem = "consumable_water",

        -- The value (%) to be removed every @UpdateTimer in minutes.
        -- If @UpdateTimer is 5 minutes, it will remove 5 water source from the apiary every 5 minutes.
        RemoveValue = 0.20,

        -- How many insects (bees or hornets) should be killed every @UpdateApiaryDuration if there is no water source on the Apiary?
        KillInsectsValue  = { 0, 1},
    },

    ['CLEANING'] = {

        -- On what percentage should the apiary be considered as not clean?
        ConsiderNotClean = 10, -- %

        -- If the apiary has dead insects or parasites, what is the percentage that should be removed every @UpdateApiaryDuration ?
        RemoveValue = 1, -- %

        -- How many parasites should be generated every @UpdateApiaryDuration if the Apiary is not clean?
        GenerateValue = { 1, 2},

        Scenario = 'SC_WORLD_HUMAN_WILDERNESS_LOOTER',
        ActionDuration = 18, -- Time in seconds.
    },

    ['PARASITES_PROTECTION'] = {

        -- The required item that can be used for protecting the apiary from parasites.
        RequiredItem = "insect_medicine",

        -- How many parasites should the medicine kill and last before replacing?
        RemoveValue = 100, -- By default, the medicine can kill up to 1000 parasites and then, it will require a new medicine replacement.
    
        -- How many parasites should be generated every @UpdateApiaryDuration if there is NOT a medicine protection?
        GenerateValue = { 1, 2},

        -- How many insects (bees or hornets) should be killed every @UpdateApiaryDuration if there are parasites on the Apiary?
        -- (!) Without Medicine Protection.
        KillInsectsValue  = { 3, 5},

        Scenario = 'SC_WORLD_HUMAN_WILDERNESS_LOOTER',
        ActionDuration = 10, -- Time in seconds.
    },

}

--[[ ------------------------------------------------
   Hornet & Bee Configurations
]]---------------------------------------------------

-- If the specified item will not be used when trying to collect bees, queens or honeycombs,
-- the bees or hornets will attack the player (deadly).
Config.SmokeableItem = { Item = 'pipepeace', Label = 'Pipe of Peace', Stage1Cooldown = 4, Stage2Cooldown = 20 } -- Time in seconds.

-- The jar to be used for collecting bees, hornets or honey.
Config.EmptyJarItem  = { Item = 'empty_jar', Label = 'Empty Jar', Cooldown = 10 }

-- Set to false if you don't want the nests to be seen with lighting.
-- Lighting can make the nests to be found easier when someone is nearby.
Config.NestLightingFocus = true

-- What is the distance for the system prevent the players to perform nest actions while someone else is nearby?
-- The specified system is required to prevent glitches (abuse).
Config.PreventActionsNearPlayersDistance = 2.5

-- @param InsectsQuantity : How much insects (bees or hornets) a jar when gathering should contain?
-- Wild Bees or Hornets are lower quantity because they are very aggressive.

-- (!) IF AN APIARY HAS NO INSECTS AND NO QUEEN (TOTALLY EMPTY), DO NOT HAVE MULTIPLE BEE JAR TYPES
-- ON YOUR INVENTORY WHEN ADDING TO THE APIARY, CARRY ONLY THE ONE YOU WANT TO PLACE BECAUSE IT WILL SELECT
-- BASED ON THE Config.Types ORDER, (basic_bees, wild_bees, ..) THE FIRST RESULT FROM YOUR INVENTORY WILL BE
-- PLACED, SO MAKE SURE YOU ONLY CARRY THE TYPE YOU WANT TO PLACE AND NOT MULTIPLE TYPES.

Config.Types = {

    ['basic_bees' ] = { 
        Item = 'basic_bees',  
        Label = "Basic Bees", 

        Queen = {
            Type  = 'basic_queen',
            Label = 'Basic Queen',
            Item  = 'basic_queen',
        },
        
        Product = "honey", -- Item Name
        Quantity = { min = 1, max = 10}, -- 2.0.1

        InsectsQuantity = 15,

        ExtraItemReward = { Enabled = true, Item = 'beeswax', Chance = 70, Quantity = {4, 6} },

        

    }, -- @Product (Item Name) which will be produced by the specified bee type.

    ['wild_bees' ] = { 
        Item = 'wild_bees',  
        Label = "Wild Bees", 
        
        Queen = {
            Type  = 'wild_queen',
            Label = 'Wild Queen',
            Item  = 'wild_queen',
        },

        Product = "honey", -- Item Name
        Quantity = { min = 1, max = 10}, -- 2.0.1

        InsectsQuantity = 15,

        ExtraItemReward = { Enabled = true, Item = 'beeswax', Chance = 50, Quantity = {4, 6} },

    }, -- @Product (Item Name) which will be produced by the specified bee type.

    ['basic_hornets' ]        = { 
        Item = 'basic_hornets',      
        Label = "Basic Hornet", 
        
        Queen = {
            Type  = 'basic_hornet_queen',
            Label = 'Basic Hornet Queen',
            Item  = 'basic_hornet_queen',
        },

        Product = "hornet_poison", -- Item Name
        Quantity = { min = 1, max = 10}, -- 2.0.1

        InsectsQuantity = 10,

        ExtraItemReward = { Enabled = false, Item = 'beeswax', Chance = 30, Quantity = {1, 2} },

    }, -- @Product (Item Name) which will be produced by the specified bee type.


    ['mexican_hornets' ]      = { 
        Item = 'mexican_hornets',      
        Label = "Mexican Hornet", 
        
        Queen = {
            Type  = 'mexican_hornet_queen',
            Label = 'Mexican Hornet Queen',
            Item  = 'mexican_hornet_queen',
        },

        Product = "hornet_poison", -- Item Name
        Quantity = { min = 1, max = 10}, -- 2.0.1

        InsectsQuantity = 10,

        ExtraItemReward = { Enabled = false, Item = 'beeswax', Chance = 30, Quantity = {1, 2} },

    }, -- @Product (Item Name) which will be produced by the specified bee type.

}

-- @Config.HoneyCombs requires the bee type when gathering as index parameter.
-- If the collected bee type exists below and the collecting is finished, it will also give honeycomb.
-- (!) Version 1.0.0 ANIMATION NOT IMPLEMENTED YET, SEARCHING FOR THE RIGHT ONE.
Config.HoneyCombs = { 
    ['basic_bees'] = { Quantity = { 2, 5 }, Item = 'honeycomb', ActionDuration = 5, ActionLabel = 'Collecting Honeycomb...' },
    ['wild_bees']  = { Quantity = { 2, 5 }, Item = 'honeycomb', ActionDuration = 5, ActionLabel = 'Collecting Honeycomb...' },
}

--[[-------------------------------------------------------
   Usable Attached Items
]]---------------------------------------------------------

-- SPONGE IS REQUIRED FOR CLEANING THE APIARY
-- JAR IS REQUIRED FOR COLLECTING THE PRODUCT (HONEY)
Config.UsableAttachedItems = {
    ['SPONGE']     = {Item = 'sponge',        Object = "p_bathsponge01x", Bone = "SKEL_R_Finger12", x = 0.0, y = -0.05, z = 0.04,  xRot = 0.0, yRot = 0.0, zRot = 0.0}, 
    ['JAR']        = {Item = 'empty_jar',     Object = "p_vg_jar10x",     Bone = "SKEL_R_Finger13", x = -0.03, y = -0.07, z = 0.11, xRot = -1.0, yRot = -189.0, zRot = 0}, 
}

--[[-------------------------------------------------------
   Beehive Collect Locations
]]---------------------------------------------------------

-- Every how long should the players with the required job / not will be able to perform any actions?
-- All actions have their own duration (collecting honey, insects, etc.).

-- @param ResetAt: Time in minutes (2 Hours by default) -- version 1.1.5
-- @param RemoveDurationEvery: The appropriate value for this parameter is contingent upon the total duration specified by @ResetAt. 
-- If the total duration is substantial, it is important to consider the potential impact on server performance. For instance, 
-- removing duration every minute may not be advisable, particularly given that the default total duration is two hours. Even for a total duration of one hour, 
-- setting @RemoveDurationEvery to five minutes is generally sufficient.
Config.BeehiveActionsDuration = { ResetAt = 120, RemoveDurationEvery = 5 }

Config.Locations = {

    ----------------------------------- Valentine Area -----------------------------------
    { 
        Coords = { x = -216.408, y = 826.143, z = 125.752, pitch = -2.958, roll = 6.732,  yaw = -145.55 }, 
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    
    { 
        Coords = { x = -193.722, y = 743.794, z = 123.141, pitch = 9.698, roll = -5.618,  yaw = -79.592},
        BeeType = 'wild_bees', Label = 'wild bees Nest', RandomSpawnChance = 75,
    },

    { 
        Coords = { x = -453.896, y = 834.049,  z = 121.246, pitch = -1.0,   roll = 5.041,   yaw = 170.42},
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },

    { 
        Coords = { x = -377.553, y = 982.536,  z = 120.848, pitch = -4.384, roll = -0.888,  yaw = 130.965},
        BeeType = 'wild_bees', Label = 'wild bees Nest', RandomSpawnChance = 75,
    },

    { 
        Coords = { x = -154.658, y = 891.411,  z = 151.904, pitch = 1.172,  roll = 3.543,   yaw = 97.143},
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },

    { 
        Coords = { x = -133.371, y = 752.107,  z = 131.926, pitch = 10.236, roll = 13.214,  yaw = -71.214},
        BeeType = 'wild_bees', Label = 'wild bees Nest', RandomSpawnChance = 75,
    },

    { 
        Coords = { x = -58.255,  y = 876.738,  z = 206.057, pitch = -8.453, roll = -5.837,  yaw = 96.247},
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },

    { 
        Coords = { x = -255.331, y = 174.082,  z = 64.637,  pitch = 1.301,  roll = -10.387, yaw = 34.752},
        BeeType = 'wild_bees', Label = 'wild bees Nest', RandomSpawnChance = 75,
    },

    { 
        Coords = { x = -775.097, y = 463.872,  z = 83.063,  pitch = 0.0,    roll = 1.0,     yaw = 78.761},
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },

    { 
        Coords = { x = 122.636,  y = 1001.221, z = 211.823, pitch = -1.0,   roll = 2.0,     yaw = 2.246},
        BeeType = 'wild_bees', Label = 'wild bees Nest', RandomSpawnChance = 75,
    },

    { 
        Coords = { x = -330.201, y = 271.946,  z = 96.68,   pitch = 7.956,  roll = 1.806,   yaw =  60.257},
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },

    { 
        Coords = { x = -86.149,  y = 326.456,  z = 106.402, pitch = -1.036, roll = 1.431,   yaw = 99.169},
        BeeType = 'wild_bees', Label = 'wild bees Nest', RandomSpawnChance = 75,
    },

    ----------------------------------- Ambarino -----------------------------------
    {
        Coords = { x = 185.459, y = 1365.287, z = 172.666, pitch = -10.664, roll = 27.0, yaw = 39.002 },
        BeeType = 'mexican_hornets', Label = 'mexican hornets Nest', RandomSpawnChance = 75,
    },

    {
        Coords = { x = 337.993, y = 1512.106, z = 182.987, pitch = -42.0, roll = 8.0, yaw = -135.78 },
        BeeType = 'basic_hornets', Label = 'basic hornets Nest', RandomSpawnChance = 75,
    },

    {
        Coords = { x = 454.742, y = 1612.141, z = 205.198, pitch = -22.0, roll = 5.739, yaw = -2.234 },
        BeeType = 'mexican_hornets', Label = 'mexican hornets Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 642.597, y = 1265.632, z = 210.373, pitch = -30.0, roll = 3.647, yaw = 95.294 },
        BeeType = 'basic_hornets', Label = 'basic hornets Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 821.806, y = 1468.998, z = 204.831, pitch = -41.085, roll = -11.619, yaw = 116.201 },
        BeeType = 'mexican_hornets', Label = 'mexican hornets Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 720.604, y = 1675.157, z = 217.055, pitch = -24.086, roll = -9.687, yaw = -30.025 },
        BeeType = 'basic_hornets', Label = 'basic hornets Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 607.537, y = 2004.162, z = 218.05, pitch = -7.76, roll = 16.942, yaw = 72.112 },
        BeeType = 'mexican_hornets', Label = 'mexican hornets Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 696.983, y = 2206.197, z = 230.566, pitch = 0.281, roll = 18.121, yaw = 74.134 },
        BeeType = 'basic_hornets', Label = 'basic hornets Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 328.714, y = 1752.252, z = 193.609, pitch = -27.321, roll = 0.025, yaw = -70.783 },
        BeeType = 'mexican_hornets', Label = 'mexican hornets Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 1422.023, y = 1449.823, z = 187.042, pitch = 3.075, roll = 44.426, yaw = 168.331 },
        BeeType = 'basic_hornets', Label = 'basic hornets Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 1753.457, y = 1349.792, z = 178.869, pitch = -1.094, roll = 2.33, yaw = -45.445 },
        BeeType = 'mexican_hornets', Label = 'mexican hornets Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 1953.252, y = 1665.154, z = 175.816, pitch = -17.345, roll = -1.206, yaw = -64.113 },
        BeeType = 'basic_hornets', Label = 'basic hornets Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 2118.802, y = 1759.698, z = 138.776, pitch = 44.934, roll = -10.479, yaw = -54.619 },
        BeeType = 'mexican_hornets', Label = 'mexican hornets Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 2374.447, y = 1967.643, z = 162.636, pitch = -39.906, roll = 1.276, yaw = 176.374 },
        BeeType = 'basic_hornets', Label = 'basic hornets Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 2459.903, y = 2263.569, z = 181.559, pitch = 19.701, roll = -11.727, yaw = -23.628 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 2696.615, y = 2338.641, z = 162.465, pitch = -18.121, roll = -0.827, yaw = 76.06 },
        BeeType = 'wild_bees', Label = 'wild bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 3087.923, y = 1729.067, z = 87.041, pitch = 3.824, roll = -11.696, yaw = 39.041 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 3060.493, y = 1695.868, z = 70.664, pitch = -23.925, roll = 2.798, yaw = 117.251 },
        BeeType = 'wild_bees', Label = 'wild bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 2546.732, y = 1663.22, z = 93.541, pitch = -28.573, roll = -3.301, yaw = 49.913 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },

    ----------------------------------- Grizzlies East -----------------------------------
    { 
        Coords = { x = 748.320, y = 1870.760, z = 243.940, pitch = -8.005, roll = -7.216, yaw = 87.216  },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 729.060, y = 1790.030, z = 232.140, pitch = 5.230, roll = 20.092, yaw = -159.672 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 766.840, y = 1626.890, z = 214.060, pitch = -13.797, roll = 14.597, yaw = -136.597 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 981.520, y = 1208.780, z = 181.010, pitch = 2.221, roll = 33.000, yaw = -114.000 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 946.480, y = 1087.990, z = 154.040, pitch = 10.710, roll = 47.000, yaw = 66.000 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 1082.050, y = 1033.910, z = 142.680, pitch = -7.188, roll = -39.000, yaw = -109.000 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 1194.957, y = 977.070, z = 120.690, pitch = -4.990, roll = -5.393, yaw = -144.543 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 1149.300, y = 901.370, z = 119.072, pitch = -3.214, roll = 30.000, yaw = 175.000 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 1440.520, y = 840.310, z = 101.900, pitch = 7.666, roll = -6.000, yaw = -145.000 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 1250.040, y = 1153.710, z = 152.430, pitch = 0.000, roll = 0.000, yaw = -75.252 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 1612.845, y = 1312.940, z = 149.200, pitch = -15.372, roll = -30.000, yaw = -74.000 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },

    ----------------------------------- Lemoyne -----------------------------------
    {
        Coords = { x = 1468.310, y = -85.040, z = 99.510, pitch = -5.382, roll = 31.000, yaw = -89.000 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 1281.750, y = -145.980, z = 94.960, pitch = 4.294, roll = 23.000, yaw = 175.000 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 1083.900, y = -227.720, z = 96.370, pitch = -1.777, roll = -3.428, yaw = -2.126 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 894.270, y = -406.610, z = 89.140, pitch = 6.586, roll = 11.716, yaw = -33.000 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 740.400, y = -457.180, z = 80.190, pitch = 15.280, roll = 30.000, yaw = 53.000 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 933.950, y = -527.330, z = 88.350, pitch = 0.000, roll = 12.000, yaw = -167.934 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 1054.100, y = -593.090, z = 93.720, pitch = -7.692, roll = -13.716, yaw = -33.729 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 1122.860, y = -819.170, z = 86.290, pitch = -8.000, roll = -5.000, yaw = -8.000 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 1377.500, y = -947.740, z = 53.840, pitch = 3.000, roll = -34.000, yaw = -105.000 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = 1421.872, y = -1573.480, z = 71.310, pitch = -7.734, roll = 29.000, yaw = -179.000 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    
    ----------------------------------- West Elizabeth -----------------------------------
    {
        Coords = { x = -1210.260, y = 523.640, z = 80.270, pitch = -29.000, roll = -13.683, yaw = 92.253 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = -1347.434, y = 595.400, z = 102.680, pitch = -32.000, roll = -4.195, yaw = 165.864 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = -1508.460, y = 655.530, z = 117.420, pitch = -28.000, roll = 3.130, yaw = 135.332 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = -2074.910, y = 789.120, z = 144.650, pitch = -27.000, roll = -3.406, yaw = 131.922 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = -2533.940, y = 837.870, z = 151.180, pitch = -4.000, roll = -39.000, yaw = 29.000 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = -2474.260, y = 463.014, z = 146.510, pitch = -27.000, roll = -4.294, yaw = -80.577 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = -2811.930, y = -144.260, z = 160.250, pitch = -28.000, roll = -6.233, yaw = -51.551 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = -2716.070, y = -426.740, z = 155.430, pitch = -32.000, roll = -14.377, yaw = -171.840 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
    {
        Coords = { x = -1697.726, y = 222.810, z = 119.980, pitch = -40.000, roll = 7.504, yaw = 15.933 },
        BeeType = 'basic_bees', Label = 'Bees Nest', RandomSpawnChance = 75,
    },
}

--[[ ------------------------------------------------
  Notifications (version 1.2.0)
]]---------------------------------------------------

function SendNotification(source, targetLocale, message, notifyType)

    local LocaleData = Locales[targetLocale]

    -- @param beekeepers : The icon name to be used on the TP Notify.
    if not source then
        TriggerEvent("tp_notify:sendNotification", LocaleData.title, message, "beekeepers", notifyType, LocaleData.duration, LocaleData.align)
    else
        TriggerClientEvent("tp_notify:sendNotification", source, LocaleData.title, message, "beekeepers", notifyType, LocaleData.duration, LocaleData.align)
    end
  
end