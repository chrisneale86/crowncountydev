--Config
Config = {}

Config.DevMode = false                               -- set to false when done testing

Config.AllowSpeechWhileNuiFocused = true            -- if true will allow totalk while NUI is focused, if false will disable talking. NOTE this can create some issues. if it does put false

Config.UseRelationshipGroup = true                  -- if true when law goes onduty they will be added to a group , they cant attack each other and guards from sisika cant attack you either, when off duty it removes this group

Config.MenuColor = "white"                          -- menu color NEW <<<<<<<<<<<

Config.Align = "top-left"                           -- menu position

Config.UseSynDuty = true                           -- if true will set you on duty as well for syn society duty system, allowing both to be on duty you must have same location names in both scripts

Config.Year = 1901                                  -- year of the server

Config.PatternBilling = "[A-Za-z]+"                 -- language pattern

Config.PatternReasonBilling = "[A-Za-z0-9 ]{4,500}" -- language pattern

Config.PatternWantedType = "[A-Za-z0-9 ]{4,100}"


-- decide the date format
Config.GetDateFormat = function(month, day)
    return ("%s-%s-%s"):format(tostring(month), tostring(day), tostring(Config.Year))
end

-- DRAG SYSTEM NEW
Config.UseDrag = true       -- this enables drag system and can be used like cuffs and hogtie in law actions

Config.DragCommand = "drag" -- a command can also be used to drag players, leave empty string if you dont want a command
---------------------------------------------

Config.MaxEmployees = 10 -- max players that can be hired per town

-- OFF DUTY  COOL DOWN
Config.CoolDownDuty = 60 * 1000       -- 10 minutes in milliseconds if you want 5 minutes do 300 * 1000 2 minutes 120 * 1000 etc

Config.PayDutyFromLedger = true      -- if true will pay from police ledger

Config.UseCommandGoOnDuty = true      -- if true will use command to go on duty

Config.CommandDuty = "duty"           -- command to go on duty
---------------------------------------------
Config.PutOnBadgeCommand = "badge"    -- command to put on badge or remove if on duty and is a police

Config.ShowBadgeCommand = "showbadge" -- command to show badge, to put badge you need to o to wardrobe and put it on if on duty (I will add command to adjust badge position)

Config.EditBadgeCommand = "editbadge" -- command to edit badge position

---------------------------------------------
-- HOGTIE SYSTEM
Config.UseHogtieSystem = true       -- if false will disable hogtie system

Config.HogtieBreakFreeDistance = 25 -- distance to break free from hogtie when theres no players arround ped will be able to break free

Config.WaitToBreakFree = 3 * 10000  -- after distance how long player needs to wait to be able to break free 3 * 10000 is 30 seconds

-------------------------------------------
Config.UseFastHogtie = true                   -- if true will use fast hogtie prompt

Config.AllowSearchPoliceOfficers = true       -- if true police can search police players hogtie and cuff

Config.LockpickResourceName = "lockpick"      -- resource name for lockpick you cant have 2 scripts named the same

Config.WagonLockpickItem = "wagonlockpick"    -- item name for lockpick wagon doors

Config.MaxSpeedWhenCuffed = 1.9               -- max speed when player is cuffed 3.0 is max speed

Config.CuffItem = "handcuffs"                     -- to jail must have item in inventory

Config.UseCuffsAsItems = true                 -- if true cuffs can be used as items, meaning anyone that has cuffs can use it not just police POLICE DONT NEED THIS THEY ONLY NEED CUFFS IN INVENTORY

Config.CuffItemKeys = "handcuffkey"                  -- if above is enabled this key will be usable to remove cuffs POLICE DONT NEED THIS  only works if above is enabled

Config.RopeItem = "rope"                      -- to fast hogtie must have item in inventory

Config.RemoveLawItem = true                   -- if true will remove cuffs or rop from inve when doing cuff or hogtie, then give back when you do the opposite action

Config.HowManyTries = 3                       -- how many tries to lockpick a wagon

Config.OutsiderNotes = false                  -- if you have my script ,if false player will get an item as bill with metadata about the billing  if true Player will get a note with the bill

Config.DisableEmoteWheel = true               -- if true will disable emote wheel when you press left button on wouse wheel wich can be annoying

Config.WhistleKey = `INPUT_SELECT_RADAR_MODE` -- key for police on duty to press to whistle KEY by default is ALT press and hold


--PUT THE ANIM OF WHAT YOUR SERVER USES FOR HANDS UP THIS WILL CHECK IF PLAYERS ARE WITH HANDS UP FOR LAW TO SEARCH works with rm menu and xakra steal
Config.HandsUpDict = "script_proc@robberies@shop@rhodes@gunsmith@inside_upstairs"

Config.HandsUpName = "handsup_register_owner"
-----------------------------------------------------------------------------------------------------------------
--THIS ARE THE ITEMS NAMES TO USE AS BADGES
Config.ShowBadge = {
    -- badges you hold in hand positioning, test it and adjust it
    s_badgesherif01x = { -- badge model name AND ITEM NAME
        Male = { x = 0.12, y = 0.05, z = -0.05, rx = 0.0, ry = 150.0, rz = 98.0, Bone = 299, Message = "SHERIFF" },
        Female = { x = 0.12, y = 0.05, z = -0.05, rx = 0.0, ry = 150.0, rz = 98.0, Bone = 299, Message = "SHERIFF" }
    },

    p_deputybadge01x = {
        Male = { x = 0.12, y = 0.05, z = -0.05, rx = 0.0, ry = 150.0, rz = 98.0, Bone = 299, Message = "DEPUTY" },
        Female = { x = 0.12, y = 0.05, z = -0.05, rx = 0.0, ry = 150.0, rz = 98.0, Bone = 299, Message = "DEPUTY" }
    }
    -- add More if you want
}

-- only these weapons are allowed in the racks
Config.WeaponsAllowedInRack = {
    rifles = {
        [`WEAPON_RIFLE_SPRINGFIELD`] = {
            offset = { z = 0.60, y = 0.0 },
            rotation = { x = 0.0, y = -90.0, z = 90.0 },
            label = "Springfield Rifle",
        },
        [`WEAPON_RIFLE_BOLTACTION`] = {
            offset = { z = 0.61, y = 0.0 },
            rotation = { x = 0.0, y = -90.0, z = 90.0 },
            label = "Bolt Action Rifle",
        },
        [`WEAPON_SNIPERRIFLE_ROLLINGBLOCK`] = {
            offset = { z = 0.61, y = 0.0 },
            rotation = { x = 0.0, y = -90.0, z = 90.0 },
            label = "Rolling Block Rifle",
        },
        -- add more here only long weapons
    },
    revolvers = {
        [`WEAPON_REVOLVER_CATTLEMAN`] = {
            offset = { z = 1.77, y = -0.08 },
            rotation = { x = 0.0, y = 1.0, z = -90.0 },
            label = "Cattleman Revolver",
        },
        [`WEAPON_REVOLVER_DOUBLEACTION`] = {
            offset = { z = 1.77, y = -0.08 },
            rotation = { x = 0.0, y = 1.0, z = -90.0 },
            label = "Double Action Revolver",
        },
        [`WEAPON_REVOLVER_LEMAT`] = {
            offset = { z = 1.77, y = -0.08 },
            rotation = { x = 0.0, y = 1.0, z = -90.0 },
            label = "Lemat Revolver",
        },
        [`WEAPON_REVOLVER_SCHOFIELD`] = {
            offset = { z = 1.77, y = -0.08 },
            rotation = { x = 0.0, y = 1.0, z = -90.0 },
            label = "Schofield Revolver",
        },
        -- add more here only revolvers
    },

}

