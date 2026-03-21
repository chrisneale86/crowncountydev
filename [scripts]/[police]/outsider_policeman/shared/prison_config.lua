 --Prison

Prison = {}
---------------------------------------------------------- BREAK IN CONFIG ----------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

Prison.AlarmBreakIn = { --IF PLAYERS ARE SUCCEEDED TO GET INSIDE THE PRISON THIS WILL SOUND THE ALARM
    Min = 1,            -- min time to sound the alarm
    Max = 1,            -- max time to sound the alarm
    Luck = 1,           -- 1 = 100% chance to sound the alarm if min and max are the same
    Duration = 60000,   -- for how long the alarm will sound in milisencods
}

Prison.openHoursEscapeDoor = 03 -- between this hour and close hour this door can be lockpicked this is the back door of the prison from the outside

Prison.closeHoursEscapeDoor = 04

Prison.BreakInItems = {
    "lockpick",
    -- add more items here if needed
}

Prison.LockpickTries = 5              -- how many tries player has to lock pick to break THE BACK DOORS

Prison.AlarmPositions = {             --ALARM POSITIONS AROUND THE PRISON THEY WILL PLAY 2 SECONDS IN EACH POSITION FOR A CERTAIN TIME
    vector3(3397.66, -704.90, 44.95), -- back door
    vector3(3326.2, -707.06, 44.37),  --wooden doors
    vector3(3338.75, -669.38, 45.83), -- build B
    vector3(3378.48, -661.58, 46.86), -- A
    vector3(3350.23, -643.93, 45.34), -- metal gates
}

Prison.AlarmGuards = {
    -- THESE ARE THE NPCS THAT WILL SPAWN TO ATTACK THE PLAYERS TRYING TO GET INSIDE THE PRISON, THEY WILL FIGHT ALONG SIDE ANY PLAYER THAT IS POLICE
    {
        Model = "S_M_M_AMBIENTSDPOLICE_01",
        Position = vector4(3368.8, -683.6, 41.73, 221.43),
        Weapon = "WEAPON_REPEATER_CARBINE",
        CombatAbility = 1,                           -- 0 == poor , 1 == average , 2 == professional
        FiringPattern = "FIRING_PATTERN_BURST_FIRE", --FIRING_PATTERN_FULL_AUTO, FIRING_PATTERN_BURST_FIRE, FIRING_PATTERN_BURST_FIRE_IN_COVER,  FIRING_PATTERN_SINGLE_SHOT,FIRING_PATTERN_COMPANION_DUTCH,FIRING_PATTERN_SLOW_SHOT
        ShootRate = 1000,                            -- 1000 max 0 min
        CombatAtribute = { 0, 5, 27, 58 },           --https://github.com/femga/rdr3_discoveries/tree/master/AI/COMBAT_ATTRIBUTES
        MaxHealth = 1000,
        Accuracy = math.random(10, 50),
        EnableHeadShot = true, -- if true players cant headshot npcs
    },
    {
        Model = "S_M_M_AMBIENTSDPOLICE_01",
        Position = vector4(3379.1, -689.15, 41.73, 221.43),
        Weapon = "WEAPON_REPEATER_CARBINE",
        CombatAbility = 1,
        FiringPattern = "FIRING_PATTERN_FULL_AUTO",
        ShootRate = 1000,
        CombatAtribute = { 0, 5, 27, 58 },
        MaxHealth = 1000,
        Accuracy = math.random(10, 50),
        EnableHeadShot = true,
    },
    {
        Model = "S_M_M_AMBIENTSDPOLICE_01",
        Position = vector4(3375.21, -690.29, 42.73, 331.17),
        Weapon = "WEAPON_REPEATER_CARBINE",
        CombatAbility = 1,
        FiringPattern = "FIRING_PATTERN_BURST_FIRE",
        ShootRate = 1000,
        CombatAtribute = { 0, 5, 27, 58 }, --
        MaxHealth = 1000,
        Accuracy = math.random(10, 50),
        EnableHeadShot = true,

    },
    {
        Model = "S_M_M_AMBIENTSDPOLICE_01",
        Position = vector4(3381.95, -695.06, 42.73, 318.46),
        Weapon = "WEAPON_REPEATER_CARBINE",
        CombatAbility = 1,
        FiringPattern = "FIRING_PATTERN_BURST_FIRE",
        ShootRate = 1000,
        CombatAtribute = { 0, 5, 27, 58 },
        MaxHealth = 1000,
        Accuracy = math.random(10, 50),
        EnableHeadShot = true,
    },
    {
        Model = "S_M_M_AMBIENTSDPOLICE_01",
        Position = vector4(3386.15, -695.38, 42.73, 238.5),
        Weapon = "WEAPON_REPEATER_CARBINE",
        CombatAbility = 1,
        FiringPattern = "FIRING_PATTERN_BURST_FIRE",
        ShootRate = 1000,
        CombatAtribute = { 0, 5, 27, 58 },
        MaxHealth = 1000,
        Accuracy = math.random(10, 50),
        EnableHeadShot = true,
    },
    --ADD MORE TO MAKE IT MORE DIFFICULT
}

Prison.AlarmCommand = "soundalarm"                     -- command to sound the alarm for police only

Prison.DistanceToUseCommand = 100                      -- can only use the command within this distance

Prison.CentreCoords = vector3(3371.89, -654.05, 46.47) -- center of the prison

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

