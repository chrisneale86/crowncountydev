Usables = {}

Usables.items = {
    -- --------------------------------------------
    --  Example usable item
    -- --------------------------------------------
    -- ["item_name"] = {
    --     name = "Item Name",          -- Name of the item
    --     keepWhenUse = true,          -- Keep item when used, useful for items that are permenant
    --     hunger = 0,
    --     thirst = 15,
    --     urine = 10,                  -- Urine value to add when consuming this item (typically from drinks)
    --     stress = -5,
    --     tempModifier = {     -- Apply Temperature modification effect
    --         value = -2,      -- negative values cool down, positive values heat up
    --         duration = 20000 -- Effect duration in milliseconds (20 seconds)
    --     },
    --     curesSnakePoison = true, -- If true, using this item cures active snake poison.
    --     player = {
    --         healthCore = 0,          -- Core health value
    --         staminaCore = 0,         -- Core stamina value
    --         healthOuter = 0,         -- Health outer value
    --         boostHealth = { 0, 0 },  -- {inner, outer} seconds
    --         boostStamina = { 0, 0 }, -- {inner, outer} seconds
    --     },
    --     horse = {
    --         healthCore = 0,          -- Core health value
    --         staminaCore = 0,         -- Core stamina value
    --         healthOuter = 0,         -- Health outer value
    --         boostHealth = { 0, 0 },  -- {inner, outer} seconds
    --         boostStamina = { 0, 0 }, -- {inner, outer} seconds
    --     },
    --     effects = {
    --         enabled = true,           -- Enable or disable animation
    --         animationName = "drink",  -- eat, drink, smoke, etc.
    --         screenFx = "",            -- Optional Screen effect to play
    --         prop = "P_BOTTLE008X",    -- Optional prop model to use for animation
    --         buffEffect = {"PlayerBoostBuff", 10} -- Optional buff effect to apply, {effectName, duration in seconds}
    --     },
    --     drunk = {                     -- Optional per-item drunk settings (overrides global Config.Drunk.min/max)
    --         min = 1,                  -- Minimum drinks needed to start getting drunk (uses global if not specified)
    --         max = 4,                  -- Maximum drinks needed to become very drunk (uses global if not specified)
    --         intensity = 1,             -- How much this drink adds to drunk level (default: 1)
    --     },
    --     returnItems = {              -- Items to give back after use
    --         { name = "item_name", label = "Item Label" amount = 1 }
    --     },
    --     requiredItemsMode = "all", -- "all" (default): needs all listed items, "any": needs one of the listed items
    --     requiredItems = { -- Items required to use this (based on requiredItemsMode)
    --         { name = "item_name", label = "Item Label", amount = 1, removeAfterUse = true }
    --     },
    --     cooldown = false, -- cooldown in milliseconds, `false` to disable.
    --     useOnMount = false, -- Allow to use the item on a mount or not, default is true.
    --     ClientAction = function()
    --         -- Optional custom client actions
    --     end,
    --     ServerAction = function(source)
    --         -- Optional custom server actions
    --     end,
    --     useCondition = function(playerData) -- Optional condition to check before using the item
    --         -- -------
    --         -- playerData: id, identifier, job (name, grade), cash
    --         -- -------
    --         -- Example for job lock
    --         if playerData.job.name == 'medic' then
    --             return true
    --         else
    --             return false, "Only medics can use this item."
    --         end
    --     end
    -- },

    -- -------------------------------------------------------
    --  Main items
    -- -------------------------------------------------------
    ['consumable_water']                      = {
        name = "water",
        hunger = 0,
        thirst = 20,
        urine = 0,
        stress = -5,
        player = {
            healthCore = 0,
            staminaCore = 0,
        },
        effects = {
            enabled = true,
            animationName = "drink",
             prop = "p_water01x",
        },
    },

    ["apple"]                      = {
        name = "Apple",
        hunger = 20,
        thirst = 20,
        stress = -3,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatApple",
        },
    },

    ["consumable_cupcake"]                      = {
        name = "Cupcake",
        hunger = 20,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eat",
        },
    },

    
    ["consumable_raspberrywater"]                      = {
        name = "Raspberry water",
        hunger = 0,
        thirst = 20,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "drink",
            prop = "p_bottlejd01x",
        },
    },

    ["consumable_blackberrywater"]                      = {
        name = "Blackberry water",
        hunger = 0,
        thirst = 20,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "drink",
            prop = "p_bottlejd01x",
        },
    },

    ["ginsengtea"]                      = {
        name = "Ginseng Tea",
        hunger = 0,
        thirst = 20,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "coffee",
            prop = "p_teacup01x",
        },
    },

    ["consumable_salmon"]                      = {
        name = "Dried Salmon",
        hunger = 20,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["deerjerky"]                      = {
        name = "Dear Jerky",
        hunger = 20,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eat",
            prop = "p_cs_jerky01x",
        },
    },

    ["consumable_bluegil"]                      = {
        name = "Dried Bluegil",
        hunger = 20,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["consumable_trout"]                      = {
        name = "Cooked Trout",
        hunger = 20,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["consumable_game"]                      = {
        name = "Jerkied GameMeat",
        hunger = 20,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eat",
            prop = "p_cs_jerky01x",
        },
    },

    ["beefjerky"]                      = {
        name = "Beef Jerky",
        hunger = 20,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eat",
            prop = "p_cs_jerky01x",
        },
    },

    ["consumable_chocolate"]                      = {
        name = "Chocolate Bar",
        hunger = 20,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eat",
            prop = "s_chocolatebar02x",
        },
    },

    ["consumable_fruitsalad"]                      = {
        name = "Fruit Salad",
        hunger = 50,
        thirst = 20,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["consumable_veggies"]                      = {
        name = "Edible Veggies",
        hunger = 50,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["consumable_breakfast"]                      = {
        name = "Breakfast",
        hunger = 80,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["Fried_Chicken"]                      = {
        name = "Fried Chicken",
        hunger = 50,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["Sticky_Chicken_wings"]                      = {
        name = "Sticky Chicken wings",
        hunger = 60,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["honey_jerky"]                      = {
        name = "Honey Jerky",
        hunger = 45,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eat",
            prop = "p_cs_jerky01x",
        },
    },

    ["cottage_pie"]                      = {
        name = "Cottage Pie",
        hunger = 80,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["Mutton_Stew"]                      = {
        name = "Mutton Stew",
        hunger = 60,
        thirst = 15,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["stake_eggs"]                      = {
        name = "Stake and Eggs",
        hunger = 60,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["mulligan_stew"]                      = {
        name = "Mulligan Stew",
        hunger = 60,
        thirst = 20,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["porkchop"]                      = {
        name = "Pork Chop And Potatoes",
        hunger = 60,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["roastbeef"]                      = {
        name = "Roast Beef",
        hunger = 80,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["friedtater"]                      = {
        name = "Fried Taters",
        hunger = 60,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["breadpudding"]                      = {
        name = "Bread Pudding",
        hunger = 50,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["consumable_applepie"]                      = {
        name = "Apple Pie",
        hunger = 50,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["rhubarb_crumble"]                      = {
        name = "Rhubarb Crumble",
        hunger = 50,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },
    
    ["cheesecake"]                      = {
        name = "Honey cheesecake",
        hunger = 50,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["salted_pork"]                      = {
        name = "Salted Pork",
        hunger = 20,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["Cooked_Bacon"]                      = {
        name = "Cooked Bacon",
        hunger = 20,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eatStew",
            prop = "p_bowl04x_stew",
        },
    },

    ["lemonade"]                      = {
        name = "Lemonade",
        hunger = 0,
        thirst = 50,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "drink",
            prop = "p_beermugglass01x",
        },
    },

    ["chocolate_milk"]                      = {
        name = "Chocolate Milk",
        hunger = 0,
        thirst = 40,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "drink",
            prop = "p_beermugglass01x",
        },
    },

    ["haymakers_punch"]                      = {
        name = "Haymakers Punch",
        hunger = 0,
        thirst = 45,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "alcohol", -- normal alcohol
        },
        drunk = {
            min = 2,       -- Beer requires 2 drinks to start feeling drunk
            max = 5,       -- 5 beers to reach very drunk state
            intensity = 1, -- Each beer adds 1 to drunk level
        },
    },

    ["birch_beer"]                      = {
        name = "Birch Beer",
        hunger = 0,
        thirst = 45,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "alcohol", -- normal alcohol
        },
        drunk = {
            min = 2,       -- Beer requires 2 drinks to start feeling drunk
            max = 5,       -- 5 beers to reach very drunk state
            intensity = 1, -- Each beer adds 1 to drunk level
        },
    },

        ["blackberryale"]                      = {
        name = "Black Berry Ale",
        hunger = 0,
        thirst = 45,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "alcohol", -- normal alcohol
        },
        drunk = {
            min = 2,       -- Beer requires 2 drinks to start feeling drunk
            max = 5,       -- 5 beers to reach very drunk state
            intensity = 1, -- Each beer adds 1 to drunk level
        },
    },

        ["raspberryale"]                      = {
        name = "Raspberry Ale",
        hunger = 0,
        thirst = 45,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "alcohol", -- normal alcohol
        },
        drunk = {
            min = 2,       -- Beer requires 2 drinks to start feeling drunk
            max = 5,       -- 5 beers to reach very drunk state
            intensity = 1, -- Each beer adds 1 to drunk level
        },
    },

    ["english_tea"]                      = {
        name = "English Tea",
        hunger = 0,
        thirst = 55,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "coffee",
            prop = "p_teacup01x",
        },
    },

    ["Crown_Ale"]                      = {
        name = "Crown Ale",
        hunger = 0,
        thirst = 55,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "alcohol", -- normal alcohol
        },
        drunk = {
            min = 2,       -- Beer requires 2 drinks to start feeling drunk
            max = 5,       -- 5 beers to reach very drunk state
            intensity = 1, -- Each beer adds 1 to drunk level
        },
    },

    ["black_stout"]                      = {
        name = "Black Gold Stout",
        hunger = 0,
        thirst = 55,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "alcohol", -- normal alcohol
        },
        drunk = {
            min = 2,       -- Beer requires 2 drinks to start feeling drunk
            max = 5,       -- 5 beers to reach very drunk state
            intensity = 1, -- Each beer adds 1 to drunk level
        },
    },

    ["Roobena_Wine"]                      = {
        name = "Roobena Wine",
        hunger = 0,
        thirst = 55,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "alcohol", -- normal alcohol
        },
        drunk = {
            min = 2,       -- Beer requires 2 drinks to start feeling drunk
            max = 5,       -- 5 beers to reach very drunk state
            intensity = 1, -- Each beer adds 1 to drunk level
        },
    },

    ["Peach_Homestead"]                      = {
        name = "Peach Homestead Moonshine",
        hunger = 0,
        thirst = 55,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "alcohol", -- normal alcohol
        },
        drunk = {
            min = 2,       -- Beer requires 2 drinks to start feeling drunk
            max = 5,       -- 5 beers to reach very drunk state
            intensity = 1, -- Each beer adds 1 to drunk level
        },
    },

        ["Lemon_Drops"]                      = {
        name = "Lemon Drops",
        hunger = 30,
        thirst = 0,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eat",
            prop = "s_candybag01x_blue",
        },
    
    },

        ["Lil_Suckers"]                      = {
        name = "Lil Suckers",
        hunger = 0,
        thirst = 25,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eat",
            prop = "s_candybag01x_red",
        },
    },

        ["Nannas_Brown_Stuff"]                      = {
        name = "Nannas Brown Stuff",
        hunger = 0,
        thirst = 35,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eat",
            prop = "s_candybag01x_blue",
        },
    },

        ["Dereks_creamy_fudge"]                      = {
        name = "Dereks creamy fudge",
        hunger = 0,
        thirst = 30,
        stress = 0,
        player = {
            healthCore = 0,
            healthOuter = 0,
        },
        effects = {
            enabled = true,
            animationName = "eat",
            prop = "s_candybag01x_red",
        },
    },




    -- Coffee example
    ["consumable_coffee"]          = {
        name = "Coffee",
        hunger = 0,
        thirst = 20,
        urine = 0,
        stress = -0,
        player = {
            staminaCore = 5,
        },
        effects = {
            enabled = true,
            animationName = "coffee",
            prop = "p_teacup01x",
        },
    },



    -- -------------------------------------------------------
    --  Medicine/Bandage/Heal examples
    -- -------------------------------------------------------

    -- Bandage example
    ["Bandage"]                    = {
        name = "Bandage",
        hunger = 0,
        thirst = 0,
        stress = -2,
        player = {
            healthCore = 35,
        },
        effects = {
            enabled = true,
            animationName = "bandage",
        },
        useOnMount = false,
        cooldown = 0,
    },

    -- -------------------------------------------------------
    --  Tobacco/Smoking items examples
    -- -------------------------------------------------------
    -- Cigarette example
    ["cigarette"]                  = {
        name = "Cigarette",
        hunger = -2,
        thirst = -5,
        stress = -0,
        player = {
            staminaCore = 5,
        },
        effects = {
            enabled = true,
            animationName = "cigarette",
        },
    },

    -- Cigar example
    ["cigar"]                      = {
        name = "Cigar",
        hunger = -3,
        thirst = -8,
        stress = -0,
        player = {
            staminaCore = 8,
        },
        effects = {
            enabled = true,
            animationName = "cigar",
        },
    },

    -- Pipe example
    ["pipe"]                       = {
        name = "Pipe",
        hunger = -2,
        thirst = -5,
        stress = -15,
        player = {
            staminaCore = 5,
        },
        effects = {
            enabled = true,
            animationName = "pipe",
        },
    },



    -- Chewing tobacco example
    ["chewingtobacco"] = {
        name = "Chewing Tobacco",
        hunger = -2,
        thirst = -5,
        stress = -15,
        player = {
            staminaCore = 12,
            boostStamina = { 10, 5 },
        },
        effects = {
            enabled = true,
            animationName = "chew_tobacco",
        }
    },
    -- -------------------------------------------------------
    --  Alcohol examples
    -- -------------------------------------------------------
    ["beer"]           = {
        name = "Beer",
        hunger = 0,
        thirst = 35,
        urine = 0,
        stress = -0,
        effects = {
            enabled = true,
            animationName = "alcohol", -- normal alcohol
        },
        drunk = {
            min = 2,       -- Beer requires 2 drinks to start feeling drunk
            max = 5,       -- 5 beers to reach very drunk state
            intensity = 1, -- Each beer adds 1 to drunk level
        },
    },

    ["wine"]           = {
        name = "Wine",
        hunger = 0,
        thirst = 45,
        urine = 0,
        stress = -0,
        effects = {
            enabled = true,
            animationName = "alcoholblackout", -- Player may wake up in random location
        },
        drunk = {
            min = 1,       -- Wine is stronger, 1 drink starts effects
            max = 3,       -- 3 wines to reach very drunk state
            intensity = 1, -- Each wine adds 1 to drunk level
              },
    },

    ["whiskey"]           = {
        name = "whiskey",
        hunger = 0,
        thirst = 15,
        urine = 0,
        stress = -0,
        effects = {
            enabled = true,
            animationName = "alcoholblackout", -- Player may wake up in random location
        },
        drunk = {
            min = 1,       -- Wine is stronger, 1 drink starts effects
            max = 3,       -- 3 wines to reach very drunk state
            intensity = 1, -- Each wine adds 1 to drunk level
        },
    },
    -- -------------------------------------------------------
    --  Horse items examples
    -- -------------------------------------------------------

    -- -------------------------------------------------------
    --  Tonic examples
    -- -------------------------------------------------------
    ["golden_tonic"]      = {
        name = "Golden Tonic",
        hunger = 0,
        thirst = 0,
        player = {
            boostHealth = { 10, 10 },
            boostStamina = { 10, 10 },
        },
        effects = {
            enabled = true,
            animationName = "drink",
            prop = "s_craftedtonic_02x",
        },
        cooldown = 120000, -- 2 minutes cooldown for powerful tonic
    },

    ["herbal_medicine"]      = {
        name = "Herbal Medicine",
        hunger = 0,
        thirst = 0,
        player = {
            boostHealth = { 10, 10 },
            boostStamina = { 0, 0 },
        },
        effects = {
            enabled = true,
            animationName = "drink",
            prop = "s_craftedtonic_02x",
        },
    },

    ["herbal_tonic"]     = {
        name = "Herbal Tonic",
        hunger = 0,
        thirst = 0,
        player = {
            boostHealth = { 0, 0 },
            boostStamina = { 10, 10 },
        },
        effects = {
            enabled = true,
            animationName = "drink",
            prop = "s_craftedtonic_02x",
        },
    },
    ["whiskey"]     = {
        name = "whiskey",
        hunger = 0,
        thirst = 15,
        player = {
            boostHealth = { 0, 0 },
            boostStamina = { 0, 0 },
        },
        effects = {
            enabled = true,
            animationName = "drink",
            prop = "s_craftedtonic_02x",
        },
    },
    -- -------------------------------------------------------
    --  Pocket Watch example
    -- -------------------------------------------------------
    -- Prop         : s_inv_pocketwatch01x, s_inv_pocketwatch02x, s_inv_pocketwatch03x, s_inv_pocketwatch04x
    -- Default prop : s_inv_pocketwatch03x (gold)
    -- -------------------------------------------------------,

    -- -------------------------------------------------------
    --  Buff examples
    -- -------------------------------------------------------
    ["lacroix_cigar"]        = {
        name = "LaCroix Cigar",
        hunger = 0,
        thirst = 0,
        stress = -0,
        player = {
            healthCore = 45,
            healthOuter = 15,
            staminaCore = 34,
            boostStamina = { 180, 180 },
            boostHealth = { 180, 180 },
        },
        effects = {
            enabled = true,
            animationName = "cigar",
        },
    },

}