-- LABORATORY ONLY FOR THE POINTS OF INTEREST BLIPS
Config.LaboratoryBlips = {   -- THIS WILL BE ADDED TO THOSE THAT ARE LISTED IN INVESTIGATION.LABORATORY LOCATIONS, ONLY ADD TO THE LOCATIONS YOU HAVE THERE BY DEFAULT IS VALENTINE
    Valentine = {
        Name = "Laboratory", -- name of the laboratory
        InteriorId = 7170,
        Pos = vector3(-277.84, 807.25, 119.43),
    },
    --Strawberry = {
    --    Name = "Laboratory", -- name of the laboratory
    --    InteriorId = 29186,
    --},
    --Rhodes = {
    --    Name = "Laboratory", -- name of the laboratory
    --    InteriorId = 40194,
    --},
    --StDenis = {
    --    Name = "Laboratory", -- name of the laboratory
    --    InteriorId = 58626,
    --},
    Blackwater = {
        Name = "Laboratory", -- name of the laboratory
       InteriorId = 52226,
       Pos = vector4(-764.85, -1243.12, 44.51, 168.63),
    },
    --Annesburg = {
    --    Name = "Laboratory", -- name of the laboratory
    --    InteriorId = 19714,
    --},
    --Armadillo = {
    --    Name = "Laboratory", -- name of the laboratory
    --    InteriorId = 23042,
    --},
    --Tumbleweed = {
    --    Name = "Laboratory", -- name of the laboratory
    --    InteriorId = 60162,
    --},
}