--THIS ARE CONFIGURED TO BE USED WITH YOURMAPS SISIKA MLO
Prison.Config = {
    -- where players will be assigned to when they are jailed each jail cell will allow 1 player untill all is filled then 2 per cell then 3 per cell etc
    Cells = {
        {
            Name = "Cell 1",
            Position = vector4(3340.92, -664.89, 48.84, 15.04), -- spawn position
            Door = 2406235702,                                  -- door id of cell
        },
        {
            Name = "Cell 2",
            Position = vector4(3337.02, -666.26, 48.84, 11.44),
            Door = 1570804412,
        },
        {
            Name = "Cell 3",
            Position = vector4(3332.73, -667.45, 48.84, 9.88),
            Door = 2254398406,
        },
        {
            Name = "Cell 4",
            Position = vector4(3328.39, -668.45, 48.84, 6.4),
            Door = 4148143533,
        },
        {
            Name = "Cell 5", -- single cell
            Position = vector4(3326.41, -662.19, 48.83, 295.22),
            Door = 2517442265,
        },
        {
            Name = "Cell 6",
            Position = vector4(3333.03, -659.63, 48.84, 194.47),
            Door = 1412135824,
        },
        {
            Name = "Cell 7",
            Position = vector4(3337.29, -658.9, 48.84, 189.8),
            Door = 890712729,
        },
        {
            Name = "Cell 8",
            Position = vector4(3341.17, -657.21, 48.84, 190.4),
            Door = 2080255315,
        }
    },

    --INSIDE PRISON GUARDS
    -- YOU CAN SPAWN THESE GUARDS AROUND PRISON TO MAKE IT FEEL MORE ALIVE
    Guards = {
        -- building 1
        {
            Name = " Sisika Guard 1",
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector4(3345.38349609375, -660.3299560546875, 47.78969573974609, 101.2),
            Weapon = false,
            PlayAnim = {                                                               -- put false if not need an anim
                Dict = "script_common@shared_scenarios@seated@seat_drunk@male_a@base", -- to sit in chairs
                Anim = "base_sitting_ig_grizzledjon",
                Flag = 1,
                Chair = "p_chairdesk01x", -- for NPC to sit, it needs to find the chair model leave false if not needed to be sitting
            }
        },
        {
            Name = "Sisika Guard 2",
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector4(3345.88232421875, -662.4043579101562, 47.789695739746096, 187.42),
            Weapon = false,
            PlayAnim = {
                Dict = "script_common@shared_scenarios@seated@seat_drunk@male_a@base",
                Anim = "base_sitting_ig_grizzledjon",
                Flag = 1,
                Chair = "p_chairdesk01x",
            }
        },
        {
            Name = "Siska Guard 3",
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector4(3333.56, -662.60, 44.84, 291.67),
            Weapon = false,
            PlayAnim = {
                Dict = "script_common@shared_scenarios@seated@seat_drunk@male_a@base",
                Anim = "base_sitting_ig_grizzledjon",
                Flag = 1,
                Chair = "p_chairdesk01x",
            }
        },
        {
            Name = "Chief",
            Model = "cs_mp_policechief_lambert",
            Position = vector4(3341.30, -665.64, 44.84, 17.93),
            Weapon = false,
            PlayAnim = {
                Dict = "script_common@shared_scenarios@seated@seat_drunk@male_a@base",
                Anim = "base_sitting_ig_grizzledjon",
                Flag = 1,
                Chair = "p_chairdesk01x",
            },
            TasksChief = true, -- this will enable open menu of tasks players can do in Prison
        },
        {
            Name = "Sisika Guard 5",
            Model = "U_M_M_SDPOLICECHIEF_01",
            Position = vector4(3332.58, -667.88, 44.84, 11.47),
            Weapon = false,
            PlayAnim = {
                Dict = "script_common@shared_scenarios@seated@seat_drunk@male_a@base",
                Anim = "base_sitting_ig_grizzledjon",
                Flag = 1,
                Chair = "p_chairdesk01x",
            }
        },
        {
            Name = "Sisika Guard 6",
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector4(3336.85, -667.91, 44.84, 11.08),
            Weapon = "WEAPON_REPEATER_CARBINE",
        },
        {
            Name = "Sisika Guard 7",
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector4(3340.61, -669.07, 45.83, 193.43),
            Weapon = "WEAPON_REPEATER_CARBINE",
        },
        { -- wooden doors
            Name = "Sisika Release Guard ",
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector4(3332.25, -698.75, 44.07, 295.36),
            Weapon = "WEAPON_REPEATER_CARBINE",
            IsReleaseGuard = true, -- IMPORTANT THIS GUARD WILL RELEASE PLAYERS FROM CELLS AND CHECK TIME WHEN THEY WANT , JUST GO TO HIM AND FOCUS TO SEE MORE OPTIONS
        },
        {
            Name = "Sisika Guard 9",
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector4(3334.78, -701.5, 44.08, 344.01),
            Weapon = "WEAPON_REPEATER_CARBINE",
        },
        {
            Name = "Sisika Guard 10",
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector4(3353.04, -645.92, 45.34, 97.7),
            Weapon = "WEAPON_REPEATER_CARBINE",
        },
        {
            Name = "Sisika Guard 11",
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector4(3349.76, -646.94, 45.34, 284.42),
            Weapon = "WEAPON_REPEATER_CARBINE",
        },
        {
            Name = "Sisika Doctor: Tony",
            Model = "cs_sddoctor_01",
            Position = vector4(3364.68, -705.51, 45.59, 321.68),
        }
    },
    -- IN HERE YOU CAN CREATE BLIPS OF INTERESTING LOCATIONS AROUND THE PRISON FOR PLAYERS TO KNOW WHERE TO GO AND WHAT THEY ARE FOR
    Blips = {
        {
            Name = "Block A",
            Sprite = "blip_mp_location_a",
            Color = "BLIP_MODIFIER_MP_COLOR_32",
            Style = "BLIP_STYLE_AREA_TERRITORY_TRAIN",
            Position = vector3(3386.32, -660.48, 46.86),
        },
        {
            Name = "Block B",
            Sprite = "blip_mp_location_b",
            Color = "BLIP_MODIFIER_MP_COLOR_32",
            Style = "BLIP_STYLE_AREA_TERRITORY_TRAIN",
            Position = vector3(3336.61, -664.61, 45.84),

        },
        {
            Name = "Block C",
            Sprite = "blip_mp_location_c",
            Color = "BLIP_MODIFIER_MP_COLOR_32",
            Style = "BLIP_STYLE_AREA_TERRITORY_TRAIN",
            Position = vector3(3366.67, -707.31, 45.59),
        },
        {
            Name = "Doctor",
            Sprite = "blip_ped_1",
            Color = "BLIP_MODIFIER_MP_COLOR_32",
            Style = "BLIP_STYLE_AREA_TERRITORY_TRAIN",
            Position = vector3(3362.04, -708.15, 45.59),
        },
        --canteen
        {
            Name = "Canteen",
            Sprite = "blip_ped_2",
            Color = "BLIP_MODIFIER_MP_COLOR_32",
            Style = "BLIP_STYLE_AREA_TERRITORY_TRAIN",
            Position = vector3(3345.12, -659.28, 45.84),
        },
        {
            Name = "Cells",
            Sprite = "blip_ped_3",
            Color = "BLIP_MODIFIER_MP_COLOR_32",
            Style = "BLIP_STYLE_AREA_TERRITORY_TRAIN",
            Position = vector3(3332.75, -663.61, 48.84),
        },
        {
            Name = "Shop",
            Sprite = "blip_ped_4",
            Color = "BLIP_MODIFIER_MP_COLOR_32",
            Style = "BLIP_STYLE_AREA_TERRITORY_TRAIN",
            Position = vector3(3371.89, -654.05, 46.47)
        },
        {
            --library
            Name = "Library",
            Sprite = "blip_ped_5",
            Color = "BLIP_MODIFIER_MP_COLOR_32",
            Style = "BLIP_STYLE_AREA_TERRITORY_TRAIN",
            Position = vector3(3387.78, -691.33, 46.86)
        },
        { -- vigil tower
            Name = "Vigil Tower 1",
            Sprite = "blip_mp_base_1",
            Color = "BLIP_MODIFIER_MP_COLOR_32",
            Style = "BLIP_STYLE_AREA_TERRITORY_TRAIN",
            Position = vector3(3150.19, -491.15, 49.24)
        },
        {
            Name = "Vigil Tower 2",
            Sprite = "blip_mp_base_2",
            Color = "BLIP_MODIFIER_MP_COLOR_32",
            Style = "BLIP_STYLE_AREA_TERRITORY_TRAIN",
            Position = vector3(3101.45, -614.3, 52.88)
        },
        {
            Name = "Vigil Tower 3",
            Sprite = "blip_mp_base_3",
            Color = "BLIP_MODIFIER_MP_COLOR_32",
            Style = "BLIP_STYLE_AREA_TERRITORY_TRAIN",
            Position = vector3(3321.76, -519.69, 49.55)
        },

    }
}

