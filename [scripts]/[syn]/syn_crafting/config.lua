Config = {}
Config.useDecayitems = true -- set to false if you dont want items to decay
Config.mindecaytouse = 1 --   min % of decayed item to use 1 is lowest
Config.loseitems = true -- lose items on failed minigame 
Config.itemdescription = true -- enable/disable item descriptions 

Config.minigame = true -- enable/disable minigame
Config.interactiondist = 2.0 -- distance to interact with location
Config.favoicon = "favobox" -- image name in your inventory section for favorite recipies section

Config.imagesize = 55 -- 55x55 px

Config.Keys = {
    -- Letter G
    ["G"] = 0x760A9C6F,
}
Config.removepropcommand = "dc"
-- items that place a prop when used
Config.campfireitems = {
    ["campfire"] = {prop = "p_campfire02x", townlock = false}, -- item db name = {prop name ,  item usage in towns}
} 

-- list of towns that are banned from using items that place props, if you dont want this just leave it empty
Config.bannedtowns = {'Annesburg', 'Armadillo', 'Blackwater', 'BeechersHope', 'Breaithwaite', 'Butcher', 'Caliga', 'Cornwall', 'Emerald', 'Lagras', 'Manzanita', 'Rhodes', 'Siska', 'StDenis', 'Strawberry', 'Tumbleweed', 'Valentine', 'Vanhorn', 'Wallace', 'Wapiti', 'AguasducesFarm', 'AguasdulcesRuins', 'AguasdulcesVilla', 'Manico'}


Config.openmenuitems = { -- items that open the crafting menu right away when used, these items wont show location locked recpies
    --"itemname", -- this is an example, leave the table empty if you dont want to use
}

-- this is where you add new catagories, you can add as many as you want and they will automatically be added to db, picture section is the name of the picture in the html folder of your inventory images, key is the key name of the catagory
-- you can lock catagories to jobs by adding a job = {"job1","job2"}, if you dont add this the catagory will be visible to everyone.
-- example:     {key = "medical",label = "Medical", description = "Craft Medical Supplies", picture = "bandages", job = {"police","doctor"}},

Config.catagories = {
    {key = "medical",label = "Medical", description = "Craft Medical Supplies", picture = "bandages"},
    {key = "blacksmith",label ="Blacksmith", description = "Craft Blacksmith items", picture = "weapon_melee_hammer"},
    {key = "basic",label ="Basic", description = "Craft Basic Supplies", picture = "cigar"},
    {key = "survival",label ="Survival", description = "Craft Survival Supplies", picture = "kit_camp"},
    {key = "brewing",label ="Brewing", description = "Brew Beavarage", picture = "consumable_whiskey"},
    {key = "food",label ="Food", description = "Cook Food", picture = "pot"},
    {key = "furni",label ="Furniture", description = "Build Furniture", picture = "wood_chair"},
    {key = "hidden",label ="hidden", description = "Hidden Crafting", picture = "avarice"},
    {key = "undertaker",label ="undertaker", description = "Undertaker Crafting", picture = "coffin "},
}
Config.bannedwords = { -- words not allowed to be used in descriptions
    "example",
}
-- list of all crafting locations (in the location list of each recipie you can add a table and insert the key of the location u want the recipie to be exclusive to )
-- example of recipie with location lock
-- {
--    ['Text'] = "Boiled Egg",
--    ['Desc'] ="",
--    ['Param'] = {
--        ['Item'] = {
--            { name = "eggs",label = "Egg", count = 6},
--            { name = "water",label = "Water", count = 1},
--        },
--        ['Reward'] ={
--            { name = "boiledegg", count = 6},
--        },
--        ['Job'] = 0, -- keep 0 to allow crafting for any job
--        ['prop'] = 0,  -- keep 0 to allow crafting from any prop
--        ['location'] = {"location1","location2"}, -- keep 0 to allow crafting from any marked location
--        ['catagory'] = "food",
--        ['expreq'] = 0,
--        ['expadd'] = 1,
--        ['diff'] = 2000,    
--    }
--},
-- this recipie will only show up at location 1 and location 2 
-- you can do the same thing for props prop = {"p_campfire02x"} will mean the recipie will only show up at a crafting menu opened by interacting with the p_campfire02x prop 
Config.locations = {
    ["location1"] = {x = -1972.9141,y = -1671.1710,z =118.0571},
    ["location2"] = {x = 1782.2131,y = -472.9988,z =45.8071},
    ["location3"] = {x = -860.1951,y = -745.3605,z =56.9655},      
    ["location4"] = {x = 1326.7921,y = -2287.5940,z =49.3562},   

}

Config.craftingprops = {
    "p_campfire02x",
    "p_campfire02x_script",
    "p_cast_iron_pot_001",
    "P_TOOLPEGBOARD01X",
    "P_HAMMER01X",
    "P_SAL_SHELFSET03X",
    "S_POT_SERIALKILLER01X",
    "P_VICECLAMP01X"
}