Config.PoliceStations = {

    Valentine  = {
        --OFFICE BLIPS
        Blips = {
            Name = "Police Station",
            Coords = vector3(-276.64, 806.21, 119.38),
            Sprite = "blip_mp_bounty_hunter_introduction",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Enable = true,
        },
        --JOBS FOR THIS TOWN
        Racks = { -- add this to tother stations if you wish to have one
            InteriorId = 7170,
            Pos = vector4(-278.18499755859375, 810.0679321289062, 118.41504669189453, 10.00008583068847),
            Weapons = {} --DONT TOUCH
        },
        -- OFFICE POSITIONS
        SheriffOfice = {
            InteriorId = 7170,
            MenuPos = vector3(-277.1, 803.99, 119.38),
            PromptName = "Sheriff's Office",
        },

        DutyStation = {
            InteriorId = 7170,                          -- run the command getinteriorid to get the interior id you are standing on and add it here, it will print in f8
            MenuPos = vector3(-274.87, 805.54, 119.37), -- open menu see whos on duty as well as clock in and out
            PromptName = "Duty Station",
            Dist = 1.0
        },
        Wardrobe = {
            InteriorId = 7170,
            -- if you use outsider_outfits for police you dont need this , just give them the outfit to save in their personal locker
            UseWardrobe = true,
            Pos = vector3(-279.58, 808.43, 119.38), -- open menu
            PromptName = "Cloack Room",
            Model = "p_armoir02x",                  -- model of the wardrobe
            Heading = 99.37,                        -- heading of the wardrobe
        },
        --SHERIFF MENU ONLY WITH PERMISSION CAN OPEN
        StationMenu = {
            InteriorId = 7170,
            MenuPos = vector3(-278.46, 805.41, 119.38), -- open menu position
            PromptName = "Station Lockers",
            Storages = {
                --- DISABLE LOCKERS JUST REMOVE WHATS INSIDE HERE AND remove them completely
                ArmouryLocker = {
                    Slots = 200,
                    Name = "Armoury Locker",
                    Desc =
                    "Get Weapons or Ammo From this Locker<br><br>Only take what you need for your shift, all ammo and weapons need to be returned when off duty.<br><br>Weapons and ammo are not to be taken out of the station unless you are on duty and have a reason to do so.<br><br>Weapons that are stolen or missing are to be reported",
                    Img = "upgrade_pouch_ammo",
                    UseOnlyFromList = false,                            -- allow only items from the list below to be stored in the armory if false can store any items
                    ItemsLimit = {                                      -- usefull for limit drugs
                        -- ammo
                        { name = "ammorepeaternormal", maxcount = 50 }, -- only add items you want to add a limit, any item not found here will have item limit from items Database column limit
                        { name = "ammorevolvernormal", maxcount = 50 },
                    },

                    AllowWeapons = true,
                    UseOnlyFromListWeapons = true,                           -- allow only weapons from the list below to be stored in the armory
                    WeaponsLimit = {
                        { wepname = "weapon_revolver_lemat", maxcount = 5 }, -- only 2 can be stored, this is to avoid overflow it
                        { wepname = "weapon_melee_knife",    maxcount = 2 },
                    },

                    UsePermissions = true,                     -- if false anyon grade or job can take and move items from this storage
                    AllowedJobsTakeFrom = {
                        { jobname = "ValDeputy",  grade = 1 }, -- grade 0 cant but anything above grade 1 can
                        { jobname = "ValSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "ValDeputy",  grade = 0 }, -- anyone from grade 0 and above can move items to storage
                        { jobname = "ValSheriff", grade = 2 }  -- only sheriff can move items to storage
                    },

                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "ammorepeaternormal", amount = 50 },
                    }
                },

                ProvisionsLocker = {
                    Slots = 200,
                    Name = "Provisions Locker",
                    Desc =
                    "Law Provisions Locker<br><br> This locker is for law provisions only.<br><br>Provisions can be taken from this locker by any lawman on duty.<br><br>Provisions for Prisioners can be taken from this locker by any lawman on duty.<br>If low on provisions please contact the Sheriff or Deputy on duty.",
                    Img = "consumable_meal_camp_stew_daily_14",
                    UseOnlyFromList = false,
                    ItemsLimit = {
                        -- { name = "evidencebag", maxcount = 50 },
                    },
                    UsePermissions = false,
                    AllowWeapons = false,
                    UseOnlyFromListWeapons = false,
                    WeaponsLimit = {
                        -- { wepname = "weapon_revolver_lemat", maxcount = 5 },
                    },
                    AllowedJobsTakeFrom = {
                        { jobname = "ValDeputy",  grade = 1 },
                        { jobname = "ValSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "ValDeputy",  grade = 0 },
                        { jobname = "ValSheriff", grade = 2 }
                    },

                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "apple", amount = 50 },
                        { name = "water", amount = 50 },
                    }

                },
                -- you can create more if you need here

                ----- this one is unique  dont copy paste this only one is needed each char will have its own locker----
                PersonalLockers = {
                    InteriorId = 7170,
                    PromptName = "Personal Locker",
                    Pos = vector3(-276.98, 810.98, 119.38), -- Open menu
                    Dist = 0.5,
                    Model = false,                          --"P_TRUNK02X"  put false if there is no chest model some stations have them
                    Heading = 0.0,
                    Slots = 200,
                    Name = "Personal Locker",

                },
                -------------------------------------------------------------------------------------------------------

                -- TIPLINE where players can drop Notes to help on crimes, if you have outsider_notes use this to drop notes REMOVE IF YOU DONT WANT IT
                TipLine = {
                    Pos = vector3(-272.6, 804.32, 119.34),
                    Model = "p_mailbox01x",
                    PromptName = "Tip Line",
                    Heading = 12.05,
                    Slots = 200,
                    Name = "Tip Line",
                    UseOnlyFromList = true,
                    ItemsLimit = {
                        { name = "paper", maxcount = 100 },
                    },
                    UsePermissions = true,
                    AllowedJobsTakeFrom = { -- only these can take them
                        { jobname = "ValDeputy",  grade = 1 },
                        { jobname = "ValSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {} -- empty allows anyone to move items to this storage

                },

            },

        },
    },

    Strawberry = {
        --OFFICE BLIPS
        Blips = {
            Name = " Police Station",
            Coords = vector3(-1807.13, -348.35, 164.71),
            Sprite = "blip_mp_bounty_hunter_introduction",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Enable = true,
        },
        -- OFFICE POSITIONS
        SheriffOfice = {
            InteriorId = 29186,
            MenuPos = vector3(-1807.13, -348.35, 164.71),
            PromptName = "Sheriffs Office",
        },

        DutyStation = {
            InteriorId = 29186,                         -- run the command getinteriorid to get the interior id you are standing on and add it here, it will print in f8
            MenuPos = vector3(-1811.92, -353.8, 164.7), -- open menu see whos on duty as well as clock in and out
            PromptName = "Duty Station",
            Dist = 1.0,
        },
        Wardrobe = {
            InteriorId = 29186,
            UseWardrobe = true,                      -- will have clothing for players to dress and put on badge
            Pos = vector3(-1810.77, -346.04, 164.7), -- open menu
            PromptName = "Cloack Room",
            Model = "p_armoir02x",                   -- model of the wardrobe
            Heading = 343.48,                        -- heading of the wardrobe
        },
        --SHERIFF MENU ONLY WITH PERMISSION CAN OPEN
        StationMenu = {
            InteriorId = 29186,
            MenuPos = vector3(-1813.87, -354.79, 164.7), -- open menu position
            PromptName = "Station Lockers",
            Storages = {
                ---TO DISABLE LOCKERS JUST REMOVE WHATS INSIDE HERE AND LEAVE Storages = false
                ArmouryLocker = {
                    Slots = 200,
                    Name = "Armoury Locker",
                    Desc = "Get Weapons or Ammo From this Locker<br><br>Only take what you need for your shift, all ammo and weapons need to be returned when off duty.<br><br>Weapons and ammo are not to be taken out of the station unless you are on duty and have a reason to do so.<br><br>Weapons that are stolen or missing are to be reported",
                    Img = "upgrade_pouch_ammo",
                    UseOnlyFromList = true,                             -- allow only items from the list below to be stored in the armory if false can store any items
                    ItemsLimit = {                                      -- usefull for limit drugs
                        -- ammo
                        { name = "ammorepeaternormal", maxcount = 50 }, -- only add items you want to add a limit, any item not found here will have item limit from items Database column limit
                        { name = "ammorevolvernormal", maxcount = 50 },
                    },

                    AllowWeapons = true,
                    UseOnlyFromListWeapons = true,                           -- allow only weapons from the list below to be stored in the armory
                    WeaponsLimit = {
                        { wepname = "weapon_revolver_lemat", maxcount = 5 }, -- only 2 can be stored, this is to avoid overflow it
                        { wepname = "weapon_melee_knife",    maxcount = 2 },
                    },
                    UsePermissions = false,                    -- you dont need permissions only cops can open , but in case you need use them
                    AllowedJobsTakeFrom = {
                        { jobname = "StrDeputy",  grade = 1 }, -- grade 0 cant but anything above grade 1 can
                        { jobname = "StrSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "StrDeputy",  grade = 0 }, -- anyone from grade 0 and above can move items to storage
                        { jobname = "StrSheriff", grade = 2 }  -- only sheriff can move items to storage
                    },

                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "ammorepeaternormal", amount = 50 },
                    }

                },

                ProvisionsLocker = {
                    Slots = 200,
                    Name = "Provisions Locker",
                    Desc =
                    "Law Provisions Locker<br><br> This locker is for law provisions only.<br><br>Provisions can be taken from this locker by any lawman on duty.<br><br>Provisions for Prisioners can be taken from this locker by any lawman on duty.<br>If low on provisions please contact the Sheriff or Deputy on duty.",
                    Img = "consumable_meal_camp_stew_daily_14",
                    UseOnlyFromList = false,
                    ItemsLimit = {
                        -- { name = "evidencebag", maxcount = 50 },
                    },
                    UsePermissions = false,
                    AllowWeapons = false,
                    UseOnlyFromListWeapons = false,
                    WeaponsLimit = {
                        -- { wepname = "weapon_revolver_lemat", maxcount = 5 },
                    },
                    AllowedJobsTakeFrom = {
                        { jobname = "ValDeputy",  grade = 1 },
                        { jobname = "ValSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "ValDeputy",  grade = 0 },
                        { jobname = "ValSheriff", grade = 2 }
                    },
                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "apple", amount = 50 },
                        { name = "water", amount = 50 },
                    }

                },
                -- you can create more if you need here

                ----- this one is unique  dont copy paste this only one is needed each char will have its own locker----
                PersonalLockers = {
                    InteriorId = 29186,
                    PromptName = "Personal Locker",
                    Pos = vector3(-1808.57, -347.1, 164.7), -- Open menu
                    Dist = 1.0,
                    Model = "P_TRUNK02X",                   -- put false if there is no chest model some stations have them
                    Heading = 342.96,
                    Slots = 200,
                    Name = "Personal Locker",
                },
                -------------------------------------------------------------------------------------------------------

                -- TIPLINE where players can drop Notes to help on crimes, if you have outsider_notes use this to drop notes
                TipLine = {
                    Pos = vector3(-1804.95, -348.62, 164.24),
                    Model = "p_mailbox01x",
                    PromptName = "Tip Line",
                    Heading = 69.41,
                    Slots = 200,
                    Name = "Tip Line",
                    UseOnlyFromList = true,
                    ItemsLimit = {
                        { name = "paper", maxcount = 100 },
                    },
                    UsePermissions = true,  -- you need permissions
                    AllowedJobsTakeFrom = { -- only these can take them
                        { jobname = "StrDeputy",  grade = 1 },
                        { jobname = "StrSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {} -- empty allows anyone to move items to this storage

                },

            },

        },
    },
    Blackwater = {
        --OFFICE BLIPS
        Blips = {
            Name = " Police Station",
            Coords = vector3(-772.32, -1235.81, 44.51),
            Sprite = "blip_mp_bounty_hunter_introduction",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Enable = true,
        },
        Racks = { -- add this to tother stations if you wish to have one
            InteriorId = 52226,
            Pos = vector4(-769.45, -1230.15, 48.51, 282.5),
            Weapons = {} --DONT TOUCH
        },
        -- OFFICE POSITIONS
        SheriffOfice = {
            InteriorId = 89858,
            MenuPos = vector3(-769.66, -1242.17, 44.51),
            PromptName = "Sheriffs Office",
        },

        DutyStation = {
            InteriorId = 89858,                         -- run the command getinteriorid to get the interior id you are standing on and add it here, it will print in f8
            MenuPos = vector3(-769.22, -1239.05, 44.51), -- open menu see whos on duty as well as clock in and out
            PromptName = "Duty Station",
            Dist = 1.0
        },
        Wardrobe = {
            InteriorId = 89858,
            -- if you use outsider_outfits for police you dont need this , just give them the outfit to save in their personal locker
            UseWardrobe = false,
            Pos = vector3(-768.6, -1270.41, 44.09), -- open menu
            PromptName = "Cloack Room",
            Model = "",                             -- model of the wardrobe
            Heading = 99.37,                        -- heading of the wardrobe
        },
        --SHERIFF MENU ONLY WITH PERMISSION CAN OPEN
        StationMenu = {
            InteriorId = 89858,
            MenuPos = vector3(-761.5, -1228.51, 48.52), -- open menu position
            PromptName = "Station Lockers",
            Storages = {
                --- DISABLE LOCKERS JUST REMOVE WHATS INSIDE HERE AND LEAVE Storages = false
                ArmouryLocker = {
                    Slots = 200,
                    Name = "Armoury Locker",
                    Desc =
                    "Get Weapons or Ammo From this Locker<br><br>Only take what you need for your shift, all ammo and weapons need to be returned when off duty.<br><br>Weapons and ammo are not to be taken out of the station unless you are on duty and have a reason to do so.<br><br>Weapons that are stolen or missing are to be reported",
                    Img = "upgrade_pouch_ammo",
                    UseOnlyFromList = true,                             -- allow only items from the list below to be stored in the armory if false can store any items
                    ItemsLimit = {                                      -- usefull for limit drugs
                        -- ammo
                        { name = "ammorepeaternormal", maxcount = 50 }, -- only add items you want to add a limit, any item not found here will have item limit from items Database column limit
                        { name = "ammorevolvernormal", maxcount = 50 },
                    },

                    AllowWeapons = true,
                    UseOnlyFromListWeapons = true,                           -- allow only weapons from the list below to be stored in the armory
                    WeaponsLimit = {
                        { wepname = "weapon_revolver_lemat", maxcount = 5 }, -- only 2 can be stored, this is to avoid overflow it
                        { wepname = "weapon_melee_knife",    maxcount = 2 },
                    },
                    UsePermissions = false,
                    AllowedJobsTakeFrom = {
                        { jobname = "CCPolice",  grade = 1 }, -- grade 0 cant but anything above grade 1 can
                        { jobname = "CCPolice", grade = 1 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "CCPolice",  grade = 0 }, -- anyone from grade 0 and above can move items to storage
                        { jobname = "CCPolice", grade = 1 }  -- only sheriff can move items to storage
                    },
                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "ammorepeaternormal", amount = 50 },
                    }
                },

                ProvisionsLocker = {
                    Slots = 200,
                    Name = "Provisions Locker",
                    Desc =
                    "Law Provisions Locker<br><br> This locker is for law provisions only.<br><br>Provisions can be taken from this locker by any lawman on duty.<br><br>Provisions for Prisioners can be taken from this locker by any lawman on duty.<br>If low on provisions please contact the Sheriff or Deputy on duty.",
                    Img = "consumable_meal_camp_stew_daily_14",
                    UseOnlyFromList = false,
                    ItemsLimit = {
                        -- { name = "evidencebag", maxcount = 50 },
                    },
                    AllowWeapons = false,
                    UseOnlyFromListWeapons = false,
                    WeaponsLimit = {
                        -- { wepname = "weapon_revolver_lemat", maxcount = 5 },
                    },
                    UsePermissions = false,
                    AllowedJobsTakeFrom = {
                        { jobname = "BlwDeputy",  grade = 1 },
                        { jobname = "BlwSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "BlwDeputy",  grade = 0 },
                        { jobname = "BlwSheriff", grade = 2 }
                    },
                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "apple", amount = 50 },
                        { name = "water", amount = 50 },
                    }

                },
                -- you can create more if you need here

                ----- this one is unique  dont copy paste this only one is needed each char will have its own locker----
                PersonalLockers = {
                    InteriorId = 89858,
                    PromptName = "Personal Locker",
                    Pos = vector3(-766.41, -1271.59, 44.1), -- Open menu
                    Dist = 1.0,
                    Model = false,                          --"P_TRUNK02X"  put false if there is no chest model some stations have them
                    Heading = 0.0,
                    Slots = 200,
                    Name = "Personal Locker",
                },
                -------------------------------------------------------------------------------------------------------

                -- TIPLINE where players can drop Notes to help on crimes, if you have outsider_notes use this to drop notes
                TipLine = {
                    Pos = vector3(-753.69, -1273.89, 43.58),
                    Model = "p_mailbox01x",
                    PromptName = "Tip Line",
                    Heading = 95.26,
                    Slots = 200,
                    Name = "Tip Line",
                    UseOnlyFromList = true,
                    ItemsLimit = {
                        { name = "paper", maxcount = 100 },
                    },
                    UsePermissions = true,
                    AllowedJobsTakeFrom = { -- only these can take them
                        { jobname = "BlwDeputy",  grade = 1 },
                        { jobname = "BlwSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {} -- empty allows anyone to move items to this storage

                },

            },

        },
    },

    Rhodes     = {
        --OFFICE BLIPS
        Blips = {
            Name = " Police Station",
            Coords = vector3(1361.57, -1303.27, 77.82),
            Sprite = "blip_mp_bounty_hunter_introduction",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Enable = true,
        },

        -- OFFICE POSITIONS
        SheriffOfice = {
            InteriorId = 40194,
            MenuPos = vector3(1361.57, -1303.27, 77.82),
            PromptName = "Sheriffs Office",
        },

        DutyStation = {
            InteriorId = 40194,                          -- run the command getinteriorid to get the interior id you are standing on and add it here, it will print in f8
            MenuPos = vector3(1359.18, -1299.87, 77.81), -- open menu see whos on duty as well as clock in and out
            PromptName = "Duty Station",
            Dist = 1.0
        },
        Wardrobe = {
            InteriorId = 40194,
            -- if you use outsider_outfits for police you dont need this , just give them the outfit to save in their personal locker
            UseWardrobe = false,
            Pos = vector3(1363.15, -1300.77, 77.81), -- open menu
            PromptName = "Cloack Room",
            Model = "",                              -- model of the wardrobe
            Heading = 99.37,                         -- heading of the wardrobe
        },
        --SHERIFF MENU ONLY WITH PERMISSION CAN OPEN
        StationMenu = {
            InteriorId = 40194,
            MenuPos = vector3(1361.24, -1305.94, 77.81), -- open menu position
            PromptName = "Station Lockers",
            Storages = {

                ArmouryLocker = {
                    Slots = 200,
                    Name = "Armoury Locker",
                    Desc = "Get Weapons or Ammo From this Locker<br><br>Only take what you need for your shift, all ammo and weapons need to be returned when off duty.<br><br>Weapons and ammo are not to be taken out of the station unless you are on duty and have a reason to do so.<br><br>Weapons that are stolen or missing are to be reported",
                    Img = "upgrade_pouch_ammo",
                    UseOnlyFromList = true,                             -- allow only items from the list below to be stored in the armory if false can store any items
                    ItemsLimit = {                                      -- usefull for limit drugs
                        -- ammo
                        { name = "ammorepeaternormal", maxcount = 50 }, -- only add items you want to add a limit, any item not found here will have item limit from items Database column limit
                        { name = "ammorevolvernormal", maxcount = 50 },
                    },

                    AllowWeapons = true,
                    UseOnlyFromListWeapons = true,                           -- allow only weapons from the list below to be stored in the armory
                    WeaponsLimit = {
                        { wepname = "weapon_revolver_lemat", maxcount = 5 }, -- only 2 can be stored, this is to avoid overflow it
                        { wepname = "weapon_melee_knife",    maxcount = 2 },
                    },
                    UsePermissions = false,
                    AllowedJobsTakeFrom = {
                        { jobname = "BlwDeputy",  grade = 1 }, -- grade 0 cant but anything above grade 1 can
                        { jobname = "BlwSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "BlwDeputy",  grade = 0 }, -- anyone from grade 0 and above can move items to storage
                        { jobname = "BlwSheriff", grade = 2 }  -- only sheriff can move items to storage
                    },
                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "ammorepeaternormal", amount = 50 },
                    }
                },

                ProvisionsLocker = {
                    Slots = 200,
                    Name = "Provisions Locker",
                    Desc =
                    "Law Provisions Locker<br><br> This locker is for law provisions only.<br><br>Provisions can be taken from this locker by any lawman on duty.<br><br>Provisions for Prisioners can be taken from this locker by any lawman on duty.<br>If low on provisions please contact the Sheriff or Deputy on duty.",
                    Img = "consumable_meal_camp_stew_daily_14",
                    UseOnlyFromList = false,
                    ItemsLimit = {
                        -- { name = "evidencebag", maxcount = 50 },
                    },
                    AllowWeapons = false,
                    UseOnlyFromListWeapons = false,
                    WeaponsLimit = {
                        -- { wepname = "weapon_revolver_lemat", maxcount = 5 },
                    },
                    UsePermissions = false,
                    AllowedJobsTakeFrom = {
                        { jobname = "BlwDeputy",  grade = 1 },
                        { jobname = "BlwSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "BlwDeputy",  grade = 0 },
                        { jobname = "BlwSheriff", grade = 2 }
                    },
                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "apple", amount = 50 },
                        { name = "water", amount = 50 },
                    }

                },
                -- you can create more if you need here

                ----- this one is unique  dont copy paste this only one is needed each char will have its own locker----
                PersonalLockers = {
                    InteriorId = 40194,
                    PromptName = "Personal Locker",
                    Pos = vector3(1360.1, -1297.16, 77.81), -- Open menu
                    Dist = 1.0,
                    Model = "P_TRUNK02X",                   --"P_TRUNK02X"  put false if there is no chest model some stations have them
                    Heading = 336.44,
                    Slots = 200,
                    Name = "Personal Locker",
                },
                -------------------------------------------------------------------------------------------------------

                -- TIPLINE where players can drop Notes to help on crimes, if you have outsider_notes use this to drop notes
                TipLine = {
                    Pos = vector3(1355.77, -1308.86, 76.98),
                    Model = "p_mailbox01x",
                    PromptName = "Tip Line",
                    Heading = 337.99,
                    Slots = 200,
                    Name = "Tip Line",
                    UseOnlyFromList = true,
                    ItemsLimit = {
                        { name = "paper", maxcount = 100 },
                    },
                    UsePermissions = true,
                    AllowedJobsTakeFrom = { -- only these can take them
                        { jobname = "BlwDeputy",  grade = 1 },
                        { jobname = "BlwSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {} -- empty allows anyone to move items to this storage

                },

            },

        },
    },
    SaintDenis = {
        --OFFICE BLIPS
        Blips = {
            Name = " Police Station",
            Coords = vector3(2508.47, -1309.01, 49.0),
            Sprite = "blip_mp_bounty_hunter_introduction",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Enable = true,
        },

        -- OFFICE POSITIONS
        SheriffOfice = {
            InteriorId = 58626,
            MenuPos = vector3(2508.47, -1309.01, 49.0),
            PromptName = "Sheriffs Office",
        },

        DutyStation = {
            InteriorId = 58626,                        -- run the command getinteriorid to get the interior id you are standing on and add it here, it will print in f8
            MenuPos = vector3(2507.3, -1302.43, 49.0), -- open menu see whos on duty as well as clock in and out
            PromptName = "Duty Station",
            Dist = 1.0
        },
        Wardrobe = {
            InteriorId = 58626,
            -- if you use outsider_outfits for police you dont need this , just give them the outfit to save in their personal locker
            UseWardrobe = false,
            Pos = vector3(2509.29, -1313.17, 49.0), -- open menu
            PromptName = "Cloack Room",
            Model = "",                             -- model of the wardrobe
            Heading = 99.37,                        -- heading of the wardrobe
        },
        --SHERIFF MENU ONLY WITH PERMISSION CAN OPEN
        StationMenu = {
            InteriorId = 58626,
            MenuPos = vector3(2509.08, -1304.73, 49.0), -- open menu position
            PromptName = "Station Lockers",
            Storages = {
                --- DISABLE LOCKERS JUST REMOVE WHATS INSIDE HERE AND LEAVE them to  false
                ArmouryLocker = {
                    Slots = 200,
                    Name = "Armoury Locker",
                    Desc = "Get Weapons or Ammo From this Locker<br><br>Only take what you need for your shift, all ammo and weapons need to be returned when off duty.<br><br>Weapons and ammo are not to be taken out of the station unless you are on duty and have a reason to do so.<br><br>Weapons that are stolen or missing are to be reported",
                    Img = "upgrade_pouch_ammo",
                    UseOnlyFromList = true,                             -- allow only items from the list below to be stored in the armory if false can store any items
                    ItemsLimit = {                                      -- usefull for limit drugs
                        -- ammo
                        { name = "ammorepeaternormal", maxcount = 50 }, -- only add items you want to add a limit, any item not found here will have item limit from items Database column limit
                        { name = "ammorevolvernormal", maxcount = 50 },
                    },

                    AllowWeapons = true,
                    UseOnlyFromListWeapons = true,                           -- allow only weapons from the list below to be stored in the armory
                    WeaponsLimit = {
                        { wepname = "weapon_revolver_lemat", maxcount = 5 }, -- only 2 can be stored, this is to avoid overflow it
                        { wepname = "weapon_melee_knife",    maxcount = 2 },
                    },
                    UsePermissions = false,
                    AllowedJobsTakeFrom = {
                        { jobname = "BlwDeputy",  grade = 1 }, -- grade 0 cant but anything above grade 1 can
                        { jobname = "BlwSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "BlwDeputy",  grade = 0 }, -- anyone from grade 0 and above can move items to storage
                        { jobname = "BlwSheriff", grade = 2 }  -- only sheriff can move items to storage
                    },
                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "ammorepeaternormal", amount = 50 },
                    }
                },

                ProvisionsLocker = {
                    Slots = 200,
                    Name = "Provisions Locker",
                    Desc =
                    "Law Provisions Locker<br><br> This locker is for law provisions only.<br><br>Provisions can be taken from this locker by any lawman on duty.<br><br>Provisions for Prisioners can be taken from this locker by any lawman on duty.<br>If low on provisions please contact the Sheriff or Deputy on duty.",
                    Img = "consumable_meal_camp_stew_daily_14",
                    UseOnlyFromList = false,
                    ItemsLimit = {
                        -- { name = "evidencebag", maxcount = 50 },
                    },
                    AllowWeapons = false,
                    UseOnlyFromListWeapons = false,
                    WeaponsLimit = {
                        -- { wepname = "weapon_revolver_lemat", maxcount = 5 },
                    },
                    UsePermissions = false,
                    AllowedJobsTakeFrom = {
                        { jobname = "BlwDeputy",  grade = 1 },
                        { jobname = "BlwSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "BlwDeputy",  grade = 0 },
                        { jobname = "BlwSheriff", grade = 2 }
                    },
                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "apple", amount = 50 },
                        { name = "water", amount = 50 },
                    }

                },
                -- you can create more if you need here

                ----- this one is unique  dont copy paste this only one is needed each char will have its own locker----
                PersonalLockers = {
                    InteriorId = 58626,
                    PromptName = "Personal Locker",
                    Pos = vector3(2496.7, -1301.5, 49.01), -- Open menu
                    Dist = 1.0,
                    Model = "P_TRUNK02X",                  --"P_TRUNK02X"  put false if there is no chest model some stations have them
                    Heading = 10.6,
                    Slots = 200,
                    Name = "Personal Locker",
                },
                -------------------------------------------------------------------------------------------------------

                -- TIPLINE where players can drop Notes to help on crimes, if you have outsider_notes use this to drop notes
                TipLine = {
                    Pos = vector3(2517.34, -1306.52, 49.01),
                    Model = "p_mailbox01x",
                    PromptName = "Tip Line",
                    Heading = 84.23,
                    Slots = 200,
                    Name = "Tip Line",
                    UseOnlyFromList = true,
                    ItemsLimit = {
                        { name = "paper", maxcount = 100 },
                    },
                    UsePermissions = true,
                    AllowedJobsTakeFrom = { -- only these can take them
                        { jobname = "BlwDeputy",  grade = 1 },
                        { jobname = "BlwSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {} -- empty allows anyone to move items to this storage

                },

            },

        },
    },
    Armadillo  = {
        --OFFICE BLIPS
        Blips = {
            Name = " Police Station",
            Coords = vector3(-3624.99, -2601.99, -13.29),
            Sprite = "blip_mp_bounty_hunter_introduction",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Enable = true,
        },

        -- OFFICE POSITIONS
        SheriffOfice = {
            InteriorId = 23042,
            MenuPos = vector3(-3624.99, -2601.99, -13.29),
            PromptName = "Sheriffs Office",
        },

        DutyStation = {
            InteriorId = 23042,                           -- run the command getinteriorid to get the interior id you are standing on and add it here, it will print in f8
            MenuPos = vector3(-3623.7, -2606.08, -13.29), -- open menu see whos on duty as well as clock in and out
            PromptName = "Duty Station",
            Dist = 1.0
        },
        Wardrobe = {
            InteriorId = 23042,
            -- if you use outsider_outfits for police you dont need this , just give them the outfit to save in their personal locker
            UseWardrobe = true,
            Pos = vector3(-3622.8349609375, -2599.8369140625, -14.33799743652343), -- open menu
            PromptName = "Cloack Room",
            Model = "p_armoir02x",                                                 -- model of the wardrobe
            Heading = 23.88995552062988,                                           -- heading of the wardrobe
        },
        --SHERIFF MENU ONLY WITH PERMISSION CAN OPEN
        StationMenu = {
            InteriorId = 23042,
            MenuPos = vector3(2509.08, -1304.73, 49.0), -- open menu position
            PromptName = "Station Lockers",
            Storages = {
                --- DISABLE LOCKERS JUST REMOVE WHATS INSIDE HERE AND LEAVE Storages = false
                ArmouryLocker = {
                    Slots = 200,
                    Name = "Armoury Locker",
                    Desc = "Get Weapons or Ammo From this Locker<br><br>Only take what you need for your shift, all ammo and weapons need to be returned when off duty.<br><br>Weapons and ammo are not to be taken out of the station unless you are on duty and have a reason to do so.<br><br>Weapons that are stolen or missing are to be reported",
                    Img = "upgrade_pouch_ammo",
                    UseOnlyFromList = true,                             -- allow only items from the list below to be stored in the armory if false can store any items
                    ItemsLimit = {                                      -- usefull for limit drugs
                        -- ammo
                        { name = "ammorepeaternormal", maxcount = 50 }, -- only add items you want to add a limit, any item not found here will have item limit from items Database column limit
                        { name = "ammorevolvernormal", maxcount = 50 },
                    },

                    AllowWeapons = true,
                    UseOnlyFromListWeapons = true,                           -- allow only weapons from the list below to be stored in the armory
                    WeaponsLimit = {
                        { wepname = "weapon_revolver_lemat", maxcount = 5 }, -- only 2 can be stored, this is to avoid overflow it
                        { wepname = "weapon_melee_knife",    maxcount = 2 },
                    },
                    UsePermissions = false,
                    AllowedJobsTakeFrom = {
                        { jobname = "ArmDeputy",  grade = 1 }, -- grade 0 cant but anything above grade 1 can
                        { jobname = "ArmSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "ArmDeputy",  grade = 0 }, -- anyone from grade 0 and above can move items to storage
                        { jobname = "ArmSheriff", grade = 2 }  -- only sheriff can move items to storage
                    },
                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "ammorepeaternormal", amount = 50 },
                    }
                },

                ProvisionsLocker = {
                    Slots = 200,
                    Name = "Provisions Locker",
                    Desc = "Law Provisions Locker<br><br> This locker is for law provisions only.<br><br>Provisions can be taken from this locker by any lawman on duty.<br><br>Provisions for Prisioners can be taken from this locker by any lawman on duty.<br>If low on provisions please contact the Sheriff or Deputy on duty.",
                    Img = "consumable_meal_camp_stew_daily_14",
                    UseOnlyFromList = false,
                    ItemsLimit = {
                        -- { name = "evidencebag", maxcount = 50 },
                    },
                    AllowWeapons = false,
                    UseOnlyFromListWeapons = false,
                    WeaponsLimit = {
                        -- { wepname = "weapon_revolver_lemat", maxcount = 5 },
                    },
                    UsePermissions = false,
                    AllowedJobsTakeFrom = {
                        { jobname = "ArmDeputy",  grade = 1 },
                        { jobname = "ArmSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "ArmDeputy",  grade = 0 },
                        { jobname = "ArmSheriff", grade = 2 }
                    },
                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "apple", amount = 50 },
                        { name = "water", amount = 50 },
                    }

                },
                -- you can create more if you need here

                ----- this one is unique  dont copy paste this only one is needed each char will have its own locker----
                PersonalLockers = {
                    InteriorId = 23042,
                    PromptName = "Personal Locker",
                    Pos = vector3(-3622.0458984375, -2607.846435546875, -14.34360122680664), -- Open menu
                    Dist = 2.0,
                    Model = "P_TRUNK02X",                                                    --"P_TRUNK02X"  put false if there is no chest model some stations have them
                    Heading = -154.99998474121094,
                    Slots = 200,
                    Name = "Personal Locker",
                },
                -------------------------------------------------------------------------------------------------------

                -- TIPLINE where players can drop Notes to help on crimes, if you have outsider_notes use this to drop notes
                TipLine = {
                    Pos = vector3(-3626.81, -2608.47, -13.68),
                    Model = "p_mailbox01x",
                    PromptName = "Tip Line",
                    Heading = -66.00,
                    Slots = 200,
                    Name = "Tip Line",
                    UseOnlyFromList = true,
                    ItemsLimit = {
                        { name = "paper", maxcount = 100 },
                    },
                    UsePermissions = true,
                    AllowedJobsTakeFrom = { -- only these can take them
                        { jobname = "ArmDeputy",  grade = 1 },
                        { jobname = "ArmSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {} -- empty allows anyone to move items to this storage

                },

            },

        },
    },
    Tumbleweed = {
        --OFFICE BLIPS
        Blips = {
            Name = " Police Station",
            Coords = vector3(-5531.15, -2930.15, -1.31),
            Sprite = "blip_mp_bounty_hunter_introduction",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Enable = true,
        },

        -- OFFICE POSITIONS
        SheriffOfice = {
            InteriorId = 60162,
            MenuPos = vector3(-5531.15, -2930.15, -1.31),
            PromptName = "Sheriffs Office",
        },

        DutyStation = {
            InteriorId = 60162,                           -- run the command getinteriorid to get the interior id you are standing on and add it here, it will print in f8
            MenuPos = vector3(-5532.57, -2927.87, -1.31), -- open menu see whos on duty as well as clock in and out
            PromptName = "Duty Station",
            Dist = 1.0
        },
        Wardrobe = {
            InteriorId = 60162,
            -- if you use outsider_outfits for police you dont need this , just give them the outfit to save in their personal locker
            UseWardrobe = true,
            Pos = vector3(-5535.44091796875, -2919.716064453125, -2.35643172264099), -- open menu
            PromptName = "Cloack Room",
            Model = "p_armoir02x",                                                   -- model of the wardrobe
            Heading = 24.42997932434082,                                             -- heading of the wardrobe
        },
        --SHERIFF MENU ONLY WITH PERMISSION CAN OPEN
        StationMenu = {
            InteriorId = 60162,
            MenuPos = vector3(-5526.59, -2928.46, -1.31), -- open menu position
            PromptName = "Station Lockers",
            Storages = {
                --- DISABLE LOCKERS JUST REMOVE WHATS INSIDE HERE AND LEAVE Storages = false
                ArmouryLocker = {
                    Slots = 200,
                    Name = "Armoury Locker",
                    Desc = "Get Weapons or Ammo From this Locker<br><br>Only take what you need for your shift, all ammo and weapons need to be returned when off duty.<br><br>Weapons and ammo are not to be taken out of the station unless you are on duty and have a reason to do so.<br><br>Weapons that are stolen or missing are to be reported",
                    Img = "upgrade_pouch_ammo",
                    UseOnlyFromList = true,                             -- allow only items from the list below to be stored in the armory if false can store any items
                    ItemsLimit = {                                      -- usefull for limit drugs
                        -- ammo
                        { name = "ammorepeaternormal", maxcount = 50 }, -- only add items you want to add a limit, any item not found here will have item limit from items Database column limit
                        { name = "ammorevolvernormal", maxcount = 50 },
                    },

                    AllowWeapons = true,
                    UseOnlyFromListWeapons = true,                           -- allow only weapons from the list below to be stored in the armory
                    WeaponsLimit = {
                        { wepname = "weapon_revolver_lemat", maxcount = 5 }, -- only 2 can be stored, this is to avoid overflow it
                        { wepname = "weapon_melee_knife",    maxcount = 2 },
                    },
                    UsePermissions = false,
                    AllowedJobsTakeFrom = {
                        { jobname = "TblDeputy",  grade = 1 }, -- grade 0 cant but anything above grade 1 can
                        { jobname = "TblSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "TblDeputy",  grade = 0 }, -- anyone from grade 0 and above can move items to storage
                        { jobname = "TblSheriff", grade = 2 }  -- only sheriff can move items to storage
                    },
                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "ammorepeaternormal", amount = 50 },
                    }
                },

                ProvisionsLocker = {
                    Slots = 200,
                    Name = "Provisions Locker",
                    Desc = "Law Provisions Locker<br><br> This locker is for law provisions only.<br><br>Provisions can be taken from this locker by any lawman on duty.<br><br>Provisions for Prisioners can be taken from this locker by any lawman on duty.<br>If low on provisions please contact the Sheriff or Deputy on duty.",
                    Img = "consumable_meal_camp_stew_daily_14",
                    UseOnlyFromList = false,
                    ItemsLimit = {
                        -- { name = "evidencebag", maxcount = 50 },
                    },
                    AllowWeapons = false,
                    UseOnlyFromListWeapons = false,
                    WeaponsLimit = {
                        -- { wepname = "weapon_revolver_lemat", maxcount = 5 },
                    },
                    UsePermissions = false,
                    AllowedJobsTakeFrom = {
                        { jobname = "TblDeputy",  grade = 1 },
                        { jobname = "TblSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "TblDeputy",  grade = 0 },
                        { jobname = "TblSheriff", grade = 2 }
                    },
                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "ammorepeaternormal", amount = 50 },
                    }

                },
                -- you can create more if you need here

                ----- this one is unique  dont copy paste this only one is needed each char will have its own locker----
                PersonalLockers = {
                    InteriorId = 60162,
                    PromptName = "Personal Locker",
                    Pos = vector3(-5531.32, -2925.76, -1.31), -- Open menu
                    Dist = 1.0,
                    Model = "P_TRUNK02X",                     --"P_TRUNK02X"  put false if there is no chest model some stations have them
                    Heading = 25.46,
                    Slots = 200,
                    Name = "Personal Locker",
                },
                -------------------------------------------------------------------------------------------------------

                -- TIPLINE where players can drop Notes to help on crimes, if you have outsider_notes use this to drop notes
                TipLine = {
                    Pos = vector3(-5525.72265625, -2930.158447265625, -2.35196590423584),
                    Model = "p_mailbox01x",
                    PromptName = "Tip Line",
                    Heading = 26.92997550964355,
                    Slots = 200,
                    Name = "Tip Line",
                    UseOnlyFromList = true,
                    ItemsLimit = {
                        { name = "paper", maxcount = 100 },
                    },
                    UsePermissions = true,
                    AllowedJobsTakeFrom = { -- only these can take them
                        { jobname = "TblDeputy",  grade = 1 },
                        { jobname = "TblSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {} -- empty allows anyone to move items to this storage

                },

            },

        },
    },
    Annesburg  = {
        --OFFICE BLIPS
        Blips = {
            Name = " Police Station",
            Coords = vector3(2909.33, 1313.2, 44.99),
            Sprite = "blip_mp_bounty_hunter_introduction",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Enable = true,
        },
        -- OFFICE POSITIONS
        SheriffOfice = {
            InteriorId = 19714,
            MenuPos = vector3(2595.62, -1313.86, 52.77),
            PromptName = "Sheriffs Office",
        },

        DutyStation = {
            InteriorId = 19714,                         -- run the command getinteriorid to get the interior id you are standing on and add it here, it will print in f8
            MenuPos = vector3(2909.47, 1309.32, 44.99), -- open menu see whos on duty as well as clock in and out
            PromptName = "Duty Station",
            Dist = 1.0
        },
        Wardrobe = {
            InteriorId = 19714,
            -- if you use outsider_outfits for police you dont need this , just give them the outfit to save in their personal locker
            UseWardrobe = false,
            Pos = vector3(2911.3, 1313.27, 44.99), -- open menu
            PromptName = "Cloack Room",
            Model = "p_armoir02x",                 -- model of the wardrobe
            Heading = 24.42997932434082,           -- heading of the wardrobe
        },
        --SHERIFF MENU ONLY WITH PERMISSION CAN OPEN
        StationMenu = {
            InteriorId = 19714,
            MenuPos = vector3(2904.12, 1309.82, 44.99), -- open menu position
            PromptName = "Station Lockers",
            Storages = {
                --- DISABLE LOCKERS JUST REMOVE WHATS INSIDE HERE AND LEAVE Storages = false
                ArmouryLocker = {
                    Slots = 200,
                    Name = "Armoury Locker",
                    Desc = "Get Weapons or Ammo From this Locker<br><br>Only take what you need for your shift, all ammo and weapons need to be returned when off duty.<br><br>Weapons and ammo are not to be taken out of the station unless you are on duty and have a reason to do so.<br><br>Weapons that are stolen or missing are to be reported",
                    Img = "upgrade_pouch_ammo",
                    UseOnlyFromList = true,                             -- allow only items from the list below to be stored in the armory if false can store any items
                    ItemsLimit = {                                      -- usefull for limit drugs
                        -- ammo
                        { name = "ammorepeaternormal", maxcount = 50 }, -- only add items you want to add a limit, any item not found here will have item limit from items Database column limit
                        { name = "ammorevolvernormal", maxcount = 50 },
                    },

                    AllowWeapons = true,
                    UseOnlyFromListWeapons = true,                           -- allow only weapons from the list below to be stored in the armory
                    WeaponsLimit = {
                        { wepname = "weapon_revolver_lemat", maxcount = 5 }, -- only 2 can be stored, this is to avoid overflow it
                        { wepname = "weapon_melee_knife",    maxcount = 2 },
                    },
                    UsePermissions = false,
                    AllowedJobsTakeFrom = {
                        { jobname = "AnnDeputy",  grade = 1 }, -- grade 0 cant but anything above grade 1 can
                        { jobname = "AnnSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "AnnDeputy",  grade = 0 }, -- anyone from grade 0 and above can move items to storage
                        { jobname = "AnnSheriff", grade = 2 }  -- only sheriff can move items to storage
                    }
                },

                ProvisionsLocker = {
                    Slots = 200,
                    Name = "Provisions Locker",
                    Desc = "Law Provisions Locker<br><br> This locker is for law provisions only.<br><br>Provisions can be taken from this locker by any lawman on duty.<br><br>Provisions for Prisioners can be taken from this locker by any lawman on duty.<br>If low on provisions please contact the Sheriff or Deputy on duty.",
                    Img = "consumable_meal_camp_stew_daily_14",
                    UseOnlyFromList = false,
                    ItemsLimit = {
                        -- { name = "evidencebag", maxcount = 50 },
                    },
                    AllowWeapons = false,
                    UseOnlyFromListWeapons = false,
                    WeaponsLimit = {
                        -- { wepname = "weapon_revolver_lemat", maxcount = 5 },
                    },
                    UsePermissions = false,
                    AllowedJobsTakeFrom = {
                        { jobname = "AnnDeputy",  grade = 1 },
                        { jobname = "AnnSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "AnnDeputy",  grade = 0 },
                        { jobname = "AnnSheriff", grade = 2 }
                    },
                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "ammorepeaternormal", amount = 50 },
                    }

                },
                -- you can create more if you need here

                ----- this one is unique  dont copy paste this only one is needed each char will have its own locker----
                PersonalLockers = {
                    InteriorId = 19714,
                    PromptName = "Personal Locker",
                    Pos = vector3(2906.65, 1315.26, 44.99), -- Open menu
                    Dist = 1.0,
                    Model = false,                          --"P_TRUNK02X"  put false if there is no chest model some stations have them
                    Heading = 25.46,
                    Slots = 200,
                    Name = "Personal Locker",
                },
                -------------------------------------------------------------------------------------------------------

                -- TIPLINE where players can drop Notes to help on crimes, if you have outsider_notes use this to drop notes
                TipLine = {
                    Pos = vector3(2914.92, 1312.06, 44.55),
                    Model = "p_mailbox01x",
                    PromptName = "Tip Line",
                    Heading = 68.9,
                    Slots = 200,
                    Name = "Tip Line",
                    UseOnlyFromList = true,
                    ItemsLimit = {
                        { name = "paper", maxcount = 100 },
                    },
                    UsePermissions = true,
                    AllowedJobsTakeFrom = { -- only these can take them
                        { jobname = "AnnDeputy",  grade = 1 },
                        { jobname = "AnnSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {} -- empty allows anyone to move items to this storage

                },

            },

        },
    },
    Sisika     = { --OFFICE BLIPS
        Blips = {
            Name = "Sisika Prison",
            Coords = vector3(3337.91, -667.15, 51.82),
            Sprite = "blip_mp_bounty_hunter_introduction",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Enable = true,
        },
        -- OFFICE POSITIONS
        SheriffOfice = {
            InteriorId = 0,
            MenuPos = vector3(3337.91, -667.15, 51.82),
            PromptName = "Chief Office",
        },

        DutyStation = {
            InteriorId = 0,                             -- run the command getinteriorid to get the interior id you are standing on and add it here, it will print in f8
            MenuPos = vector3(3331.46, -668.72, 45.84), -- open menu see whos on duty as well as clock in and out
            PromptName = "Duty Station",
            Dist = 1.0
        },

        Wardrobe = {
            InteriorId = 0,
            -- if you use outsider_outfits for police you dont need this , just give them the outfit to save in their personal locker
            UseWardrobe = false,
            Pos = vector3(-5535.44091796875, -2919.716064453125, -2.35643172264099), -- open menu
            PromptName = "Cloack Room",
            Model = "p_armoir02x",                                                   -- model of the wardrobe
            Heading = 24.42997932434082,                                             -- heading of the wardrobe
        },
        --SHERIFF MENU ONLY WITH PERMISSION CAN OPEN
        StationMenu = {
            InteriorId = 0,
            MenuPos = vector3(3333.08, -660.78, 45.84), -- open menu position
            PromptName = "Prison Lockers",
            Storages = {
                --- DISABLE LOCKERS JUST REMOVE WHATS INSIDE HERE AND LEAVE Storages = false
                ArmouryLocker = {
                    Slots = 200,
                    Name = "Armoury Locker",
                    Desc = "Get Weapons or Ammo From this Locker<br><br>Only take what you need for your shift, all ammo and weapons need to be returned when off duty.<br><br>Weapons and ammo are not to be taken out of the station unless you are on duty and have a reason to do so.<br><br>Weapons that are stolen or missing are to be reported",
                    Img = "upgrade_pouch_ammo",
                    UseOnlyFromList = true,                             -- allow only items from the list below to be stored in the armory if false can store any items
                    ItemsLimit = {                                      -- usefull for limit drugs
                        -- ammo
                        { name = "ammorepeaternormal", maxcount = 50 }, -- only add items you want to add a limit, any item not found here will have item limit from items Database column limit
                        { name = "ammorevolvernormal", maxcount = 50 },
                    },

                    AllowWeapons = true,
                    UseOnlyFromListWeapons = true,                           -- allow only weapons from the list below to be stored in the armory
                    WeaponsLimit = {
                        { wepname = "weapon_revolver_lemat", maxcount = 5 }, -- only 2 can be stored, this is to avoid overflow it
                        { wepname = "weapon_melee_knife",    maxcount = 2 },
                    },
                    UsePermissions = false,
                    AllowedJobsTakeFrom = {
                        { jobname = "SskDeputy",  grade = 1 }, -- grade 0 cant but anything above grade 1 can
                        { jobname = "TblSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "SskDeputy",  grade = 0 }, -- anyone from grade 0 and above can move items to storage
                        { jobname = "SskSheriff", grade = 2 }  -- only sheriff can move items to storage
                    },
                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "ammorepeaternormal", amount = 50 },
                    }

                },

                ProvisionsLocker = {
                    Slots = 200,
                    Name = "Provisions Locker",
                    Desc = "Law Provisions Locker<br><br> This locker is for law provisions only.<br><br>Provisions can be taken from this locker by any lawman on duty.<br><br>Provisions for Prisioners can be taken from this locker by any lawman on duty.<br>If low on provisions please contact the Sheriff or Deputy on duty.",
                    Img = "consumable_meal_camp_stew_daily_14",
                    UseOnlyFromList = false,
                    ItemsLimit = {
                        -- { name = "evidencebag", maxcount = 50 },
                    },
                    AllowWeapons = false,
                    UseOnlyFromListWeapons = false,
                    WeaponsLimit = {
                        -- { wepname = "weapon_revolver_lemat", maxcount = 5 },
                    },
                    UsePermissions = false,
                    AllowedJobsTakeFrom = {
                        { jobname = "SsskDeputy",  grade = 1 },
                        { jobname = "SsskSheriff", grade = 2 }
                    },
                    AllowedJobsMoveTo = {
                        { jobname = "SskDeputy",  grade = 0 },
                        { jobname = "SskSheriff", grade = 2 }
                    },
                    -- to stock this armory with items at every restart
                    AddDefaultItems = false,
                    DefaultItems = {
                        -- items or weapons
                        { name = "apple", amount = 50 },
                        { name = "water", amount = 50 },
                    }

                },
                -- you can create more if you need here

                ----- this one is unique  dont copy paste this only one is needed each char will have its own locker----
                PersonalLockers = {
                    InteriorId = 0,
                    PromptName = "Personal Locker",
                    Pos = vector3(3344.62, -658.06, 51.82), -- Open menu
                    Dist = 1.5,
                    Model = false,                          --"P_TRUNK02X"  put false if there is no chest model some stations have them
                    Heading = 25.46,
                    Slots = 200,
                    Name = "Personal Locker",
                },
                -------------------------------------------------------------------------------------------------------
            },
        },
    },
}