-- these items will be ramdomly given to players after they complete a task in the prison the luck is defined in the Prison.Tasks
-- these probably wont be needed as players can just jumpt to the roof and go to the tower but you can use it for them to find certain items to help them escape, eventually to make some lockpick
Prison.BreakOutItems = {
    "metal",
}

--THIS IS IN MINUTES NOW -----NEW CHANGE
Prison.TimeFacingDecrease = 1 -- reduce time in prison on completion of tasks,



Prison.RandomLocations = 4     -- Locations List you can have like 10 , but will only choose this amount per task , it will choose 4 random locations from the list Locations this way tasks are never in the same place NOTE you must have at least 4 locations in the list

Prison.MaxTasksPerRestart = 10 -- max tasks per restart, so players can only do like 10 times sweep so they dont farm the tasks

Prison.Tasks = {

    Sweep = {           --all locations will be locked with a cooldown
        Name = "Sweep", -- name of the task
        Locations = {   -- locations to sweep
            { pos = vector3(3345.58, -688.36, 44.17), name = "#1" },
            { pos = vector3(3360.8, -698.21, 45.17),  name = "#2" },
            { pos = vector3(3366.03, -663.84, 46.32), name = "#3" },
            { pos = vector3(3389.55, -669.91, 46.86), name = "#4" },
            { pos = vector3(3372.82, -654.31, 46.47), name = "#5" },
            { pos = vector3(3346.15, -656.94, 45.84), name = "#6" },
            { pos = vector3(3337.1, -658.89, 45.84),  name = "#7" },
            { pos = vector3(3342.95, -660.98, 48.84), name = "#8" },
            { pos = vector3(3329.67, -664.38, 48.84), name = "#9" },
            { pos = vector3(3336.49, -666.13, 45.84), name = "#10" },
            { pos = vector3(3352.7, -650.07, 45.35),  name = "#11" },
            { pos = vector3(3366.99, -706.36, 45.59), name = "#12" },
            -- add more locations
        },
        Cooldown = 5,              -- cooldown in minutes until can do this taks again
        Time = 30000,              -- time to sweep in miliseconds each location
        Money = math.random(1, 5), -- money reward or put false, Money =  math.random(1, 5) / 10  to use cents
        ToolRequired = false,      -- tool required to sweep -- leave false it it doesnt require one
        RemoveDurability = 1,      -- remove durability from tool
        Durability = 100,          -- starting durability of tool
        Description = "Durability: ",
        LuckyNumber = 1,           -- 1 = 100% chance to find item from Prison.BreakOutItems
        Chance = 2,                -- 1 = 100% chance to find item, increase to lower the chance of finding item from Prison.BreakOutItems
    },
    Brush = {
        Name = "Brush",
        Locations = {
            { pos = vector3(3336.93, -666.53, 45.84), name = "#1" },
            { pos = vector3(3345.23, -665.34, 45.84), name = "#2" },
            { pos = vector3(3345.78, -657.73, 45.84), name = "#3" },
            { pos = vector3(3334.72, -663.12, 48.84), name = "#4" },
            { pos = vector3(3385.01, -655.8, 46.86),  name = "#5" },
            { pos = vector3(3390.84, -665.3, 46.86),  name = "#6" },
            { pos = vector3(3386.74, -669.98, 49.87), name = "#7" },
            { pos = vector3(3382.62, -650.46, 49.87), name = "#8" },
            { pos = vector3(3380.3, -651.58, 46.86),  name = "#9" },
            { pos = vector3(3366.21, -708.63, 45.59), name = "#10" },
            { pos = vector3(3365.66, -703.4, 45.59),  name = "#11" },
        },
        Cooldown = 5,
        Time = 60000,
        Money = math.random(1, 5),
        ToolRequired = "prisonbrush", -- leave false it it doesnt require one
        RemoveDurability = 1,
        Durability = 100,
        Description = "Durability: ",
        LuckyNumber = 1,
        Chance = 2,
    },
    Construction = {
        Name = "Construction",
        Locations = {
            { pos = vector3(3351.99, -660.27, 45.56), name = "#1", Wall = true }, -- WALL TRUE MEANS ANIMATION WILL BE FIXING ON A WALL
            { pos = vector3(3355.66, -659.91, 45.38), name = "#2", Wall = false },
            { pos = vector3(3333.75, -692.09, 44.26), name = "#3" },
            { pos = vector3(3366.06, -669.46, 46.3),  name = "#4" }, -- WILL BE HAMMERING THE FLOORS WITH WALL IS FALSE OR NUL
            --ADD MORE HERE
        },
        Cooldown = 5,
        Time = 60000,
        Money = math.random(1, 5),
        ToolRequired = "prisonhammer", -- leave false it it doesnt require one
        RemoveDurability = 1,
        Durability = 100,
        Description = "Durability: ",
        LuckyNumber = 1,
        Chance = 2,
    },
    -- DONT ADD MORE
}