-- always add new items in the end not in the middle ! otherwise you will mess up your players favorites ! 
Config.crafting = {
        {                            --<< numbers not added to default ALWAYS CONTINUE THE COUNT IN THE RIGHT ORDER OR IT WILL BRAKE AND FAV catagory WILL NOT WORK 
        ['Text'] = "Paper",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "pulp",        label = "pulp",             count = 2},
                { name = "wateringcan", label = "Clean Water Jug",  count = 1},
            },
            ['Reward'] ={
                { name = "paper", count = 5},
                { name = "wateringcan_empty", count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 1, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },

            {                            --<< numbers not added to default ALWAYS CONTINUE THE COUNT IN THE RIGHT ORDER OR IT WILL BRAKE AND FAV catagory WILL NOT WORK 
        ['Text'] = "cigarette",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Indian_Tobbaco",        label = "Indian Tobbaco",             count = 1},
                { name = "rollingpaper", label = "Rolling paper",  count = 1},
            },
            ['Reward'] ={
                { name = "cigarette", count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 1, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                {                            --<< numbers not added to default ALWAYS CONTINUE THE COUNT IN THE RIGHT ORDER OR IT WILL BRAKE AND FAV catagory WILL NOT WORK 
        ['Text'] = "cigar",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Indian_Tobbaco",        label = "Indian Tobbaco",             count = 2},
                { name = "rollingpaper", label = "Rolling paper",  count = 2},
            },
            ['Reward'] ={
                { name = "cigar", count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 1, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },

                {                            --<< numbers not added to default ALWAYS CONTINUE THE COUNT IN THE RIGHT ORDER OR IT WILL BRAKE AND FAV catagory WILL NOT WORK 
        ['Text'] = "pipe",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wood",        label = "Soft Wood",             count = 2},
                { name = "clay", label = "clay",  count = 1},
                { name = "copper", label = "copper",  count = 2},
            },
            ['Reward'] ={
                { name = "pipe", count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 1, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
-- survival
    {
        ['Text'] = "Clean Water",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wateringcan_dirtywater",       label = "Dirty Watering Jug",    count = 1},
            },
            ['Reward'] ={
                { name = "wateringcan", count = 1},-- you can add multipule reward items  
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "survival",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 1, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },

    {
        ['Text'] = "Bottled water",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wateringcan",   label = "Water Jug",    count = 1},
                { name = "empty_bottle",   label = "Empty Bottle",    count = 6},
            },
            ['Reward'] ={
                { name = "wateringcan_empty", count = 1},
                { name = "consumable_water",        count = 6},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "survival",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
-- brewing
    {
        ['Text'] = "Raspberry water",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "sugar",   label = "Sugar",    count = 1},
                { name = "consumable_water",   label = "water",    count = 1},
                { name = "Red_Raspberry",   label = "Red Raspberry",    count = 5},
            },
            ['Reward'] ={
                { name = "consumable_raspberrywater",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
        {
        ['Text'] = "Blackberry water",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "sugar",   label = "Sugar",    count = 1},
                { name = "consumable_water",   label = "water",    count = 1},
                { name = "Black_Currant",   label = "Black Currant",    count = 2},
            },
            ['Reward'] ={
                { name = "consumable_blackberrywater",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
        {
        ['Text'] = "Ginseng Tea",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "sugar",   label = "Sugar",    count = 1},
                { name = "consumable_water",   label = "water",    count = 1},
                { name = "American_Ginseng",   label = "American Ginseng",    count = 2},
            },
            ['Reward'] ={
                { name = "ginsengtea",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
        {
        ['Text'] = "Coffee",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "sugar",   label = "Sugar",    count = 1},
                { name = "paper",   label = "Paper",    count = 1},
                { name = "coffeebeans",   label = "Coffee Beans",    count = 2},
            },
            ['Reward'] ={
                { name = "consumable_coffee",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
    -- food
            {
        ['Text'] = "Dried Salmon",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "a_c_fishsalmonsockeye_01_ms",   label = "Sockeye Salmon",    count = 1},
                { name = "salt",   label = "salt",    count = 1},
            },
            ['Reward'] ={
                { name = "consumable_salmon",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                {
        ['Text'] = "Deer Jerky",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "venison",   label = "Venison",    count = 1},
            },
            ['Reward'] ={
                { name = "deerjerky",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                {
        ['Text'] = "Dried Bluegil",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "a_c_fishbluegil_01_sm",   label = "Small Bluegil",    count = 1},
                { name = "salt",   label = "salt",    count = 1},
            },
            ['Reward'] ={
                { name = "consumable_bluegil",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                {
        ['Text'] = "Cooked Trout",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "a_c_fishrainbowtrout_01_ms",   label = "Rainbow Trout",    count = 1},
                { name = "Crows_Garlic",   label = "Crows Garlic",    count = 2},
                { name = "Oleander_Sage",   label = "Oleander Sage",    count = 2},
            },
            ['Reward'] ={
                { name = "consumable_trout",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                {
        ['Text'] = "Jerkied GameMeat",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "biggame",   label = "Big Game Meat",    count = 1},
                { name = "salt",   label = "salt",    count = 2,},
            },
            ['Reward'] ={
                { name = "consumable_game",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                {
        ['Text'] = "Beef Jerky",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "beef",   label = "Beef",    count = 2},
                { name = "salt",   label = "salt",    count = 1},
                { name = "Crows_Garlic",   label = "Crows Garlic",    count = 1},
            },
            ['Reward'] ={
                { name = "beefjerky",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                    {
        ['Text'] = "Chocolate Bar",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "cocoa",   label = "Cocoa",    count = 3},
            },
            ['Reward'] ={
                { name = "consumable_chocolate",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                        {
        ['Text'] = "Churned Milk",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "milk",   label = "Milk",    count = 2},
            },
            ['Reward'] ={
                { name = "churned_milk",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                        {
        ['Text'] = "Butter",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "churned_milk",   label = "Churned Milk",    count = 2},
            },
            ['Reward'] ={
                { name = "butter",        count = 5},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                            {
        ['Text'] = "Cheese",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "churned_milk",   label = "Churned Milk",    count = 2},
                { name = "butter",   label = "butter",    count = 2},
            },
            ['Reward'] ={
                { name = "cheese",        count = 5},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                        {
        ['Text'] = "Chocolate Bar",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "cocoa",   label = "Cocoa",    count = 3},
            },
            ['Reward'] ={
                { name = "consumable_chocolate_bar",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                            {
        ['Text'] = "Salted Pork",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "pork",   label = "Pork",    count = 1},
                { name = "porkfat",   label = "Pig fat",    count = 2},
                { name = "salt",   label = "Salt",    count = 2},
            },
            ['Reward'] ={
                { name = "salted_pork",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Cooked Bacon",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "pork",   label = "Pork",    count = 2},
                { name = "porkfat",   label = "Pig fat",    count = 1},
                { name = "salt",   label = "Salt",    count = 2},
            },
            ['Reward'] ={
                { name = "Cooked_Bacon",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
    
    --stable
                            {
        ['Text'] = "horse brush",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wood",   label = "Soft Wood",    count = 2},
                { name = "fibers",   label = "Fibers",    count = 10},
            },
            ['Reward'] ={
                { name = "kit_horse_brush",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"horsetrainerval","horsetrainerblk","horsetrainersai","horsetrainertum","horsetraineremer","horsetrainermcf","horsetrainerstr","horsetrainerpro"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Peppermint Stick",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Wild_Mint",   label = "Wild Mint",    count = 2},
                { name = "sugar",   label = "Sugar",    count = 2},
            },
            ['Reward'] ={
                { name = "consumable_horsepeppermints",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"horsetrainerval","horsetrainerblk","horsetrainersai","horsetrainertum","horsetraineremer","horsetrainermcf","horsetrainerstr","horsetrainerpro"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Hay cube",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wheat",   label = "Wheat",    count = 2},
            },
            ['Reward'] ={
                { name = "consumable_haycube",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"horsetrainerval","horsetrainerblk","horsetrainersai","horsetrainertum","horsetraineremer","horsetrainermcf","horsetrainerstr","horsetrainerpro"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Sugar Cube",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "sap",   label = "Sap",    count = 2},
            },
            ['Reward'] ={
                { name = "consumable_sugarcube",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"horsetrainerval","horsetrainerblk","horsetrainersai","horsetrainertum","horsetraineremer","horsetrainermcf","horsetrainerstr","horsetrainerpro"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Hoof Knife",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 2},
                { name = "wooden_handle",   label = "Wooden Handle",    count = 1},
            },
            ['Reward'] ={
                { name = "kit_hoof_knife",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"horsetrainerval","horsetrainerblk","horsetrainersai","horsetrainertum","horsetraineremer","horsetrainermcf","horsetrainerstr","horsetrainerpro"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Horse Apple",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "apple",   label = "Apple",    count = 1},
                { name = "sugar",   label = "Sugar",    count = 1},
            },
            ['Reward'] ={
                { name = "consumable_apple",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"horsetrainerval","horsetrainerblk","horsetrainersai","horsetrainertum","horsetraineremer","horsetrainermcf","horsetrainerstr","horsetrainerpro"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Horse Reviver",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Prairie_Poppy",   label = "Prairie Poppy",    count = 5},
                { name = "sugar",   label = "sugar",    count = 2},
                { name = "Yarrow",   label = "Yarrow",    count = 2},
                { name = "consumable_water",   label = "water",    count = 2},
                { name = "English_Mace",   label = "English Mace",    count = 2},
            },
            ['Reward'] ={
                { name = "consumable_horse_reviver",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"horsetrainerval","horsetrainerblk","horsetrainersai","horsetrainertum","horsetraineremer","horsetrainermcf","horsetrainerstr","horsetrainerpro"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Horse Ointment",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Prairie_Poppy",   label = "Prairie Poppy",    count = 2},
                { name = "sugar",   label = "sugar",    count = 1},
                { name = "Yarrow",   label = "Yarrow",    count = 2},
                { name = "consumable_water",   label = "water",    count = 1},
                { name = "English_Mace",   label = "English Mace",    count = 1},
            },
            ['Reward'] ={
                { name = "consumable_horse_ointment",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"horsetrainerval","horsetrainerblk","horsetrainersai","horsetrainertum","horsetraineremer","horsetrainermcf","horsetrainerstr","horsetrainerpro"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Minty Hay Treat",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wheat",   label = "Wheat",    count = 2},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "Wild_Mint",   label = "Wild Mint",    count = 2},
            },
            ['Reward'] ={
                { name = "mintyhaytreat",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"horsetrainerval","horsetrainerblk","horsetrainersai","horsetrainertum","horsetraineremer","horsetrainermcf","horsetrainerstr","horsetrainerpro"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Apple Cookie",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wheat",   label = "Wheat",    count = 2},
                { name = "Yarrow",   label = "Yarrow",    count = 2},
                { name = "apple",   label = "Apple",    count = 2},
            },
            ['Reward'] ={
                { name = "applecookie",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"horsetrainerval","horsetrainerblk","horsetrainersai","horsetrainertum","horsetraineremer","horsetrainermcf","horsetrainerstr","horsetrainerpro"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Carroty Muffin",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wheat",   label = "Wheat",    count = 2},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "Wild_Carrot",   label = "Wild Carrot",    count = 2},
            },
            ['Reward'] ={
                { name = "carrotymuffin",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"horsetrainerval","horsetrainerblk","horsetrainersai","horsetrainertum","horsetraineremer","horsetrainermcf","horsetrainerstr","horsetrainerpro"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
    --lumber
                                {
        ['Text'] = "Wooden Handle",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wood",   label = "Soft Wood",    count = 2},
                { name = "bolts",   label = "Bolts",    count = 1},
            },
            ['Reward'] ={
                { name = "wooden_handle",        count = 3},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Empty Watering Jug",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "woodenplanks",   label = "Wooden Planks",    count = 2},
                { name = "nails",   label = "Nails",    count = 3},
                { name = "ironbar",   label = "Iron Bar",    count = 1},
            },
            ['Reward'] ={
                { name = "wateringcan_empty",        count = 2},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Flour Sack",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "fibers",   label = "Fibers",    count = 5},
                { name = "cotton",   label = "cotton",    count = 5},
            },
            ['Reward'] ={
                { name = "floursack",        count = 5},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Rifle Stock",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "hwood",   label = "Hard Wood",    count = 2},
                { name = "wood",   label = "Soft Wood",    count = 1},
                { name = "bolts",   label = "Bolts",    count = 2},
            },
            ['Reward'] ={
                { name = "riflestock",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Repeater Stock",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "hwood",   label = "Hard Wood",    count = 2},
                { name = "wood",   label = "Soft Wood",    count = 1},
                { name = "bolts",   label = "Bolts",    count = 2},
            },
            ['Reward'] ={
                { name = "repeaterstock",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Shotgun Stock",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "hwood",   label = "Hard Wood",    count = 2},
                { name = "wood",   label = "Soft Wood",    count = 1},
                { name = "bolts",   label = "Bolts",    count = 2},
            },
            ['Reward'] ={
                { name = "shotgunstock",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Revolver Handle",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wood",   label = "Soft Wood",    count = 2},
                { name = "bolts",   label = "Bolts",    count = 2},
            },
            ['Reward'] ={
                { name = "revolverhandle",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Wooden Planks",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wood",   label = "Soft Wood",    count = 2},
            },
            ['Reward'] ={
                { name = "woodenplanks",        count = 3},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "chest 1",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wood",   label = "Soft Wood",    count = 2},
                { name = "hwood",   label = "Hard Wood",    count = 2},
                { name = "nails",   label = "Nails",    count = 5},
            },
            ['Reward'] ={
                { name = "chesta",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "furni",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "chest 2",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wood",   label = "Soft Wood",    count = 2},
                { name = "hwood",   label = "Hard Wood",    count = 2},
                { name = "nails",   label = "Nails",    count = 5},
            },
            ['Reward'] ={
                { name = "chestb",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "furni",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Chest C",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wood",   label = "Soft Wood",    count = 2},
                { name = "hwood",   label = "Hard Wood",    count = 2},
                { name = "nails",   label = "Nails",    count = 5},
            },
            ['Reward'] ={
                { name = "chestc",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "furni",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                        {
        ['Text'] = "Hitching Post",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wood",   label = "Soft Wood",    count = 2},
                { name = "hwood",   label = "Hard Wood",    count = 4},
                { name = "nails",   label = "Nails",    count = 6},
            },
            ['Reward'] ={
                { name = "hitchingpost",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "furni",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Small Butcher Table",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wood",   label = "Soft Wood",    count = 2},
                { name = "hwood",   label = "Hard Wood",    count = 3},
                { name = "nails",   label = "Nails",    count = 6},
                { name = "bucks",   label = "Buck skin",    count = 2},
            },
            ['Reward'] ={
                { name = "butchertable1",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "furni",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                        {
        ['Text'] = "Medium Butcher Table",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wood",   label = "Soft Wood",    count = 3},
                { name = "hwood",   label = "Hard Wood",    count = 5},
                { name = "nails",   label = "Nails",    count = 6},
                { name = "bucks",   label = "Buck skin",    count = 2},
            },
            ['Reward'] ={
                { name = "butchertable2",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "furni",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                        {
        ['Text'] = "Large Butcher Table",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wood",   label = "Soft Wood",    count = 4},
                { name = "hwood",   label = "Hard Wood",    count = 6},
                { name = "nails",   label = "Nails",    count = 8},
                { name = "bisons",   label = "Bison pelt",    count = 2},
            },
            ['Reward'] ={
                { name = "butchertable3",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "furni",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                            {
        ['Text'] = "Water Barrel",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "wood",   label = "Soft Wood",    count = 2},
                { name = "hwood",   label = "Hard Wood",    count = 3},
                { name = "woodenplanks",   label = "Wooden Planks",    count = 2},
                { name = "nails",   label = "Nails",    count = 6},
            },
            ['Reward'] ={
                { name = "waterbarrel",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwlumber","strwlumber","vallumber"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "furni",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
    --hidden
                        {
        ['Text'] = "Ruby",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ruby_uncut",   label = "ruby uncut",    count = 1},
                { name = "blacksmiths_file",   label = "Blacksmiths File",    count = 1},
            },
            ['Reward'] ={
                { name = "ruby",        count = 1},
                { name = "blacksmiths_file",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0,
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = {"location1","location2"}, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "hidden",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                        {
        ['Text'] = "opal",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "opal_uncut",   label = "opal uncut",    count = 1},
                { name = "blacksmiths_file",   label = "Blacksmiths File",    count = 1},
            },
            ['Reward'] ={
                { name = "opal",        count = 1},
                { name = "blacksmiths_file",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0,
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = {"location1","location2"}, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "hidden",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },    
                        {
        ['Text'] = "sapphire",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "sapphire_uncut",   label = "sapphire uncut",    count = 1},
                { name = "blacksmiths_file",   label = "Blacksmiths File",    count = 1},
            },
            ['Reward'] ={
                { name = "sapphire",        count = 1},
                { name = "blacksmiths_file",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0,
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = {"location1","location2"}, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "hidden",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                            {
        ['Text'] = "Ruby Ring",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ruby",   label = "Ruby",    count = 1},
                { name = "goldnugget",   label = "Gold nugget",    count = 3},
                { name = "ironhammer",   label = "Iron Hammer",    count = 1},
            },
            ['Reward'] ={
                { name = "ruby_ring",        count = 1},
                { name = "ironhammer",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = 0,
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = {"location1","location2"}, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "hidden",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                            {
        ['Text'] = "Opal Ring",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "opal",   label = "Opal",    count = 1},
                { name = "goldnugget",   label = "Gold nugget",    count = 3},
                { name = "ironhammer",   label = "Iron Hammer",    count = 1},
            },
            ['Reward'] ={
                { name = "opal_ring",        count = 1},
                { name = "ironhammer",        count = 1},-- you can add multipule reward items
            },
            ['Job'] = 0,
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = {"location1","location2"}, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "hidden",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                            {
        ['Text'] = "Sapphire Ring",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "sapphire",   label = "Sapphire",    count = 1},
                { name = "goldnugget",   label = "Gold nugget",    count = 3},
                { name = "ironhammer",   label = "Iron Hammer",    count = 1},
            },
            ['Reward'] ={
                { name = "sapphire_ring",        count = 1},
                { name = "ironhammer",        count = 1},-- you can add multipule reward items
            },
            ['Job'] = 0,
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = {"location1","location2"}, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "hidden",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                        {
        ['Text'] = "Heroin",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "acid",   label = "Acid",    count = 2},
                { name = "Blood_Flower",   label = "Blood Flower",    count = 2},
                { name = "Prairie_Poppy",   label = "Prairie Poppy",    count = 5},
            },
            ['Reward'] ={
                { name = "heroin",        count = 1},
            },
            ['Job'] = 0,
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = {"location3","location4"}, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "hidden",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
    --blacksmiths
                            {
        ['Text'] = "Bottle Mould",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "clay",   label = "Clay",    count = 10},
                { name = "wateringcan",   label = "Water Jug",    count = 1},
            },
            ['Reward'] ={
                { name = "bottle_mould",        count = 10},
                { name = "wateringcan_empty",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Jar Mould",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "clay",   label = "Clay",    count = 10},
                { name = "wateringcan",   label = "Water Jug",    count = 1},
            },
            ['Reward'] ={
                { name = "jar_mould",        count = 10},
                { name = "wateringcan_empty",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Repeater Barrel",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 3},
                { name = "brassbar",   label = "Brass Bar",    count = 2},
                { name = "coal",   label = "Coal",    count = 2},
            },
            ['Reward'] ={
                { name = "repeaterbarrel",        count = 1}, 
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Revolver Barrel",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 3},
                { name = "brassbar",   label = "Brass Bar",    count = 2},
                { name = "coal",   label = "Coal",    count = 2},
            },
            ['Reward'] ={
                { name = "revolverbarrel",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Rifle Barrel",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 3},
                { name = "brassbar",   label = "Brass Bar",    count = 2},
                { name = "coal",   label = "Coal",    count = 2},
            },
            ['Reward'] ={
                { name = "riflebarrel",        count = 5},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Shotgun Barrel",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 3},
                { name = "brassbar",   label = "Brass Bar",    count = 2},
                { name = "coal",   label = "Coal",    count = 2},
            },
            ['Reward'] ={
                { name = "shotgunbarrel",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },

                                        {
        ['Text'] = "Pistol Barrel",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 3},
                { name = "brassbar",   label = "Brass Bar",    count = 2},
                { name = "coal",   label = "Coal",    count = 2},
            },
            ['Reward'] ={
                { name = "pistolbarrel",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },

                                {
        ['Text'] = "Revolver Cylinder",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 1},
                { name = "brassbar",   label = "Brass Bar",    count = 1},
                { name = "coal",   label = "Coal",    count = 2},
            },
            ['Reward'] ={
                { name = "revolvercylinder",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                            {
        ['Text'] = "Rifle Reciever",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 1},
                { name = "brassbar",   label = "Brass Bar",    count = 1},
                { name = "coal",   label = "Coal",    count = 1},
            },
            ['Reward'] ={
                { name = "riflereceiver",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Repeater Receiver",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 1},
                { name = "brassbar",   label = "Brass Bar",    count = 1},
                { name = "coal",   label = "Coal",    count = 1},
            },
            ['Reward'] ={
                { name = "repeaterreceiver",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Pistol Receiver",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 1},
                { name = "brassbar",   label = "Brass Bar",    count = 1},
                { name = "coal",   label = "Coal",    count = 1},
            },
            ['Reward'] ={
                { name = "pistolreceiver",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                             {
        ['Text'] = "Empty Bottle",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "sand",   label = "sand",    count = 5},
                { name = "bottle_mould",   label = "Bottle Mould",    count = 1},
                { name = "coal",   label = "Coal",    count = 2},
            },
            ['Reward'] ={
                { name = "empty_bottle",        count = 5},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                            {
        ['Text'] = "Empty Jar",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "sand",   label = "sand",    count = 5},
                { name = "jar_mould",   label = "Jar Mould",    count = 1},
                { name = "iron",   label = "Iron",    count = 2},
            },
            ['Reward'] ={
                { name = "empty_jar",        count = 5},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                        {
        ['Text'] = "Nails",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "iron",   label = "Iron",    count = 5},
            },
            ['Reward'] ={
                { name = "nails",        count = 20},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                        {
        ['Text'] = "Bolts",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "iron",   label = "Iron",    count = 5},
            },
            ['Reward'] ={
                { name = "bolts",        count = 20},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                        {
        ['Text'] = "Blacksmiths File",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 1},
                { name = "wooden_handle",   label = "Wooden Handle",    count = 1},
            },
            ['Reward'] ={
                { name = "blacksmiths_file",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                            {
        ['Text'] = "Handsaw",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 2},
                { name = "wooden_handle",   label = "Wooden Handle",    count = 1},
            },
            ['Reward'] ={
                { name = "handsaw",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Gold pan",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 3},
                { name = "rubber",   label = "Rubber",    count = 1},
            },
            ['Reward'] ={
                { name = "goldpan",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Train Repair Kit",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 3},
                { name = "rubber",   label = "Rubber",    count = 3},
                { name = "hwood",   label = "Hard Wood",    count = 5},
                { name = "wood",   label = "Soft Wood",    count = 3},
            },
            ['Reward'] ={
                { name = "train_repair_kit",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                            {
        ['Text'] = "Shell Casing",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "brassbar",   label = "Brass Bar",    count = 2},
            },
            ['Reward'] ={
                { name = "shellcasing",        count = 20},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Pickaxe",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 2},
                { name = "wooden_handle",   label = "Wooden Handle",    count = 1},
                { name = "rubber",   label = "Rubber",    count = 2},
                { name = "sap",   label = "Sap",    count = 1},
            },
            ['Reward'] ={
                { name = "pickaxe",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Reinforced Pickaxe",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 2},
                { name = "wooden_handle",   label = "Wooden Handle",    count = 1},
                { name = "rubber",   label = "Rubber",    count = 2},
                { name = "sap",   label = "Sap",    count = 1},
            },
            ['Reward'] ={
                { name = "Reinforced_Pickaxe",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                            {
        ['Text'] = "Hatchet",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 2},
                { name = "wooden_handle",   label = "Wooden Handle",    count = 1},
                { name = "rubber",   label = "Rubber",    count = 2},
                { name = "sap",   label = "Sap",    count = 1},
            },
            ['Reward'] ={
                { name = "hatchet",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Lumber Axe",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 2},
                { name = "wooden_handle",   label = "Wooden Handle",    count = 1},
                { name = "rubber",   label = "Rubber",    count = 2},
                { name = "sap",   label = "Sap",    count = 1},
            },
            ['Reward'] ={
                { name = "lumberaxe",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Iron Hammer",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 2},
                { name = "wooden_handle",   label = "Wooden Handle",    count = 1},
                { name = "sap",   label = "Sap",    count = 1},
            },
            ['Reward'] ={
                { name = "ironhammer",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Shovel",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 2},
                { name = "wooden_handle",   label = "Wooden Handle",    count = 1},
                { name = "rubber",   label = "Rubber",    count = 2},
                { name = "sap",   label = "Sap",    count = 1},
            },
            ['Reward'] ={
                { name = "shovel",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                        {
        ['Text'] = "Iron Bar",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "iron",   label = "Iron",    count = 5},
                { name = "coal",   label = "Coal",    count = 2},
            },
            ['Reward'] ={
                { name = "ironbar",        count = 5},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Brass Bar",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "iron",   label = "Iron",    count = 2},
                { name = "copper",   label = "Copper",    count = 5},
            },
            ['Reward'] ={
                { name = "brassbar",        count = 5},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                                {
        ['Text'] = "GoldBar",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "goldnugget",   label = "Gold Nuggets",    count = 20},
                { name = "coal",   label = "Coal",    count = 2},
            },
            ['Reward'] ={
                { name = "goldbar",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                        {
        ['Text'] = "Garden Hoe",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 3},
                { name = "wooden_handle",   label = "Wooden Handle",    count = 1},
                { name = "rubber",   label = "Rubber",    count = 2},
                { name = "sap",   label = "Sap",    count = 1},
            },
            ['Reward'] ={
                { name = "hoe",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                        {
        ['Text'] = "Plant Trimmer",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 2},
                { name = "wooden_handle",   label = "Wooden Handle",    count = 1},
                { name = "rubber",   label = "Rubber",    count = 2},
                { name = "sap",   label = "Sap",    count = 1},
            },
            ['Reward'] ={
                { name = "planttrimmer",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                        {
        ['Text'] = "Water Pump",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 5},
                { name = "brassbar",   label = "Brass Bar",    count = 1},
                { name = "rubber",   label = "Rubber",    count = 2},
                { name = "copper",   label = "Copper",    count = 7},
            },
            ['Reward'] ={
                { name = "water_pump",        count = 1},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
    {
        ['Text'] = "Horse Shoe",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",   label = "Iron Bar",    count = 2},
                { name = "brassbar",   label = "Brass Bar",    count = 2},
                { name = "coal",   label = "Coal",    count = 2},
            },
            ['Reward'] ={
                { name = "horse_shoe",        count = 4},
            },
            ['Job'] = {"armblacksmiths","valblacksmiths","bwblacksmiths","stdblacksmiths","stwblacksmiths","stdblacksmiths1"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
    --saloon
                            {
        ['Text'] = "Fruit Salad",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Black_Berry",   label = "Black Berry",    count = 2},
                { name = "Black_Currant",   label = "Black Currant",    count = 2},
                { name = "Creekplum",   label = "Creekplum",    count = 2},
            },
            ['Reward'] ={
                { name = "consumable_fruitsalad",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Edible Veggies",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Crows_Garlic",   label = "Crows Garlic",    count = 2},
                { name = "Parasol_Mushroom",   label = "Parasol Mushroom",    count = 2},
                { name = "Wild_Carrot",   label = "Wild Carrot",    count = 2},
                { name = "potato",   label = "Potato",    count = 2},
            },
            ['Reward'] ={
                { name = "consumable_veggies",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Breakfast",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "eggs",   label = "Egg",    count = 2},
                { name = "Parasol_Mushroom",   label = "Parasol Mushroom",    count = 2},
                { name = "salt",   label = "Salt",    count = 2},
                { name = "pork",   label = "Pork",    count = 1},
            },
            ['Reward'] ={
                { name = "consumable_breakfast",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                        {
        ['Text'] = "Fried Chicken",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "bird",   label = "Bird Meat",    count = 1},
                { name = "Yarrow",   label = "Yarrow",    count = 1},
                { name = "salt",   label = "Salt",    count = 1},
            },
            ['Reward'] ={
                { name = "Fried_Chicken",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"stdsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Sticky Chicken wings",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "bird",   label = "Bird Meat",    count = 1},
                { name = "honey",   label = "Honey",    count = 1},
                { name = "salt",   label = "Salt",    count = 1},
            },
            ['Reward'] ={
                { name = "Sticky_Chicken_wings",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"stdsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Honey Jerky",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "venison",   label = "Venison",    count = 2},
                { name = "honey",   label = "Honey",    count = 1},
                { name = "salt",   label = "Salt",    count = 1},
                { name = "porkfat",   label = "Pig fat",    count = 1},
            },
            ['Reward'] ={
                { name = "honey_jerky",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                        {
        ['Text'] = "Cottage Pie",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "beef",   label = "Beef",    count = 1},
                { name = "Wild_Carrot",   label = "Wild Carrot",    count = 4},
                { name = "Oregano",   label = "Oregano",    count = 2},
                { name = "potato",   label = "Potato",    count = 2},
            },
            ['Reward'] ={
                { name = "cottage_pie",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                            {
        ['Text'] = "Mutton Stew",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Mutton",   label = "Mutton",    count = 1},
                { name = "Wild_Carrot",   label = "Wild Carrot",    count = 4},
                { name = "Creeking_Thyme",   label = "Creeking Thyme",    count = 2},
                { name = "potato",   label = "Potato",    count = 2},
            },
            ['Reward'] ={
                { name = "Mutton_Stew",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Stake and Eggs",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "beef",   label = "Beef",    count = 1},
                { name = "eggs",   label = "Egg",    count = 2},
                { name = "Creeking_Thyme",   label = "Creeking Thyme",    count = 2},
                { name = "salt",   label = "Salt",    count = 1},
            },
            ['Reward'] ={
                { name = "stake_eggs",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Mulligan Stew",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "stringy",   label = "Stringy Meat",    count = 1},
                { name = "potato",   label = "Potato",    count = 4},
                { name = "Wild_Carrot",   label = "Wild Carrot",    count = 4},
                { name = "salt",   label = "Salt",    count = 1},
            },
            ['Reward'] ={
                { name = "mulligan_stew",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                        {
        ['Text'] = "Pork Chop And Potatoes",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "pork",   label = "Pork",    count = 1},
                { name = "potato",   label = "Potato",    count = 4},
                { name = "Wild_Carrot",   label = "Wild Carrot",    count = 4},
                { name = "salt",   label = "Salt",    count = 1},
            },
            ['Reward'] ={
                { name = "porkchop",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                            {
        ['Text'] = "Roast Beef",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "beef",   label = "Beef",    count = 1},
                { name = "potato",   label = "Potato",    count = 4},
                { name = "Wild_Carrot",   label = "Wild Carrot",    count = 4},
                { name = "Parasol_Mushroom",   label = "Parasol Mushroom",    count = 4},
            },
            ['Reward'] ={
                { name = "roastbeef",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Fried Taters",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "salt",   label = "Salt",    count = 2},
                { name = "potato",   label = "Potato",    count = 4},
                { name = "Oregano",   label = "Oregano",    count = 4},

            },
            ['Reward'] ={
                { name = "friedtater",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Bread Pudding",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "butter",   label = "butter",    count = 1},
                { name = "milk",   label = "Milk",    count = 1},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "wheat",   label = "Wheat",    count = 2},
                { name = "eggs",   label = "Egg",    count = 2},

            },
            ['Reward'] ={
                { name = "breadpudding",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"stdsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Apple Pie",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "milk",   label = "Milk",    count = 1},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "wheat",   label = "Wheat",    count = 2},
                { name = "apple",   label = "Apple",    count = 3},

            },
            ['Reward'] ={
                { name = "consumable_applepie",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                        {
        ['Text'] = "Rhubarb Crumble",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "milk",   label = "Milk",    count = 1},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "wheat",   label = "Wheat",    count = 2},
                { name = "Wild_Rhubarb",   label = "Wild Rhubarb",    count = 2},

            },
            ['Reward'] ={
                { name = "rhubarb_crumble",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"stdsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Honey cheesecake",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "milk",   label = "Milk",    count = 1},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "cheese",   label = "Cheese",    count = 2},
                { name = "honey",   label = "Honey",    count = 1},

            },
            ['Reward'] ={
                { name = "cheesecake",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"stdsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                        {
        ['Text'] = "Lemonade",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "lemon",   label = "Lemons",    count = 2},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "consumable_water",   label = "water",    count = 1},

            },
            ['Reward'] ={
                { name = "lemonade",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                            {
        ['Text'] = "Chocolate Milk",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "milk",   label = "Milk",    count = 2},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "cocoa",   label = "Cocoa",    count = 5},

            },
            ['Reward'] ={
                { name = "chocolate_milk",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"stdsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                    {
        ['Text'] = "Haymakers Punch",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "apple",   label = "Apple",    count = 3},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "Creekplum",   label = "Creekplum",    count = 5},
                { name = "honey",   label = "Honey",    count = 2},
                { name = "alcohol",   label = "Alcohol",    count = 2},

            },
            ['Reward'] ={
                { name = "haymakers_punch",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                        {
        ['Text'] = "Birch Beer",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "sap",   label = "Sap",    count = 2},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "honey",   label = "Honey",    count = 2},
                { name = "alcohol",   label = "Alcohol",    count = 2},

            },
            ['Reward'] ={
                { name = "birch_beer",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                            {
        ['Text'] = "English Tea",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "tealeaf",   label = "Tealeaf",    count = 2},
                { name = "consumable_water",   label = "water",    count = 21},
                { name = "paper",   label = "Paper",    count = 1},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "milk",   label = "Milk",    count = 1},

            },
            ['Reward'] ={
                { name = "english_tea",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Black Berry Ale",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Bitter_Weed",   label = "Bitter Weed",    count = 2},
                { name = "Black_Berry",   label = "Black Berry",    count = 2},
                { name = "alcohol",   label = "Alcohol",    count = 1},
            },
            ['Reward'] ={
                { name = "blackberryale",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                                {
        ['Text'] = "Raspberry Ale",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Bitter_Weed",   label = "Bitter Weed",    count = 2},
                { name = "Red_Raspberry",   label = "Red Raspberry",    count = 2},
                { name = "alcohol",   label = "Alcohol",    count = 1},

            },
            ['Reward'] ={
                { name = "raspberryale",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                            {
        ['Text'] = "Beer",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Bitter_Weed",   label = "Bitter Weed",    count = 2},
                { name = "alcohol",   label = "Alcohol",    count = 1},

            },
            ['Reward'] ={
                { name = "beer",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"armblacarmsaloon","bwsaloon","rsaloon","stdsaloon","twsaloon","valsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
                            {
        ['Text'] = "Wine",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Black_Berry",   label = "Black Berry",    count = 2},
                { name = "alcohol",   label = "Alcohol",    count = 1},

            },
            ['Reward'] ={
                { name = "wine",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"stdsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },

                                {
        ['Text'] = "Crown Ale",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "hop",   label = "Hop",    count = 2},
                { name = "alcohol",   label = "Alcohol",    count = 1},
                { name = "wheat",   label = "Wheat",    count = 2},
                { name = "consumable_water",   label = "water",    count = 1},

            },
            ['Reward'] ={
                { name = "Crown_Ale",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },

                                    {
        ['Text'] = "Black Gold Stout",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "coffeebeans",   label = "Coffee Beans",    count = 1},
                { name = "alcohol",   label = "Alcohol",    count = 1},
                { name = "hop",   label = "Hop",    count = 2},
                { name = "consumable_water",   label = "water",    count = 1},
                { name = "sugar",   label = "Sugar",    count = 1},

            },
            ['Reward'] ={
                { name = "black_stout",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },

                                    {
        ['Text'] = "Roobena Wine",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Black_Currant",   label = "Black Currant",    count = 2},
                { name = "alcohol",   label = "Alcohol",    count = 1},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "consumable_water",   label = "water",    count = 1},

            },
            ['Reward'] ={
                { name = "Roobena_Wine",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },

                                    {
        ['Text'] = "Peach Homestead Moonshine",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "potato",   label = "Potato",    count = 1},
                { name = "alcohol",   label = "Alcohol",    count = 1},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "consumable_water",   label = "water",    count = 1},
                { name = "peach",   label = "Peach",    count = 2},

            },
            ['Reward'] ={
                { name = "Peach_Homestead",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwsaloon"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "brewing",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },
    --docotor
                                {
        ['Text'] = "Morphine",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Prairie_Poppy",   label = "Prairie Poppy",    count = 5},
                { name = "alcohol",   label = "Alcohol",    count = 1},
                { name = "Milk_Weed",   label = "Milk Weed",    count = 3},
                { name = "syringe",   label = "Syringe",    count = 1},

            },
            ['Reward'] ={
                { name = "Morphine",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"doctor"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "survival",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },

                                {
        ['Text'] = "Herbal Medicine",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Blood_Flower",   label = "Blood Flower",    count = 5},
                { name = "alcohol",   label = "Alcohol",    count = 1},
                { name = "empty_bottle",   label = "Empty Bottle",    count = 1},

            },
            ['Reward'] ={
                { name = "herbal_medicine",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"doctor"}, 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "survival",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },

                                {
        ['Text'] = "Herbal Tonic",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Red_Sage",   label = "Red Sage",    count = 5},
                { name = "Wintergreen_Berry",   label = "Wintergreen Berry",    count = 5},
                { name = "alcohol",   label = "Alcohol",    count = 1},
                { name = "empty_bottle",   label = "Empty Bottle",    count = 1},

            },
            ['Reward'] ={
                { name = "herbal_tonic",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"doctor"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "survival",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },

    --                                 {
    --     ['Text'] = "Coal Bag",
    --     ['Desc'] = "",
    --     ['Param'] = {
    --         ['Item'] = {
    --             { name = "coal",   label = "Coal",    count = 50},
    --             { name = "floursack",   label = "Flour Sack",    count = 1},

    --         },
    --         ['Reward'] ={
    --             { name = "coal_bag",        count = 2},-- you can add multipule reward items 
    --         },
    --         ['Job'] = {"wilsonco","furymining","annesburgcoal"},
    --         ['prop'] = 0,  -- keep 0 to allow crafting from any prop
    --         ['location'] = 0, -- keep 0 to allow crafting from any marked location
    --         ['catagory'] = "basic",
    --         ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
    --         ['expadd'] = 2, -- exp added when recipie is used successfully 
    --         ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
    --     }
    -- },

    --sweet

                {
        ['Text'] = "Lemon Drops",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "lemon",   label = "Lemons",    count = 1},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "consumable_water",   label = "water",    count = 1},
            },
            ['Reward'] ={
                { name = "Lemon_Drops",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwsweet"}, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },

                {
        ['Text'] = "Lil Suckers",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "lemon",   label = "Lemons",    count = 1},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "consumable_water",   label = "water",    count = 1},
                { name = "Black_Berry",   label = "Black Berry",    count = 1},
                { name = "Wild_Rhubarb",   label = "Wild Rhubarb",    count = 1},
            },
            ['Reward'] ={
                { name = "Lil_Suckers",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwsweet"}, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },

                {
        ['Text'] = "Nannas Brown Stuff",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "milk",   label = "Milk",    count = 2},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "cocoa",   label = "Cocoa",    count = 2},
            },
            ['Reward'] ={
                { name = "Nannas_Brown_Stuff",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwsweet"}, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },

                {
        ['Text'] = "Dereks creamy fudge",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "milk",   label = "Milk",    count = 2},
                { name = "sugar",   label = "Sugar",    count = 2},
                { name = "salt",   label = "Salt",    count = 2},
            },
            ['Reward'] ={
                { name = "Dereks_creamy_fudge",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"bwsweet"}, -- keep 0 to allow crafting for any job 
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
        }
    },



        --custom
                                        {
        ['Text'] = "LaCroix Cigar",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Prairie_Poppy",   label = "Prairie Poppy",    count = 2},
                { name = "sap",   label = "Sap",    count = 2},
                { name = "coal",   label = "Coal",    count = 1},
                { name = "alcohol",   label = "Alcohol",    count = 1},
                { name = "cigar",   label = "Cigar",    count = 1},

            },
            ['Reward'] ={
                { name = "lacroix_cigar",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"stdsaloon"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "basic",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
       }
    },



        --undertaker
                                        {
        ['Text'] = "burialoil",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "whisky",   label = "Whisky",    count = 1},
                { name = "consumable_water",   label = "water",    count = 1},
                { name = "weed",   label = "weed",    count = 5},
                { name = "Red_Sage",   label = "Red Sage",    count = 10},
                

            },
            ['Reward'] ={
                { name = "burialoil",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"undertaker"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "undertaker",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
              }
    },



        --undertaker
                                        {
        ['Text'] = "burialwraps",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "cotton",   label = "cotton",    count = 2},
                { name = "whisky",   label = "whisky",    count = 1},
                { name = "wool",   label = "wool",    count = 2},
                { name = "fibers",   label = "Fibers",    count = 3},
                
            },
            ['Reward'] ={
                { name = "burialwraps",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"undertaker"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "undertaker",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
              }
    },



        --undertaker
                                        {
        ['Text'] = "goodbyliquor",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "whisky",   label = "whisky",    count = 2},
                { name = "Red_Raspberry",   label = "Red Raspberry",    count = 5},
                { name = "Black_Berry",   label = "Black Berry",    count = 5},
                

            },
            ['Reward'] ={
                { name = "goodbyliquor",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"undertaker"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "undertaker",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
              }
    },



        --undertaker
                                        {
        ['Text'] = "flowerarrangement",
        ['Desc'] = "",
        ['Param'] = {
            ['Item'] = {
                { name = "Prairie_Poppy",   label = "Prairie Poppy",    count = 5},
                { name = "Blood_Flower",   label = "Blood Flower",    count = 5},
                { name = "Red_Sage",   label = "Red Sage",    count = 5},
                { name = "paper",   label = "paper",    count = 3},
               

            },
            ['Reward'] ={
                { name = "flowerarrangement",        count = 1},-- you can add multipule reward items 
            },
            ['Job'] = {"undertaker"},
            ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "undertaker",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu 
            ['expadd'] = 2, -- exp added when recipie is used successfully 
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal 
              
 },
     
       {
        ['Text'] = "Bag Coal (50x)",
        ['Desc'] = "Pack 50 loose coal into a manageable sack.",
        ['Param'] = {
            ['Item'] = {
                { name = "coal",   label = "Coal",    count = 50},
                { name = "floursack",   label = "flour sack",    count = 1},
                -- If you want to require an empty burlap sack item, add it here:
                -- { name = "empty_sack",   label = "Empty Sack",    count = 1},
            },
            ['Reward'] ={
                { name = "coal_sack",        count = 1},
            },
            ['Job'] = 0,  -- Set to 0 for everyone, or {"miner"} to restrict
            ['prop'] = 0,  
            ['location'] = 0, 
            ['catagory'] = "basic",
            ['expreq'] = 0, 
            ['expadd'] = 5, 
            ['diff'] = 3000, 
        }
    },
    {
        ['Text'] = "Open Sack of Coal",
        ['Desc'] = "Unpack a sack to get 50 loose pieces of coal.",
        ['Param'] = {
            ['Item'] = {
                { name = "coal_sack",   label = "Sack of Coal",    count = 1},
            },
            ['Reward'] ={
                { name = "coal",        count = 50},
            },
            ['Job'] = 0,
            ['prop'] = 0,  
            ['location'] = 0, 
            ['catagory'] = "basic",
            ['expreq'] = 0, 
            ['expadd'] = 1, 
            ['diff'] = 4000, 

        }
    },

    
    
    
    
    
    
    
    
}