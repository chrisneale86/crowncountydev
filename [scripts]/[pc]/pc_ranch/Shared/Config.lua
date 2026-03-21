--> Config
Progressive_Code_Ranch_System_Config = {}
--

--> Enable Target else prompts and automatic UIS are enabled
Progressive_Code_Ranch_System_Config.EnableTarget = false
--

--> Disable ranch planting
Progressive_Code_Ranch_System_Config.DisableRanchPlanting = false
--

--> Disable ranch selling
Progressive_Code_Ranch_System_Config.DisableRanchSelling = false
--

--> Gender randomization on animal buying
Progressive_Code_Ranch_System_Config.GenderRandomChoose = false
--

--> Delete non-ranch animals or troughs near ranches
Progressive_Code_Ranch_System_Config.DeleteAmbientObjects = {
    Animals = true,

    Troughs = true,
}

--

--> Selling Bonus for animals based on xp or based on age with a +% of their base price based on the xp they have
Progressive_Code_Ranch_System_Config.SellingsBonus = {
    xpBonus = true, -- Switch this to false if you want to have the age bonus on animal selling instead of the xp bonus
    
    bonus = {
        [100] = 5,   -- 100 XP = +5%

        [200] = 10,  -- 200 XP = +10%

        [300] = 15,  -- 300 XP = +15%

        [400] = 20   -- 400 XP = +20%
    }
}

-- Progressive_Code_Ranch_System_Config.SellingsBonus = { -- Ready example to set the selling bonus to be based on animal age so if you want it this uncomment this and comment the one above
--     xpBonus = false, -- Switch this to false if you want to have the age bonus on animal selling instead of the xp bonus
    
--     bonus = {
--         [2] = 5,   -- 2 XP = +5%

--         [4] = 10,  -- 4 XP = +10%

--         [6] = 15,  -- 6 XP = +15%

--         [8] = 20   -- 8 XP = +20%

--         [10] = 30   -- 10 XP = +30%
--     }
-- }
--

--> Scale setted based on animal's age
Progressive_Code_Ranch_System_Config.AgeScale = {
    { min = 0,  max = 5,  scale = 0.7 },

    { min = 5,  max = 10, scale = 0.8 },

    { min = 10, max = math.huge, scale = 1.0 }
}
--