Prison.Carpenter = {

    JobsAllowed = { "prison_carpenter" }, -- JOBS THAT CAN BE A CARPENTER IN PRISON -- IF EMPTY ANYONE CAN CRAFT TOOLS

    Workbench = {
        Location = vector3(3391.81, -663.72, 46.86),
    },

    Storage = { --2 STORAGE FOR TOOLS AND MATERIALS NEEDED TO CREATE TOOLS

        ToolShed = {
            Location = vector3(3387.35, -658.02, 46.86),
            Slots = 200,
            Name = "Carpenter Storage",
            UseOnlyFromList = true, -- allow only items from the list below to be stored in the armory if false can store any items
            ItemsLimit = {          -- usefull for not allowing to store anything that isnt a ready meal
                { name = "hammer",  maxcount = 50 },
                { name = "saw",     maxcount = 50 },
                { name = "shovel",  maxcount = 50 },
                { name = "pickaxe", maxcount = 50 },
                { name = "axe",     maxcount = 50 },
                { name = "sickle",  maxcount = 50 },
                { name = "bucket",  maxcount = 50 },
            },

            UsePermissions = false,
            AllowedJobsTakeFrom = {                          -- leave empty for anyone to be able to take a meal
                { jobname = "prison_carpenter", grade = 1 }, -- grade 0 cant but anything above grade 1 can
                --  { jobname = "ValSheriff",  grade = 2 }
            },
            AllowedJobsMoveTo = { -- leave empty and anyone can stock the storage
                --{ jobname = "prison_cook", grade = 0 }, -- anyone from grade 0 and above can move items to storage
                -- { jobname = "ValSheriff",  grade = 2 }   -- only sheriff can move items to storage
            },

            -- to stock this storage with items at every restart
            AddDefaultItems = false,
            DefaultItems = {
                -- items or weapons
                { name = "hammer", amount = 2 },
                { name = "saw",    amount = 2 },
            }

        },
        MaterialShed = {
            Location = vector3(3389.52, -660.0, 46.86),
            Slots = 200,
            Name = "Material Storage",
            UseOnlyFromList = true,                  -- allow only items from the list below to be stored in the armory if false can store any items
            ItemsLimit = {                           -- usefull for not allowing to store anything that isnt a ready meal
                { name = "wood",    maxcount = 50 }, -- only add items you want to add a limit, any item not found here will have item limit from items Database column limit
                { name = "nail",    maxcount = 50 },
                { name = "metal",   maxcount = 50 },
                { name = "plastic", maxcount = 50 },
                { name = "glass",   maxcount = 50 },
                { name = "stone",   maxcount = 50 },
                { name = "brick",   maxcount = 50 },
            },
            UsePermissions = false,
            AllowedJobsTakeFrom = {                          -- only cook can take items from storage to make meals, leave empty for anyone to be able to take items
                { jobname = "prison_carpenter", grade = 1 }, -- grade 0 cant but anything above grade 1 can
                --  { jobname = "ValSheriff",  grade = 2 }
            },
            AllowedJobsMoveTo = { -- leave empty and anyone can stock the storage
                --{ jobname = "prison_cook", grade = 0 }, -- anyone from grade 0 and above can move items to storage
                -- { jobname = "ValSheriff",  grade = 2 }   -- only sheriff can move items to storage
            },
            -- to stock this storage with items at every restart
            AddDefaultItems = false,
            DefaultItems = {
                -- items or weapons
                { name = "wood", amount = 50 },
                { name = "nail", amount = 50 },
            }
        }
    },
    --CRAFTING RECIPES ADD ITEMS FROM THE PRISON.TASKS
    Recepies = {
        {
            Name = "Broom",
            Label = "Requires X3 Materials",
            Ingredients = {
                wood = 1,
                nails = 2,
                fibers = 4,
            },
            IngredientsLabel = {
                wood = "Wood",
                nails = "Nails",
                fibers = "Fibers",
            },
            Time = 20000,           -- TIME TO CRAFT IN MILLISECONDS
            Reward = "prisonbroom", -- ITEM TO GIVE TO PLAYER
            Amount = 1,             -- HOW MANY ITEMS TO GIVE
            Money = 2,              -- PAY THE CARPENTER upon completion
            Durability = 100,
            Description = "Durability: "
        },
        {
            Name = "Hammer",
            Label = "Requires X3 Materials",
            Ingredients = {
                wood = 1,
                nails = 1,
                --  metal = 2,
            },
            IngredientsLabel = {
                wood = "Wood",
                nails = "Nails",
                metal = "Metal",
            },
            Time = 20000,
            Reward = "prisonhammer",
            Amount = 1,
            Money = 2,
            Durability = 100,
            Description = "Durability: "
        },
        {
            Name = "Brush",
            Label = "Requires X2 Materials",
            Ingredients = {
                wood = 1,
                nails = 2,
                fibers = 4,
            },
            IngredientsLabel = {
                wood = "Wood",
                nails = "Nails",
                fibers = "Fibers",
            },
            Time = 20000,
            Reward = "prisonbrush",
            Amount = 1,
            Money = 2,
            Durability = 100,
            Description = "Durability: "
        },
        -- add more items here, CARPENTERS CAN CRAFT OTHER ITEMS THAT THE POLICE CAN USE TO SELL IT

    }
}


Prison.Kitchen = {
    JobsAllowed = { "prison_cook" },

    Workbench = {
        Location = vector3(3346.37, -661.68, 45.84),
    },
    Storage = {
        ReadyMeals = {
            Location = vector3(3346.92, -660.37, 45.84),
            Slots = 200,
            Name = "Ready Meals",
            UseOnlyFromList = true,                -- allow only items from the list below to be stored in the armory if false can store any items
            ItemsLimit = {                         -- usefull for not allowing to store anything that isnt a ready meal
                { name = "stew",  maxcount = 50 }, -- only add items you want to add a limit, any item not found here will have item limit from items Database column limit
                { name = "bread", maxcount = 50 },
            },

            UsePermissions = true,
            AllowedJobsTakeFrom = { -- leave empty for anyone to be able to take a meal
                -- { jobname = "prison_cook", grade = 1 }, -- grade 0 cant but anything above grade 1 can
                --  { jobname = "ValSheriff",  grade = 2 }
            },
            AllowedJobsMoveTo = {                       -- only cooks can move items to storage
                { jobname = "prison_cook", grade = 0 }, -- anyone from grade 0 and above can move items to storage
                -- { jobname = "ValSheriff",  grade = 2 }   -- only sheriff can move items to storage
            },
            -- to stock this storage with items at every restart
            AddDefaultItems = false,
            DefaultItems = {
                -- items or weapons
                { name = "stew",  amount = 50 },
                { name = "bread", amount = 50 },
            }
        },
        FoodStorage = {
            Location = vector3(3350.16, -663.45, 45.84),
            Slots = 200,
            Name = "Food Storage",
            UseOnlyFromList = true,                 -- allow only items from the list below to be stored in the armory if false can store any items
            ItemsLimit = {                          -- usefull for not allowing to store anything that isnt a ready meal
                { name = "meat",   maxcount = 50 }, -- only add items you want to add a limit, any item not found here will have item limit from items Database column limit
                { name = "potato", maxcount = 50 },
                { name = "carrot", maxcount = 50 },
                { name = "onion",  maxcount = 50 },
                { name = "flour",  maxcount = 50 },
                { name = "water",  maxcount = 50 },
            },

            UsePermissions = true,
            AllowedJobsTakeFrom = {                     -- only cook can take items from storage to make meals, leave empty for anyone to be able to take items
                { jobname = "prison_cook", grade = 1 }, -- grade 0 cant but anything above grade 1 can
                --  { jobname = "ValSheriff",  grade = 2 }
            },
            AllowedJobsMoveTo = { -- leave empty and anyone can stock the storage
                --{ jobname = "prison_cook", grade = 0 }, -- anyone from grade 0 and above can move items to storage
                -- { jobname = "ValSheriff",  grade = 2 }   -- only sheriff can move items to storage
            },
            -- to stock this storage with items at every restart
            AddDefaultItems = false,
            DefaultItems = {
                -- items or weapons
                { name = "meat",   amount = 50 },
                { name = "potato", amount = 50 },
            }
        },
    },

    Recepies = {
        {
            Name = "Fish Stew",
            Label = "Requires X3 Ingredients",
            Ingredients = {
                a_c_fishsmallmouthbass_01_ms = 2,
                a_c_fishlargemouthbass_01_ms = 2,
                a_c_fishchainpickerel_01_ms = 2,

            },
            IngredientsLabel = {
                a_c_fishsmallmouthbass_01_ms = "Smallmouth Bass",
                a_c_fishlargemouthbass_01_ms = "Largemouth Bass",
                a_c_fishchainpickerel_01_ms = "Chain Pickerel",

            },
            Time = 20000,
            Reward = "prisonstew", --item must be in DB
            Amount = 1,
            Money = 2,             -- pay the cook ?
            Durability = 100,
            Description = "Durability: "
        },
        {
            Name = "Prison made Bread",
            Label = "Requires X2 Ingredients",
            Ingredients = {
                water = 3,
                bread = 1,
            },
            IngredientsLabel = {
                water = "Water",
                bread = "Bread",
            },
            Time = 10000,
            Reward = "bread",
            Amount = 1,
            Money = 1,
            Durability = 100,
            Description = "Durability: "
        },
        {
            Name = "Stone Soup",
            Label = "Requires X2 Ingredients",
            Ingredients = {
                water = 3,
                bread = 1,
            },
            IngredientsLabel = {
                water = "Water",
                bread = "Bread",
            },
            Time = 10000,
            Reward = "prisonsoup",
            Amount = 1,
            Money = 2,
            Durability = 100,
            Description = "Durability: "
        },

        --ADD MORE RECIPES HERE
    }

}