--> Ranches for sale
Progressive_Code_Ranch_System_Config.RanchesForSale = {
    ['Emerald'] = {
        coords = vector4(1420.58, 290.67, 89.31, 282.46),

        radius = 150.0,

        price = 1000,

        dist = 1.5,

        blip = {
            enabled = true,

            owned_ranch_blip_enabled = true,

            scale = 0.2,

            sprite = "blip_fence_building",
        },

        NPC = {
            enabled = true, -- if false then players are not going to be able to purchase this ranch themselves
            
            model = "A_M_M_ValFarmer_01"
        },

         CattleHerding = {
             dog_model = "A_C_DogHusky_01",

            coords = {
                start = vector3(1413.5903, 261.1101, 90.0495),                
                
                destination = vector3(1419.18, 233.59, 90.66)
            },
            
            Cooldown = 100 -- Cooldown in seconds before starting another cattle herding (applies after finishing a cattle herding or after canceling it)
        },

        Autoseller = {
            enabled = true,

            model = "A_M_M_ValFarmer_01",
            
            coords = vector4(1416.55, 282.86, 89.54, 18.51)
        },

        FarmingArea = {
            coords = vector3(1386.8440, 268.8705, 89.3544),

            radius = 10.0, -- Optional: area size for interaction

            max_plants = 5 -- This is the max amount of seeds can be planted at the same time
        },

        AnimalsForSale = {
            { 
                name = "Sheep", 

                male_model = "A_C_Sheep_01", 

                female_model = "A_C_Sheep_01", 

                price = 45, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "wool", amount = 1, price = 10},
                    
                    -- {item = "wool2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "sheep_meat", amount = 1, price = 20},

                    -- {item = "sheep_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'sheep_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 

                fertilizer_growth = 20 
            },

            { 
                name = "Cow", 

                male_model = "A_C_Bull_01", 

                female_model = "A_C_Cow", 

                price = 50, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "wool", amount = 1, price = 10},
                    
                    -- {item = "wool2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "sheep_meat", amount = 1, price = 20},

                    -- {item = "sheep_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'cow_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 25
            },

            { 
                name = "Chicken", 

                male_model = "A_C_Rooster_01", 

                female_model = "A_C_Chicken_01", 

                price = 50, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "egg", amount = 1, price = 10},
                    
                    -- {item = "egg2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "chicken_meat", amount = 1, price = 20},

                    -- {item = "chicken_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'chicken_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 30
            },

            { 
                name = "Pig", 

                male_model = "A_C_Pig_01", 

                female_model = "A_C_Pig_01", 

                price = 80, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "pork_meat", amount = 1, price = 10},
                    
                    -- {item = "pork_meat2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "pork_meat", amount = 1, price = 20},

                    -- {item = "pork_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'pig_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 35
            },

            { 
                name = "Goat", 

                male_model = "A_C_Goat_01", 

                female_model = "A_C_Goat_01", 

                price = 80, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "goat_milk", amount = 1, price = 10},
                    
                    -- {item = "goat_milk2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "goat_meat", amount = 1, price = 20},

                    -- {item = "goat_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'goat_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 40
            },
            
            { 
                name = "Donkey", 

                male_model = "A_C_Donkey_01", 

                female_model = "A_C_Donkey_01", 

                price = 80, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "donkey_milk", amount = 1, price = 10},
                    
                    -- {item = "donkey_milk2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "donkey_meat", amount = 1, price = 20},

                    -- {item = "donkey_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'donkey_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 40
            },
        }
    },

    ['Valentine'] = {
        coords = vector4(-229.1619, 640.0683, 113.4262, 228.3389),

        radius = 150.0,

        price = 1000,

        dist = 1.5,

        blip = {
            enabled = true,

            owned_ranch_blip_enabled = true,

            scale = 0.2,

            sprite = "blip_fence_building",
        },

        NPC = {
            enabled = true, -- if false then players are not going to be able to purchase this ranch themselves
            
            model = "A_M_M_ValFarmer_01"
        },

        CattleHerding = {
            dog_model = "A_C_DogHusky_01",
            
            coords = {
                start = vector3(-226.96, 625.17, 113.24),
                
                destination = vector3(-247.3, 610.52, 112.84)
            },

            Cooldown = 300 -- Cooldown in seconds before starting another cattle herding (applies after finishing a cattle herding or after canceling it)
        },

        Autoseller = {
            enabled = true,

            model = "A_M_M_ValFarmer_01",
            
            coords = vector4(-223.1399, 648.3945, 113.4465, 231.1406)
        },

        FarmingArea = {
            coords = vector3(-210.5138, 600.9976, 113.3275),

            radius = 10.0, -- Optional: area size for interaction

            max_plants = 5 -- This is the max amount of seeds can be planted at the same time
        },

        AnimalsForSale = {
            { 
                name = "Sheep", 

                male_model = "A_C_Sheep_01", 

                female_model = "A_C_Sheep_01", 

                price = 50, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "wool", amount = 1, price = 10},
                    
                    -- {item = "wool2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "sheep_meat", amount = 1, price = 20},

                    -- {item = "sheep_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'sheep_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 

                fertilizer_growth = 20 
            },

            { 
                name = "Cow", 

                male_model = "A_C_Bull_01", 

                female_model = "A_C_Cow", 

                price = 50, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "wool", amount = 1, price = 10},
                    
                    -- {item = "wool2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "sheep_meat", amount = 1, price = 20},

                    -- {item = "sheep_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'cow_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 25
            },

            { 
                name = "Chicken", 

                male_model = "A_C_Rooster_01", 

                female_model = "A_C_Chicken_01", 

                price = 50, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "egg", amount = 1, price = 10},
                    
                    -- {item = "egg2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "chicken_meat", amount = 1, price = 20},

                    -- {item = "chicken_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'chicken_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 30
            },

            { 
                name = "Pig", 

                male_model = "A_C_Pig_01", 

                female_model = "A_C_Pig_01", 

                price = 80, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "pork_meat", amount = 1, price = 10},
                    
                    -- {item = "pork_meat2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "pork_meat", amount = 1, price = 20},

                    -- {item = "pork_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'pig_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 35
            },

            { 
                name = "Goat", 

                male_model = "A_C_Goat_01", 

                female_model = "A_C_Goat_01", 

                price = 80, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "goat_milk", amount = 1, price = 10},
                    
                    -- {item = "goat_milk2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "goat_meat", amount = 1, price = 20},

                    -- {item = "goat_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'goat_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 40
            },
            
            { 
                name = "Donkey", 

                male_model = "A_C_Donkey_01", 

                female_model = "A_C_Donkey_01", 

                price = 80, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "donkey_milk", amount = 1, price = 10},
                    
                    -- {item = "donkey_milk2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "donkey_meat", amount = 1, price = 20},

                    -- {item = "donkey_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'donkey_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 40
            },
        }
    },

    ['HillHaven'] = {
        coords = vector4(1404.54, -867.09, 62.82, 41.63),

        radius = 150.0,

        price = 75000,

        dist = 1.5,

        blip = {
            enabled = true,

            owned_ranch_blip_enabled = true,

            scale = 0.2,

            sprite = "blip_fence_building",
        },

        NPC = {
            enabled = true, -- if false then players are not going to be able to purchase this ranch themselves
            
            model = "A_M_M_ValFarmer_01"
        },

        CattleHerding = {
            dog_model = "A_C_DogHusky_01",

            coords = {
                start = vector3(1355.98, -857.47, 71.65),                
                
                destination = vector3(1152.74, -764.45, 89.00)
            },
            
            Cooldown = 30 -- Cooldown in seconds before starting another cattle herding (applies after finishing a cattle herding or after canceling it)
        },

        Autoseller = {
            enabled = true,

            model = "A_M_M_ValFarmer_01",
            
            coords = vector4(1391.67, -840.36, 68.39, 143.30)
        },

        FarmingArea = {
            coords = vector3(1391.75, -881.00, 65.88),

            radius = 10.0, -- Optional: area size for interaction

            max_plants = 5 -- This is the max amount of seeds can be planted at the same time
        },

        AnimalsForSale = {
            { 
                name = "Sheep", 

                male_model = "A_C_Sheep_01", 

                female_model = "A_C_Sheep_01", 

                price = 50, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "wool", amount = 1, price = 10},
                    
                    -- {item = "wool2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "sheep_meat", amount = 1, price = 20},

                    -- {item = "sheep_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'sheep_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 

                fertilizer_growth = 20 
            },

            { 
                name = "Cow", 

                male_model = "A_C_Bull_01", 

                female_model = "A_C_Cow", 

                price = 50, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "wool", amount = 1, price = 10},
                    
                    -- {item = "wool2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "sheep_meat", amount = 1, price = 20},

                    -- {item = "sheep_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'cow_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 25
            },

            { 
                name = "Chicken", 

                male_model = "A_C_Rooster_01", 

                female_model = "A_C_Chicken_01", 

                price = 50, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "egg", amount = 1, price = 10},
                    
                    -- {item = "egg2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "chicken_meat", amount = 1, price = 20},

                    -- {item = "chicken_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'chicken_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 30
            },

            { 
                name = "Pig", 

                male_model = "A_C_Pig_01", 

                female_model = "A_C_Pig_01", 

                price = 80, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "pork_meat", amount = 1, price = 10},
                    
                    -- {item = "pork_meat2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "pork_meat", amount = 1, price = 20},

                    -- {item = "pork_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'pig_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 35
            },

            { 
                name = "Goat", 

                male_model = "A_C_Goat_01", 

                female_model = "A_C_Goat_01", 

                price = 80, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "goat_milk", amount = 1, price = 10},
                    
                    -- {item = "goat_milk2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "goat_meat", amount = 1, price = 20},

                    -- {item = "goat_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'goat_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 40
            },
            
            { 
                name = "Donkey", 

                male_model = "A_C_Donkey_01", 

                female_model = "A_C_Donkey_01", 

                price = 80, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "donkey_milk", amount = 1, price = 10},
                    
                    -- {item = "donkey_milk2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "donkey_meat", amount = 1, price = 20},

                    -- {item = "donkey_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'donkey_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 40
            },
        }
    },

    ['Marston'] = {
        coords = vector4(-1597.99, -1418.10, 81.93, 265.92),

        radius = 150.0,
        
        price = 85000,

        dist = 1.5,

        blip = {
            enabled = true,

            owned_ranch_blip_enabled = true,

            scale = 0.2,

            sprite = "blip_fence_building",
        },

        NPC = {
            enabled = true, -- if false then players are not going to be able to purchase this ranch themselves
            
            model = "A_M_M_ValFarmer_01"
        },

        CattleHerding = {
            dog_model = "A_C_DogHusky_01",

            coords = {
                start = vector3(-1568.07, -1401.92, 81.69),                
                
                destination = vector3(-1639.37, -1263.12, 80.94)
            },
            
            Cooldown = 30 -- Cooldown in seconds before starting another cattle herding (applies after finishing a cattle herding or after canceling it)
        },

        Autoseller = {
            enabled = true,

            model = "A_M_M_ValFarmer_01",
            
            coords = vector4(-1608.08, -1372.31, 83.00, 102.12)
        },

        FarmingArea = {
            coords = vector3(-1604.30, -1421.10, 81.83),

            radius = 10.0, -- Optional: area size for interaction

            max_plants = 5 -- This is the max amount of seeds can be planted at the same time
        },

        AnimalsForSale = {
            { 
                name = "Sheep", 

                male_model = "A_C_Sheep_01", 

                female_model = "A_C_Sheep_01", 

                price = 50, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "wool", amount = 1, price = 10},
                    
                    -- {item = "wool2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "sheep_meat", amount = 1, price = 20},

                    -- {item = "sheep_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'sheep_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 

                fertilizer_growth = 20 
            },

            { 
                name = "Cow", 

                male_model = "A_C_Bull_01", 

                female_model = "A_C_Cow", 

                price = 50, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "wool", amount = 1, price = 10},
                    
                    -- {item = "wool2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "sheep_meat", amount = 1, price = 20},

                    -- {item = "sheep_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'cow_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 25
            },

            { 
                name = "Chicken", 

                male_model = "A_C_Rooster_01", 

                female_model = "A_C_Chicken_01", 

                price = 50, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "egg", amount = 1, price = 10},
                    
                    -- {item = "egg2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "chicken_meat", amount = 1, price = 20},

                    -- {item = "chicken_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'chicken_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 30
            },

            { 
                name = "Pig", 

                male_model = "A_C_Pig_01", 

                female_model = "A_C_Pig_01", 

                price = 80, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "pork_meat", amount = 1, price = 10},
                    
                    -- {item = "pork_meat2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "pork_meat", amount = 1, price = 20},

                    -- {item = "pork_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'pig_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 35
            },

            { 
                name = "Goat", 

                male_model = "A_C_Goat_01", 

                female_model = "A_C_Goat_01", 

                price = 80, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "goat_milk", amount = 1, price = 10},
                    
                    -- {item = "goat_milk2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "goat_meat", amount = 1, price = 20},

                    -- {item = "goat_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'goat_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 40
            },
            
            { 
                name = "Donkey", 

                male_model = "A_C_Donkey_01", 

                female_model = "A_C_Donkey_01", 

                price = 80, 

                max = 5, 

                male_model_productivity = false, 

                enabled = true, 

                products = {
                    {item = "donkey_milk", amount = 1, price = 10},
                    
                    -- {item = "donkey_milk2", amount = 1, price = 10},
                },

                meats_after_slaughter = {
                    {item = "donkey_meat", amount = 1, price = 20},

                    -- {item = "donkey_meat2", amount = 1, price = 30},
                }, 

                cattleHerdingEnabled = true, 
                
                fertilizer_item = 'donkey_fertilizer', 

                fertilizer_item_amount_give_when_claim = 1, 
                
                fertilizer_growth = 40
            },
        }
    }
}
--

--> Feed, product & age system for animals
Progressive_Code_Ranch_System_Config.AnimalSystem = {
    TimeToCheck = 15, -- Time in minutes of checking the each animal hunger, thirst, age, product etc

    Food = {
        Item = 'ranch_food', -- Food item used to feed animals by players or needed item to refill food troughs

        HaveExchange = false, -- if enabled it will return you another if after giving food to an animal or to a trough
        
        ItemInExchange = 'empty_bucket' -- Item that will be given in exchange after giving food to an animal or to a trough if HaveExchange is true
    },

    Water = {
        Item = 'ranch_water', -- Water item used to give water to animals by players or needed item to refill water troughs

        HaveExchange = true, -- if enabled it will return you another if after giving water to an animal or to a trough
        
        ItemInExchange = 'empty_bucket' -- Item that will be given in exchange after giving water to an animal or to a trough if HaveExchange is true
    },

    FeedSystem = {
        AddFoodToTroughPerTime = 10, -- This amount of food  is added to the food trough each time player adds food
        
        AddWaterToTroughPerTime = 10, -- This amount of water  is added to the water trough each time player adds water 

        AddHungerToAnimalPerTimeByPlayer = 5, -- This amount of hunger is added to the animal each time it gets feed by a player

        AddThirstToAnimalPerTimeByPlayer = 5, -- This amount of thirst is added to the animal each time it gets received water by a player

        MinusWaterPerDrinkFromTrough = 5, -- This amount of water is removed from a trough of the ranch when an animal drinks water

        AddWaterToAnimalPerDrink = 5, -- This amount of thirst is added to the animal that drinks water each time=

        MinusFoodPerFeedFromTrough = 5, -- This amount of food is removed from a trough of the ranch when an animal eats food

        AddFoodToAnimalPerFeed = 5, -- This amount of hunger is added to the animal that eats food each time

        MinusFoodFromAnimalEachTime = 5, -- This amount in hunger is removed from each animal every 30 minutes

        MinusWaterFromAnimalEachTime = 5 -- This amount in thirst is removed from each animal every 30 minutes
    },

    ProductionSystem = {
        MinusProductPercentageEachTime = 50, -- This amount is remove from the percentage of the production of an animal each time you claim the product of an animal

        HungerAmountNeededToAddProductPercentage = 80, -- This amount of hunger is needed for an animal to get more percentage in producting
        
        ThirstAmountNeededToAddProductPercentage =  80, -- This amount of thirst is needed for an animal to get more percentage in producting

        ProductPercentageAddedEachTime = 25, -- Every 15 minutes 25 percentage is added to the production of an animal

        AmountToAddAfterCollectingProduct = 10, -- This amount of product is added to the storage of the ranch after collecting the product from an animal

        RequireEXPForProductivity = true, -- Enable that option if you want the animal to have exp before producting

        XPNeededForProductivity = 50 -- If the above is enabled then this amount of exp is needed for an animal to start producting
    },

    XPSystem = {
        MaxEXP = 1000, -- Max EXP an animal can have
        
        EXPAddedEachTimeAnimalReceivesWater = 5, -- EXP Added each time the animals gets feed

        EXPAddedEachTimeAnimalReceivesFood = 5, -- EXP Added each time the animals receives water

        EXPAddedEachTimeAgeUpdates = 5 -- EXP Added each time the animal gets older
    },

    AgeSystem = {
        MaxAgeForAnimalSell = 10, -- If this amount or less then the animal can be sold else it cannot be sold

        AgeAddedEveryDay = 0.2, -- This amount of age is added once a day to each animal

        AgeAnimalsByXP = true, -- Add age to animal if has 'EXPNeededForAgeUpdate' exp or more and remove that amount of exp

        EXPNeededForAgeUpdate = 100, -- EXP needed for the animal to update the age

        MaxAge = 10 -- Max age an animal can reach
    },

    PregnancySystem = {
        DurationInHours = 3, -- Duration for pregnancy in hours

        AnimationDuration = 5, -- Reproduction animation duration in seconds

        MinAgeForReproduction = 1, -- Minimum age for the selected animal to start reproduction

        MinAgeForPartner = 1 -- Minimum age for the partner animal
    },

    HerdingSystem = {
        HerdingButtons = {
            DeliverForEXP = 0x760A9C6F,

            SlaugherAnimalsForMeat = 0xF3830D8E
        },

        WolvesCounter = math.random(0, 2), -- This amount of wolves will be spawned
        
        SecondsNeededForWolvesAttackAfterStart = 120, -- Time in seconds needed for the wolves to spawn after the herding mission starts if WolvesAttackEnabled is true

        WolvesSpawnChance = 50, -- There is a chance of 20% for the wolves to spawn after a sometime from the time a herding is started

        AgeNeededForAnimalToBeHerded = 1, -- This amount of age is needed for an animal to be herded

        AmountOfMeatAddedEachAnimal = 5, -- This amount of meat is added to the ranch for each animal that is slaughtered (slaughter option)

        EXPAddedEachTimeAnimalGetsHerded = 10, -- EXP Added each time the animal gets herded (delivery option)

        WolvesAttackEnabled = false -- You can set this to false so no wolves can attack the players while they are doing their herding
    },

    SeedSystem = {
        time_need_for_update = 5, -- Time needed in minutes for each update of the water & growth

        water_removal = 1, -- This amount of water is getting removed each time the plant drinks from the water you give to it

        growth_added_each_time = 5, -- This amount of growth is added every time some water is removed

        MinimumGrowthNeededToHarvest = 25, -- This is the minimum amount of growth needed for a plant to get harvested

        MinimumHealthNeededToHarvest = 20 -- This is the minimum amount of health needed for a plant to get harvested
    }
}
--

--> Troughs that can be bought to improve feeding
Progressive_Code_Ranch_System_Config.TroughsForSale = {
    { name = "Food Trough", model = "p_feedtroughsml01x", price = 100, maxTroughs = 5 },

    { name = "Water Trough", model = "p_watertroughsml01x", price = 120, maxTroughs = 5 }
}
--

--> Seeds that can be planted
Progressive_Code_Ranch_System_Config.Seeds = {
    ['corn_seed'] = {
        label = 'Corn', -- This is the label of the plant

        model = 'crp_tobaccoplant_aa_sim', -- Model loaded for plant
        
        price = 50, -- Price of the seed to be bought

        gather_item = 'corn' -- This is the item received when the plant is ready to gather
    },

    ['berry_seed'] = {
        label = 'Red Berry', -- This is the label of the plant

        model = 'crp_tobaccoplant_aa_sim', -- Model loaded for plant

        price = 50, -- Price of the seed to be bought
        
        gather_item = 'red_berry' -- This is the item received when the plant is ready to gather
    }
}
--

--> Access to menu & commands
Progressive_Code_Ranch_System_Config.Access = {
    OwnedRanches = { -- if your permission level is superadmin or more then the menu of the owned ranches will open
        Command = 'ranches',

        GroupAccess = 'superadmin'
    },

    GiveRanch = { -- if your permission level is superadmin or more then you will have access to the /giveranch command
        Command = 'giveranch',

        GroupAccess = 'superadmin'
    },

    RanchActions = {
        Command_Enabled = true,

        Command = 'ranchactions',

        Item_Enabled = true,

        Item_Name = 'ranch_book'
    }
}
--

--> Animals whistle which is used in case you do not see an animal
Progressive_Code_Ranch_System_Config.AnimalsWhistle = "animals_whistle"
--

--> Notification texts
Progressive_Code_Ranch_System_Config.NotificationTexts = {
    ['ranch_not_near'] = 'You are not near any ranch!',

    ['ranch_no_perms'] = 'The ranch you are trying to access is not yours or your are not working for it!',
    
    ['no_ranch'] = 'No ranch found!',

    ['no_id'] = 'You have not entered a Player ID!',

    ['no_money'] = 'Not enough money left!',

    ['no_perms'] = 'Not enough permissions!',

    ['no_ranches'] = 'No available ranches to give!',

    ['no_owned_ranches'] = 'No owned ranches found!',

    ['ranch_not_found'] = 'Ranch is already removed from the player!',

    ['ranch_name_changed'] = 'The player\'s ranch has been changed from %d to %s!',

    ['ranch_name_updated'] = 'Your ranch has been changed from %d to %s!',

    ['invalid_id'] = 'No player with this id found!',

    ['ranch_already_owned'] = 'This ranch is already owned!',

    ['bought_ranch'] = 'Bought %d ranch for %s!',

    ['given_ranch'] = 'Given %d ranch to player with id %s!',

    ['received_ranch'] = 'Received %d ranch by staff!',

    ['ranch_deleted'] = '%d ranch removed from the player!',

    ['ranch_removed'] = '%d ranch removed from you by staff!',

    ['no_player_nearby'] = 'No one nearby to share the ranch key!',

    ['id_not_near'] = 'The player with this id is not near you!',
    
    ['bought_animal'] = 'Bought %d animal for %s$!',

    ['pregnant_animal'] = 'A new %d is born and is now on your ranch!',

    ['maximum_amount_animal_reached'] = 'You can\'t buy more of this animal, maximum reached!',

    ['already_has_key'] = 'Player already has the keys for this ranch!',

    ['keys_given'] = 'Keys given to player with id: %d for ranch: %s!',

    ['keys_received'] = 'Keys received from a player for ranch: %d!',

    ['no_ranch_owner'] = 'This ranch you are in the area of has no owner!',

    ['no_ranch_permission'] = 'You have no permission to this ranch!',

    ['not_enough_funds'] = 'Not enough money in the ranch to withdraw!',

    ['funds_updated'] = '%d %s$ funds. %r left funds in the ranch!',

    ['feed_animal'] = 'Animal feeded succesfully!',

    ['animal_drank'] = 'The animal drank water!',

    ['already_interact_with_animal'] = 'You or another player is already interacting with this animal, please wait!',

    ['already_interact_with_trough'] = 'You or another player is already interacting with this trough, please wait!',
    
    ['already_interact_with_plant'] = 'You or another player is already interacting with this plant, please wait!',
    
    ['no_interact_perms'] = 'No permission to interact with this animal!',

    ['animal_not_ready'] = 'This animal is not ready to produce!',

    ['animal_not_ready_fertilize'] = 'The animal is not ready to give fertilizer!',
    
    ['product_collected'] = 'You have successfully collected %s from the animal!',

    ['animal_not_hungry'] = 'This animal is not hungry enough!',

    ['animal_not_thirsty'] = 'This animal is not thirsty enough!',

    ['ranch_sold'] = '%s Ranch sold to player with id %d for %r$!',

    ['ranch_bought'] = 'You bought the %d Ranch for %s$!',

    ['withdraw_item'] = 'Successfully withdrew %d of %s!',

    ['not_enough_items'] = 'Not enough items in storage!',

    ['bought_trough'] = 'Bought %d for %s$!',

    ['food_maximum'] = 'The trough already has maximum food!',

    ['water_maximum'] = 'The trough already has maximum water!',
    
    ['food_added'] = 'Food has been successfully added to the trough!',

    ['water_added'] = 'Water has been successfully added to the trough!',

    ['no_interact_perms'] = 'You do not have permission to interact with this trough!',

    ['trough_removed'] = 'You gave the trough away and got your money back!',
    
    ['not_enough_to_add'] = 'You do not have any %d to add to the trough!',

    ['not_enough_to_give'] = 'You do not have any %d to give to the animal!',

    ['no_money_sell_ranch'] = 'Player has not enough money left to buy the %d ranch!',

    ['no_money_buy_ranch'] = 'You don\'t have enough money left to buy the %d ranch!',

    ['animal_too_old'] = 'This animal is too old to be sold!',

    ['animal_sold'] = 'You have successfully sold the animal for $%d!',

    ['animal_not_found'] = 'Animal configuration not found!',

    ['cancel_buy'] = 'Canceled animal purchase!',

    ['animal_has_no_product'] = 'This animal has no productivity!',

    ['animal_has_no_fertilizer'] = 'Animal has no fertilizer to be claimed!',
    
    ['not_many_items'] = 'You do not have that many of this item to sell!',

    ['not_selected_item'] = 'You have not selected an item to sell!',

    ['no_amount'] = 'You need to put a valid number to sell!',

    ['product_sold'] = '%dx %s has been sold for $%r!',

    ['no_inventory_space'] = 'You have no inventory space left!',

    ['cannot_carry_item'] = 'Cannot carry any other amount of this item!',

    ['not_enough_animals'] = 'You need to have 2 or more %d so you can do this!',

    ['animal_already_pregnant'] = 'This animal is already pregnant!',

    ['no_male_animal_or_min_age'] = 'No male animal of the required type and minimum age was found in your ranch!',

    ['max_animals_reached'] = 'Cannot start a reproduction with this type of animal because you already have maximum animals of the type %d in your ranch!',

    ['reproduction_in_progress'] = 'A reproduction for this ranch is already taking place or a reproduction of this type of animal is already taking place so please wait!',

    ['cannot_start_reproduction_gender'] = 'Reproduction cannot be started with a male animal!',

    ['animal_too_young'] = 'This animal is too young to reproduce!',

    ['reproduction_started'] = 'Reproduction started!', 

    ['breeding_complete'] = 'Reproduction completed!',

    ['cattle_herding_started'] = 'Cattle herding started. Protect your animals!',

    ['cattle_herding_stopped'] = 'Cattle herding canceled!',

    ['cattle_herding_reached_destination'] = 'Cattle herding target destination reached, now return the animals back!',

    ['cattle_herding_completed'] = 'Cattle herding completed, you can now choose what you want to do!',

    ['cooldown_active'] = 'You have to wait %d before doing this again!',

    ['cattle_herding_active'] = 'Cattle herding for this ranch is currently taking place!',

    ['cattle_herding_cannot_start'] = 'Cattle herding cannot start as you are not inside the marker!',

    ['none_animals_with_required_age'] = 'None of the animals with that type have the required age to be herded!',

    ['cattle_herding_cooldown'] = 'Cattle herding is on cooldown for %d more seconds!',

    ['herding_happening'] = 'Cannot do this while a herding is taking place on your ranch!',

    ['herding_died'] = 'You died! Herding has been stopped!',
        
    ['wolves_attack'] = 'Wolves are attacking your herd, protect your animals!',

    ['animals_delivered'] = 'Animals delivered. You gained experience!',

    ['animals_slaughtered'] = 'Animals slaughtered for meat!',

    ['plant_not_thirsty'] = 'Plant currently does not need any water!',

    ['cannot_harvest'] = 'Cannot harvest plant as it is on seedling stage!',

    ['plant_harvested'] = 'Plant harvested!',

    ['plant_harvested_nothing'] = 'Died plant harvested!',

    ['no_fertilizer_type'] = 'You don’t have that fertilizer!',

    ['fertilizer_applied'] = 'Fertilizer applied! +%d% growth.',

    ['already_fertilized'] = 'Plant is already fertilized!',

    ['plant_water'] = 'You have watered the plant!',

    ['fertilizer_claimed'] = 'Got %dx %s fertilizer!',

    ['plant_nearby'] = 'There\'s already a plant nearby!',

    ['seed_planted'] = 'Plant placed!',

    ['seed_canceled'] = 'Planting cancelled!',

    ['not_valid_plant_zone'] = 'You are not in a valid planting zone!',

    ['not_valid_plant_model'] = 'Invalid plant model!',

    ['ranch_not_yours'] = 'You cannot do that in this ranch as it is not yours!'
}
--

--> Translation Texts
Progressive_Code_Ranch_System_Config.TranslationTexts = {
    availableRanches = "AVAILABLE RANCHES",

    noAvailableRanches = "No Available Ranches",
    
    noItemsToSell = "No items to sell",
    
    notSelectedItem = "You have not selected an item to sell!",
    
    noAmount = "You need to put a valid number to sell!",
    
    notManyItems = "You do not have that many of this item to sell!",
    
    selectOptionDetails = "Select an option to see more details...",

    noStorageItems = "No items in storage.",

    depositFunds = "DEPOSIT FUNDS",

    withdrawFunds = "WITHDRAW FUNDS",

    availableFunds = "Available Funds",

    enterAmount = "Enter Amount of $",

    sellRanch = "SELL YOUR RANCH",

    shareKey = "SHARE KEY",

    enterPlayerId = "Enter Player ID",

    enterSalePrice = "Enter Sale Price",

    giveKey = "Give",

    sellAnimal = "Sell Animal",

    sell = "Sell",

    deposit = "Deposit",

    withdraw = "Withdraw",

    buyRanch = "Buy Ranch",

    confirm = "Confirm",

    cancel = "Cancel",

    move = "Move",

    rotate = "Rotate",

    cattleHerdingStart = "Press [G] to start herding for",

    cattleHerdingCancel = "Press [Backspace] to cancel",
    
    keybindsHeader = "Keybinds",
    
    keybindsMove = "Move: <b>Arrow Keys</b>",
    
    keybindsRotate = "Rotate: <b>Q / E</b>",
    
    keybindsConfirm = "Confirm: <b>Enter</b>",
    
    keybindsCancel = "Cancel: <b>Backspace</b>",

    buyRanchConfirmation = "Do you want to buy %s Ranch for $%s?",

    giveKeyConfirmation = "Someone wants you to join %s ranch. Accept and get the key?",

    sellRanchConfirmation = "Someone is selling you the %s ranch. Accept and buy it for $%s?",

    sellAnimalConfirmation = "Are you sure you want to sell this animal for $%s?",

    giveKey = "Give Key",
    
    manageKeyHolders = "MANAGE KEY HOLDERS",
    
    purchaseAnimals = "PURCHASE ANIMALS",
    
    manageAnimals = "MANAGE ANIMALS",
    
    improveFeeding = "IMPROVE FEEDING",

    purchaseSeeds = "PURCHASE SEEDS",
    
    storageAccess = "ACCESS STORAGE",
    
    availableFunds = "AVAILABLE FUNDS",

    animalInfoHeader = "ANIMAL INFO",

    sexMale = "♂️",
    
    sexFemale = "♀️",
    
    exp = "EXP",

    sex = "Sex",
    
    product = "Product",

    fertilizer = 'Fertilizer',

    hasFertilizer = "Available",
    
    noFertilizer = "Nothing to collect",
    
    health = "Health",
    
    hunger = "Hunger",
    
    thirst = "Thirst",
    
    age = "Age",

    pregnancy = "Pregnancy",
    
    actions = "Actions",
    
    sellAnimalMini = "Sell",

    pregnantButton = "Pregnant",
    
    backButtonManageAnimals = "Back",
    
    cattleHerdingTitle = "Cattle Herding",

    pressGToHerd = "<p>Press <span style='color: #ffd700;'>[G]</span> to start herding for <strong>{name}</strong></p>",

    pressBackspaceToCancel = "<p>Press <span style='color: #ff0000;'>[Backspace]</span> to cancel</p>",

    cattleHerdingButton = "Press [G] to start cattle herding",

    moveCloserHerding = "You're too far from the herd. Move closer to continue.",

    herdComplete = "Herding complete. Press [G] to deliver and gain EXP or [J] to slaughter for meat.",

    herdAnimalsDestination = "Get the animals to the destination, the animals will follow you and be careful because you may get attacked by wolves!",

    herdAnimalsReturn = "Return the animals, the animals will follow you!",
    
    putFood = "Put Food",

    addWater = "Add Water",

    getTrough = "Get Trough",

    level = "Level:",

    food = "Food",

    water = "Water",

    interactTrough = "Interact with the %s trough",

    buyRanch = "Buy Ranch",

    ranchBuyDescription = "Get the ranch as yours by giving some money",

    interactAnimal = "Interact with the animal",

    giveWater = "Give Water",

    feed = "Feed",

    collectProducts = "Collect Products",

    startReproduction = "Start Reproduction",

    collectFertilizer = "Collect Fertilizer",
    
    accessAutoseller = "Access Autoseller",

    sellProducts = "Sell Products",

    accessPlant = "Access plant",

    chooseGender = "Choose Gender",

    availableFundsTitle = "Available Funds",

    genderMale = "Male",

    genderFemale = "Female",

    priceLabel =  "Price",

    buyButton =  "Buy",

    viewButton =  "View",

    availableLabel =  "Available",

    totalBoughtLabel =  "Total Bought",

    noOwnedAnimals =  "No owned animals found..",

    noItemsInStorage =  "No items in storage.",

    withdrawButton =  "Withdraw",

    enterAmountPlaceholder =  "Enter amount",

    maxLabel =  "Max",

    feedingTooltip =  "This {troughName} helps improve feeding efficiency. Refill it regularly to keep your animals nourished.",

    getKeyButton = "Get Key",

    selectToSee = "Select an option to see more details...",

    noItemsToSell = "No items to sell",

    autosellerTitle = "Autoseller",

    selectOptionHint = "Select an option to see more details...",

    noItemsInStorage = "No items in storage.",

    availableLabel = "Available",

    enterAmountPlaceholder = "Enter amount",

    withdrawButton = "Withdraw",

    noEmployeesFound = "No employees found..",

    ranchFood = "ranch food",

    ranchWater = "ranch water",

    accessRestricted = "Access Restricted",

    ranchSold = "Ranch Sold",

    myRanch = '[My Ranch]',

    bought = '[Bought]',

    harvestButton = "Harvest",

    waterButton = "Water",

    checkButton = "Check",

    giveKeyDescription = "Give another player access to your ranch",

    selectFertilizer = "SELECT FERTILIZER",
    
    fertilizeButton = "FERTILIZE",

    plantStageSeedling = "SEEDLING",

    plantStageYoungPlant = "YOUNG PLANT",

    plantStageMaturePlant = "MATURE PLANT",

    plantStageReadyToHarvest = "READY TO HARVEST",

    plantGrowthLabel = "GROWTH",

    plantHealthLabel = "HEALTH",

    plantWaterLabel = "WATER",

    plantCurrentStageLabel = "CURRENT STAGE:",

    plantWaterRemovalLabel = "WATER REMOVAL:",

    plantFertilizerAppliedLabel = "FERTILIZER APPLIED:"
}
--