---------------------------------------------------- BREAK OUT CONFIG ----------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------
--escaping the prison should not be easy, it should take time and effort, but also not impossible
-- when a player tries to escape these will spawn

-- to use this you need PolyZone script
Prison.Zones = {
    Enable = true,    -- if false will not use zones and neither of the escape features will work
    Zone1 = {         -- prison roof area where they try to escape
        Perimeter = { -- points
            vector2(3371.88, -649.18),
            vector2(3382.13, -643.39),
            vector2(3386.81, -650.97),
            vector2(3376.57, -656.91),
        },
        Options = {
            name = "prison limiter",
            minZ = 52.00,
            maxZ = 56.44,
            debugGrid = false, -- if true will show grid so you can see zone, leave false for live server
            gridDivisions = 28,
        }
    },
    -- outside area, if they leave this area they will start being chased
    Zone2 = {
        Perimeter = {
            vector2(3326.79, -709.71),
            vector2(3274.36, -715.46),
            vector2(3273.06, -708.35),
            vector2(3323.47, -705.77),
            vector2(3310.08, -652.9),
            vector2(3330.92, -624.8),
            vector2(3309.41, -600.91),
            vector2(3275.65, -603.47),
            vector2(3244.33, -586.45),
            vector2(3239.31, -594.17),
            vector2(3233.17, -589.1),
            vector2(3208.62, -627.24),
            vector2(3164.67, -606.59),
            vector2(3246.97, -493.92),
            vector2(3344.28, -565.56),
            vector2(3314.22, -592.17),
            vector2(3317.83, -599.86),
            vector2(3353.03, -641.45),
            vector2(3390.39, -631.19),
            vector2(3416.52, -680.17),
            vector2(3398.85, -707.25),
            vector2(3369.3, -733.32),
            vector2(3327.89, -710.12),
        },
        Options = {
            name = "prison limiter 2",
            minZ = 41.44,
            maxZ = 56.44,
            debugGrid = false,
            gridDivisions = 44,
        }
    }
}


Prison.TimeToEscape = 15 --in minutes, if this time passed without player dying or getting caught by guards, the player will escape the prison and all guards will be removed

-- YOU SHOULD KNOW THAT THESE ARE NETWORKED, SOME MIGHT NOT SPAWN DUE TO NETWORK POOL IS FILLED, SO MAYBE DONT SPAWN TOO MANY depending on the server that is big or small
-- this will spawn guards or animals if player leaves the prison when trying to escape
Prison.Escape = {

    Animals = { -- will spawn only when player is swimming around the player and will delete and spawn again when player is far away from them so they will kind follow the player
        {
            Model = "A_C_ALLIGATOR_01",
        },
        {
            Model = "A_C_ALLIGATOR_01",
        },
        {
            Model = "A_C_ALLIGATOR_01",
        },
        {
            Model = "A_C_ALLIGATOR_01",
        },
        {
            Model = "A_C_ALLIGATOR_01",
        },
    },

    -- will spawn only when player is  driving or standing on a boat, this is meant to be a chase, and we know players will try to help , so these are to fight off the players helping
    -- each boat is unique you can configure the way you want
    --IMPORTANT THESE ARE VERY DIFFICULT TO KILL AND WILL SHOOT YOU FROM FAR AWAY, THEY ARE MEANT TO BE A CHALLENGE, YOU MUST EDIT THE WAY YOU WANT
    Boats = {
        --each boat will have 2 shooters and one driver
        {
            Model = "rowboat",                           -- only models that npcs can sit on
            NpcModel = "S_M_M_AMBIENTSDPOLICE_01",       -- if you want to use a different model for the npc
            NpcDriverModel = "S_M_M_AMBIENTSDPOLICE_01", -- if you want to use a different model for the npc driver
            ShootRate = 500,                             -- 1000 max 0 min
            CombatAtribute = { 0, 5, 27, 58 },           --https://github.com/femga/rdr3_discoveries/tree/master/AI/COMBAT_ATTRIBUTES
            MaxHealth = 1000,                            -- max health of npc
            Accuracy = math.random(10, 50),              -- random or set a fixed number max 100
            EnableHeadShot = true,                       -- if true npc will not die from headshots
            CombatAbility = 0,                           -- 0 == poor , 1 == average , 2 == professional
            FiringPattern = "FIRING_PATTERN_BURST_FIRE", --FIRING_PATTERN_FULL_AUTO, FIRING_PATTERN_BURST_FIRE, FIRING_PATTERN_BURST_FIRE_IN_COVER,  FIRING_PATTERN_SINGLE_SHOT,FIRING_PATTERN_COMPANION_DUTCH,FIRING_PATTERN_SLOW_SHOT
            Speed = 4.0,                                 -- speed of npc
            ShootDistance = 100.0,                       -- distance npc will shoot from
            CombatRange = 2,                             -- 0 == close , 1 == mid , 2 == far
            SeeingRange = 100.0,                         -- distance npc will see player
            HearingRange = 100.0,                        -- distance npc will hear player
        },
        {
            Model = "rowboat",
            NpcModel = "S_M_M_AMBIENTSDPOLICE_01",
            NpcDriverModel = "S_M_M_AMBIENTSDPOLICE_01",
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Speed = 4.0,
            ShootDistance = 100.0,
            CombatRange = 2,
            SeeingRange = 100.0,
            HearingRange = 100.0,
        },
        {
            Model = "rowboat",
            NpcModel = "S_M_M_AMBIENTSDPOLICE_01",
            NpcDriverModel = "S_M_M_AMBIENTSDPOLICE_01",
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Speed = 4.0,
            ShootDistance = 100.0,
            CombatRange = 2,
            SeeingRange = 100.0,
            HearingRange = 100.0,
        },
        {
            Model = "rowboat",
            NpcModel = "S_M_M_AMBIENTSDPOLICE_01",
            NpcDriverModel = "S_M_M_AMBIENTSDPOLICE_01",
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Speed = 4.0,
            ShootDistance = 100.0,
            CombatRange = 2,
            SeeingRange = 100.0,
            HearingRange = 100.0,
        },
        {
            Model = "rowboat",
            NpcModel = "S_M_M_AMBIENTSDPOLICE_01",
            NpcDriverModel = "S_M_M_AMBIENTSDPOLICE_01",
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Speed = 4.0,
            ShootDistance = 100.0,
            CombatRange = 2,
            SeeingRange = 100.0,
            HearingRange = 100.0,
        },

    },

    --ATTENTION: THEY ARE CONFIGURED TO BE HARD TO KILL AND GOOD SHOOTERS , EDIT AT YOUR OWN RISK

    -- npcs guards already spawned by the game can also fight
    ExistingGuards = {
        Enable = true,                               -- if true will enable existing guards to fight
        ShootRate = 500,                             -- 1000 max 0 min
        CombatAtribute = { 0, 5, 27, 58 },           --https://github.com/femga/rdr3_discoveries/tree/master/AI/COMBAT_ATTRIBUTES
        MaxHealth = 1000,                            -- max health of npc
        Accuracy = math.random(10, 50),              -- random or set a fixed number
        EnableHeadShot = true,                       -- if true npc will not die from headshot
        CombatAbility = 0,                           -- 0 == poor , 1 == average , 2 == professional
        FiringPattern = "FIRING_PATTERN_BURST_FIRE", --FIRING_PATTERN_FULL_AUTO, FIRING_PATTERN_BURST_FIRE, FIRING_PATTERN_BURST_FIRE_IN_COVER,  FIRING_PATTERN_SINGLE_SHOT,FIRING_PATTERN_COMPANION_DUTCH,FIRING_PATTERN_SLOW_SHOT
        Speed = 4.0,                                 -- speed of npc
        ShootDistance = 100.0,                       -- distance npc will shoot from
        CombatRange = 2,                             -- 0 == close , 1 == mid , 2 == far
        SeeingRange = 100.0,                         -- distance npc will see player
        HearingRange = 100.0,                        -- distance npc will hear player
    },

    -- these will spawn around the prison and chase the player trying to run from the prison they will kill the player
    --ATTENTION: THEY ARE CONFIGURED TO BE HARD TO KILL AND GOOD SHOOTERS , EDIT AT YOUR OWN RISK
    Npcs = {
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3307.83, -734.25, 43.13), -- position of npc
            ShootRate = 500,                             -- 1000 max 0 min
            CombatAtribute = { 0, 5, 27, 58 },           --https://github.com/femga/rdr3_discoveries/tree/master/AI/COMBAT_ATTRIBUTES
            MaxHealth = 1000,                            -- max health of npc
            Accuracy = math.random(10, 50),              -- random or set a fixed number
            EnableHeadShot = true,                       -- if true npc will not die from headshot
            CombatAbility = 0,                           -- 0 == poor , 1 == average , 2 == professional
            FiringPattern = "FIRING_PATTERN_BURST_FIRE", --FIRING_PATTERN_FULL_AUTO, FIRING_PATTERN_BURST_FIRE, FIRING_PATTERN_BURST_FIRE_IN_COVER,  FIRING_PATTERN_SINGLE_SHOT,FIRING_PATTERN_COMPANION_DUTCH,FIRING_PATTERN_SLOW_SHOT
            Weapon = "WEAPON_REPEATER_CARBINE",          -- weapon npc will use
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3292.24, -703.88, 43.48),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE",
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3284.38, -658.91, 42.78),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3339.31, -751.94, 43.44),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3383.92, -788.22, 42.91),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3371.42, -817.52, 42.24),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3416.88, -806.09, 42.46),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3429.58, -767.39, 44.13),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3481.54, -718.88, 43.66),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3467.8, -686.07, 43.36),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3442.53, -648.88, 43.42),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3430.75, -625.45, 43.75),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3385.31, -606.64, 43.93),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3355.58, -607.79, 43.81),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3339.84, -621.93, 43.45),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3240.3, -721.01, 43.29),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3265.0, -784.73, 42.78),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3223.4, -782.48, 43.36),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3170.83, -733.01, 42.18),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3124.61, -693.24, 42.42),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },
        {
            Model = "S_M_M_AMBIENTSDPOLICE_01",
            Position = vector3(3143.16, -650.56, 42.66),
            ShootRate = 500,
            CombatAtribute = { 0, 5, 27, 58 },
            MaxHealth = 1000,
            Accuracy = math.random(10, 50),
            EnableHeadShot = true,
            CombatAbility = 0,
            FiringPattern = "FIRING_PATTERN_BURST_FIRE",
            Weapon = "WEAPON_REPEATER_CARBINE"
        },

    },
}

Prison.EscapeHelp = {
    Enable = true, -- if true a boat will spawn in these random locations at random times giving players some help to escape
    -- in here at a random time of the day or night a boat will spawn giving some players some advantageto escape
    Times = {
        { Start = 5,  Stop = 6 },  -- 5am to 6am
        { Start = 17, Stop = 18 }, -- 5pm to 6pm
        -- add more times this will pick a random time every day of game time
    },
    Locations = { -- will select a random location from the list
        { Pos = vector4(3440.56, -634.76, 40.19, 283.87) },
        { Pos = vector4(3400.43, -602.71, 40.53, 341.6) },
        { Pos = vector4(3464.97, -738.27, 40.43, 262.33) },
        { Pos = vector4(3401.46, -818.02, 41.06, 182.03) },
        { Pos = vector4(3281.6, -813.62, 41.23, 217.62) }
    },
    Models = { "rowboat", "canoeTreeTrunk" } -- boat model will be random selected from this list
}


--CANNONS EXPLOSION DOES NOT SYNC WITH OTHER PLAYERS THEY ARE DISABLED FOR NOW
-- add cannons around the prison to shoot at players trying to escape, can be used other models too, these are vehicles
Prison.Cannons = {
    BlipEnabled = true,                -- if true will show blips for the cannons
    BlipSprite = "blip_weapon_cannon", -- blip sprite
    Model = "breach_cannon",           -- model of the cannon
    Locations = {                      -- to disable just leave empty
        { Pos = vector3(3373.84, -628.95, 45.92), Rot = vector3(0.0, 0.00554007291793, -86.99999237060547) },
        { Pos = vector3(3384.62, -624.41, 45.43), Rot = vector3(0.0, -0.03194281086325, -13.20329570770263) },
        { Pos = vector3(3393.95, -625.54, 44.86), Rot = vector3(0.0, 0.0, 0.0) },
        { Pos = vector3(3398.32, -634.73, 44.6),  Rot = vector3(0.0, 0.0, 0.0) },
    }
}

--AFTER DEATH WHEN TRYING TO ESCAPE PRISON
Prison.OnPlayerDeath = {
    Enable = true,                          -- if enabled ped will spawn back in the solitary confinement on death event when escaping, if false the player will respawn in doctors office
    TimeUntilRespawn = 1,                   --IN MINUTES player will be teleported to the location you assign, make sure is not longer than the core respawn time  this allows for player guards to take the player back to the prison
    OpenCellDoorTimer = 1,                  --  after the time above is passed how long player needs to be in solitary confinement locked up? in minutes if player dont complete this and relogs when he enters he must do all this time again
    IncreaseTimeFacing = math.random(1, 5), -- IN MINUTES, player was killed for trying to escape, whats the punishment? random number between 1 and 5m ? or just put one number
    OnRelogTime = 5,                        -- if player relogs before the time passed he will be teleported back to the solitary confinement and do this time. in minutes
    Doors = {
        --SOLITARY CONFINMENT YOURMAPS SISIKA MLO
        {
            Position = vector4(3347.79, -656.96, 48.84, 106.66),
            Door = 2551648116
        },
        {
            Position = vector4(3347.2, -655.12, 48.84, 96.79),
            Door = 3986970204
        },
    },
    DoctorOffice = {
        Position = vector4(3362.23, -707.88, 45.59, 218.68), -- where players will respawn when they die trying to escape or just by dying while in jail
    },
    WaitUntilRespawn = 10000,                                -- wait time after player dies when not escaping before teleporting to doctors office, make sure this is not longer than the core respawn time NEW 11/18/2024
}

-- commands for admin group to decrease and increase time in jail in minutes
-- /decrease_jail_time <playerid> <time>
-- /increase_jail_time <playerid> <time>
Prison.Commands = {
    DecreaseTime = "decrease_jail_time",
    IncreaseTime = "increase_jail_time",
}
