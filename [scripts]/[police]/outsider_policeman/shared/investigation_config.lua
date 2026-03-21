-- detective
Witness = {}
-- this items will be added to the closest police station tip line container where the robbery was witnessed
Witness.CrimeItemName = "paper"  -- the item that will be added into the tip line container by the witness, make sure is the same as the allowed item in Config.PoliceStations for TipLine

Witness.DetectLawStealing = true -- if true will detect law stealing horses and wagons

Witness.UseWitnessSystem = true  -- if false witness system will be disabled

Witness.Timeout = 3              -- time in minutes to stop checking for player stealing horses and wagons when a crime is active, after this time police wont get any more area hints in the map

Witness.TimeToUpdate = 60000     -- time in milliseconds to update the position of the stolen horse or wagon this allows for thief to move around and not be detected that easily

Witness.TimeToDismount = 5000    -- time in milliseconds, for player to dismount so they dont get reported it after they mounted

Witness.UseBlips = true          -- if true will not use blips to show horse or wagon location for that specific time

-- if you use outsider notes you can add here the description of the note for crime commited
-- easiest way to get a perfect format is to write the note in game then go to database and copy whats in there and put it here
Witness.OutsiderNotesDescription = function(data)
    -- a random of npcs lines for display in the note you can add or remove lines as you wish
    local list_random_npc_Lines_no_masked = {
        "I ain't much good with writin' but I seen a crime happen near "
        .. data.locationLabel .. "\n Reckon it was "
        .. data.fullname .. " goes by "
        .. data.thiefNickName .. "\n 'bout "
        .. data.thiefAge .. " years old, " .. data.thiefGender .. "\n Please don't tell nobody I wrote this, don't want no trouble comin' my way.",

        "Sheriff, this is urgent! I witnessed a most heinous act near "
        .. data.locationLabel .. "\n The perpetrator appeared to be "
        .. data.fullname .. ", also known as "
        .. data.thiefNickName .. "\n Approximately "
        .. data.thiefAge .. " years of age, " .. data.thiefGender .. "\n I implore you to investigate this matter swiftly. Anonymous Citizen.",

        "To whoever reads this - saw somethin' bad happen at "
        .. data.locationLabel .. "\n It was that " .. data.thiefGender .. " they call "
        .. data.thiefNickName .. " (real name " .. data.fullname .. ")\n Looked to be around "
        .. data.thiefAge .. " or so\n You didn't hear this from me, understand?",

        "Dear Law Enforcement, I feel it my civic duty to report a crime witnessed near "
        .. data.locationLabel .. "\n The individual responsible was "
        .. data.fullname .. " (known locally as " .. data.thiefNickName .. ")\n Age approximately "
        .. data.thiefAge .. ", " .. data.thiefGender .. "\n I trust this information will be handled with discretion. A Concerned Citizen."
    }


    local list_random_npc_Lines_masked = {
        "I ain't much good with writin' but I seen a crime happen near "
        .. data.locationLabel .. "\n Couldn't make out who it was - had their face covered up real good\n Looked to be about "
        .. data.thiefAge .. " years old, " .. data.thiefGender .. "\n Please don't tell nobody I wrote this, don't want no trouble comin' my way.",

        "Sheriff, this is urgent! I witnessed a crime near "
        .. data.locationLabel .. "\n The perpetrator wore a mask - couldn't see their face at all\n Approximately "
        .. data.thiefAge .. " years of age, appeared to be " .. data.thiefGender .. "\n I implore you to investigate this matter swiftly. Anonymous Citizen.",

        "To whoever reads this - saw somethin' bad happen at "
        .. data.locationLabel .. "\n Couldn't tell who it was, they had somethin' coverin' their face\n That " .. data.thiefGender .. " looked to be around "
        .. data.thiefAge .. " or so\n You didn't hear this from me, understand?",

        "Dear Law Enforcement, I feel it my civic duty to report a masked individual committing a crime near "
        .. data.locationLabel .. "\n The suspect's face was completely obscured\n Age approximately "
        .. data.thiefAge .. ", " .. data.thiefGender .. "\n I trust this information will be handled with discretion. A Concerned Citizen."
    }

    local list_random_npc_Lines = data.wasFaceMaskOn and list_random_npc_Lines_masked or list_random_npc_Lines_no_masked


    local crime_type_label = data.crimeType == "crime_theft_horse" and "stolen horse" or "stolen wagon"
    local meta             = {
        description = "Crime Witnessed Near " .. data.locationLabel .. "<br> Crime Committed: " .. crime_type_label,
        message     = list_random_npc_Lines[math.random(1, #list_random_npc_Lines)]
    }
    return meta
end

-- only if not masked this will be added to the tip line container by the witness
-- if player was masked then we only add the blips no item is needed in the tip line container
Witness.CrimeDescription = function(data)
    local crime_type_label = data.crimeType == "crime_theft_horse" and "stolen horse" or "stolen wagon"
    local description = data.fullname .. " Known as " .. data.thiefNickName .. " <br> Described as a " .. data.thiefGender .. " arround " .. data.thiefAge .. " years old was witnessed committing a crime close to " .. data.locationLabel .. " <br> Crime Committed: " .. crime_type_label

    return description
end

Witness.TimeToReport = 5000              -- time it takes for player to kill witness in order for it not to be reported

Witness.ReportCops = true                -- if true cops  killing players or npcs witness wont be created

Witness.ShowKillerName = true            -- if true will show suspect character name in the menu of crimes commited if they were not wearing a bandana or mask

Witness.CrimesMenuCommand = "crimesmenu" -- command to open witness crimes menu -- permission to open is from Investigation.Laboratory.Jobs

Witness.TimeToAlert = 60000              -- time it will take if witness not killed to alert police default 1 minute after the crime


Witness.ResetCrimesMenu = {
    Jobs = {
        ValSheriff = 2, -- these jobs will be able to reset the crimes menu and grade  will have access to reset the crimes menu
        StrSheriff = 2,
        BlwSheriff = 2,
        RhoSheriff = 2,
        ArmSheriff = 2,
        StdSheriff = 2,
        TblSheriff = 2,
        AnnSheriff = 2

    }
}

-- these jobs will be alerted when crimes are reported
Witness.AlertJobs = {
    ValSheriff = 0, -- leave job and grade if this job should get notification of crimes reported by witnesses it will alert anyone above this grade with this job
    ValDeputy = 0,
    StrDeputy = 0,
    BlwDeputy = 0,
    RhoDeputy = 0,
    ArmDeputy = 0,
    StdDeputy = 0,
    TblDeputy = 0,
    AnnDeputy = 0,
    StrSheriff = 0,
    BlwSheriff = 0,
    RhoSheriff = 0,
    ArmSheriff = 0,
    StdSheriff = 0,
    TblSheriff = 0,
    AnnSheriff = 0,
    -- add more here
}

Witness.AllowHorseSteal = true -- if true players stealing npc horses will be reported if any npc witness it

Witness.AllowWagonSteal = true -- if true players stealing npc wagons will be reported if any npc witness it

Investigation = {}


-- for gunpowder checks
Investigation.UseGunPowderSystem = true -- if true will use gunpowder checks

-- players can use gloves to avoid having residue on them
-- weapons barrel will cool down if they go into water holding it and crouching it with it other wise theres a time to be cooled down
Investigation.GunPowder = {
    CoolingTime = 30,        -- time in seconds after last shot to cool down the barrel of the weapon, so after lastshot was 10 seconds ago start cooling down
    ResidueTime = 30,        -- time in seconds , after this time residue from hands will be removed so it doesnt stay forever giving crims a chance to escape too
    ResidueTimeInWater = 10, -- time in seconds , if player gets in water and crouches for this amount of time residue will be removed from hands
    ItemsToCleanHands = {    -- items players can clean hands of residue
        "cloth",
    },
    Command = "checkresidue", -- command to check residue on a player's hands or gun, anyone can use this
    Suggestion = {
        description = "Check residue on a player's hands or gun",
        help = {
            { name = "playerId", help = "Player ID" },
            { name = "type",     help = "Type of residue to check (gun or hands)" }

        }
    },
    commandType = {
        gun = "gun",
        hands = "hands"
    }
}



Investigation.ItemDocumentName = "bulletinfo" -- if outsider notes use item name from one of the books, if not then use any item name

Investigation.OutsiderNotes = function(info)
    local meta       = {}
    -- add the info to the message
    meta.description = "this note contains information about a sample of a examined bullet \n victim name: " .. info.victimName .. " \n Evidence No: " .. info.charid -- item description
    meta.message     = "\n\n\n\n                     Bullet Sample Note\n\n    Weapon Used:  " .. info.weaponLabel .. " Ammo Used: " .. info.ammoLabel ..
        "\n    Serial Number: " .. info.serialNumber .. "\n    Evidence No : "
        .. info.charid .. " Victim Name: " .. info.victimName .. "\n\n\n This Information is to be added to the report system to build a case \n  Evidence No can be used to identify a crime reported by a witness if it was a player" -- message for the note
    return meta
end

Investigation.ExamineDeadBody = {
    Jobs = {
        Enable = true,      -- if true any job you add below will be able to examine dead body, only who is allowed can see the inspection  prompt
        Names = {
            ValSheriff = 0, -- anyone with this job and this grade or above will have access to examine dead body you dont need to put 0 1 2 3 anything above 0 will have perms or above 2 etc
            StrSheriff = 0,
            BlwSheriff = 0,
            RhoSheriff = 0,
            ArmSheriff = 0,
            StdSheriff = 0,
            TblSheriff = 0,
            AnnSheriff = 0
        }
    },
    ItemBulletSample = "bulletsample", -- item that will be given to player after examining the dead body will contain information about the crime

    ItemsNeeded = {                    -- need to have these items in order to extract bullet from bodies, can be medical items like bisturi, gloves, etc
        gloves = 1,                    -- can be multiple items
        bisturi = 1,
        evidencebag = 1,
        -- can be multiple items
    },
}

Investigation.Laboratory = {

    ItemsNeeded = {
        monocle = 1, -- can be multiple items, to examine bullet samples Investigation.EyeWearComp those are the items being registered if you want multiple colors use them all here
    },
    -- you must add the jobs and their rank in this list to be able to be marked as detective
    --access to to the laboratory to inspect bullet samples,and to the crimes menu
    Jobs = {
        ValSheriff = 0,
        StrSheriff = 0,
        BlwSheriff = 0,
        RhoSheriff = 0,
        ArmSheriff = 0,
        StdSheriff = 0,
        TblSheriff = 0,
        AnnSheriff = 0
    },

    Locations = {
        vector3(-277.84, 807.25, 119.43), -- locations where you can examine the bullet samples
        -- can add more here
    },

    Item = "mailpaper" -- item given containing inforamtion extracted, if you use outsider notes add here the paper item so you receive it as a note
}



-- items monocle are needed to examine bullet samples
-- once you use them you can examine bullet samples
Investigation.EyeWearComp = {

    {
        item = "monocle",  -- item that will be given to player after examining the bullet samples will contain information about the crime
        hash = 1402367803, -- gold color
    },
    --[[    { -- other colors
    item = "water", -- items must be unique names
        hash = 492831439,
    },
    {
          item = "water",
        hash = 795256540,
    },
    {
          item = "water",
        hash = 2034383494,
    },
    {
          item = "water",
        hash = -1963467279,
    },
    {
          item = "water",
        hash = 1950593173,
    },
    {
          item = "water",
        hash = 1975999455,
    },
    {
          item = "water",
        hash = -2082342892,
    },
    {
          item = "water",
        hash = -1708055370,
    },
    {
          item = "water",
        hash = -1454456079,
    },
    {
          item = "water",
        hash = -1099109043,
    }, ]]

}


AmmoTypes = {
    {
        Name     = "Ammo Pistol",
        HashName = "AMMO_PISTOL", -- DONT TOUCH
    },
    {

        Name     = "Ammo Pistol Express",
        HashName = "AMMO_PISTOL_EXPRESS",
    },
    {
        Name     = "Ammo Pistol Express Explosive",
        HashName = "AMMO_PISTOL_EXPRESS_EXPLOSIVE",
    },
    {
        Name     = "Ammo Pistol High Velocity",
        HashName = "AMMO_PISTOL_HIGH_VELOCITY",
    },
    {
        Name     = "Ammo Pistol Split Point",
        HashName = "AMMO_PISTOL_SPLIT_POINT",
    },
    {
        Name     = "Ammo Repeater",
        HashName = "AMMO_REPEATER",
    },
    {
        Name     = "Ammo Repeater Express",
        HashName = "AMMO_REPEATER_EXPRESS",
    },
    {
        Name     = "Ammo Repeater Express Explosive",
        HashName = "AMMO_REPEATER_EXPRESS_EXPLOSIVE",
    },
    {
        Name     = "Ammo Repeater High Velocity",
        HashName = "AMMO_REPEATER_HIGH_VELOCITY",
    },
    {
        Name     = "Ammo Repeater Split Point",
        HashName = "AMMO_REPEATER_SPLIT_POINT",
    },
    {
        Name     = "Ammo Revolver",
        HashName = "AMMO_REVOLVER",
    },
    {
        Name     = "Ammo Revolver Express",
        HashName = "AMMO_REVOLVER_EXPRESS",
    },
    {
        Name     = "Ammo Revolver Express Explosive",
        HashName = "AMMO_REVOLVER_EXPRESS_EXPLOSIVE",
    },
    {
        Name     = "Ammo Revolver High Velocity",
        HashName = "AMMO_REVOLVER_HIGH_VELOCITY",
    },
    {
        Name     = "Ammo Revolver Split Point",
        HashName = "AMMO_REVOLVER_SPLIT_POINT",
    },
    {
        Name     = "Ammo Shotgun",
        HashName = "AMMO_SHOTGUN",
    },
    {
        Name     = "Ammo Shotgun Buckshot Incendiary",
        HashName = "AMMO_SHOTGUN_BUCKSHOT_INCENDIARY",
    },
    {
        Name     = "Ammo Shotgun Slug Explosive",
        HashName = "AMMO_SHOTGUN_SLUG_EXPLOSIVE",
    },
    {
        Name     = "Ammo Shotgun Slug",
        HashName = "AMMO_SHOTGUN_SLUG",
    },
    {
        Name     = "Ammo Rifle",
        HashName = "AMMO_RIFLE",
    },
    {
        Name     = "Ammo Rifle Elephant",
        HashName = "AMMO_RIFLE_ELEPHANT",
    },
    {
        Name     = "Ammo Rifle Express",
        HashName = "AMMO_RIFLE_EXPRESS",
    },
    {
        Name     = "Ammo Rifle Express Explosive",
        HashName = "AMMO_RIFLE_EXPRESS_EXPLOSIVE",
    },
    {
        Name     = "Ammo Rifle High Velocity",
        HashName = "AMMO_RIFLE_HIGH_VELOCITY",
    },
    {
        Name     = "Ammo Rifle Split Point",
        HashName = "AMMO_RIFLE_SPLIT_POINT",
    },
    {
        Name     = "Ammo 22",
        HashName = "AMMO_22",
    },
    {
        Name     = "Ammo 22 Tranquilizer",
        HashName = "AMMO_22_TRANQUILIZER",
    },
    {
        Name     = "Ammo Arrow",
        HashName = "AMMO_ARROW",
    },
    {
        Name     = "Ammo Arrow Dynamite",
        HashName = "AMMO_ARROW_DYNAMITE",
    },
    {
        Name     = "Ammo Arrow Fire",
        HashName = "AMMO_ARROW_FIRE",
    },
    {
        Name     = "Ammo Arrow Improved",
        HashName = "AMMO_ARROW_IMPROVED",
    },
    {
        Name     = "Ammo Arrow Small Game",
        HashName = "AMMO_ARROW_SMALL_GAME",
    },
    {
        Name     = "Ammo Arrow Poison",
        HashName = "AMMO_ARROW_POISON",
    },
    {
        Name     = "Ammo Throwing Knives",
        HashName = "AMMO_THROWING_KNIVES",
    },
    {
        Name     = "Ammo Tomahawk",
        HashName = "AMMO_TOMAHAWK",
    },
    {
        Name     = "Ammo Poison Bottle",
        HashName = "AMMO_POISONBOTTLE",
    },
    {
        Name     = "Ammo Bolas",
        HashName = "AMMO_BOLAS",
    },
    {
        Name     = "Ammo Bolas Hawkmoth",
        HashName = "AMMO_BOLAS_HAWKMOTH",
    },
    {
        Name     = "Ammo Bolas Intertwined",
        HashName = "AMMO_BOLAS_INTERTWINED",
    },
    {
        Name     = "Ammo Bolas Ironspiked",
        HashName = "AMMO_BOLAS_IRONSPIKED",
    },
    {
        Name     = "Ammo Dynamite",
        HashName = "AMMO_DYNAMITE",
    },
    {
        Name     = "Ammo Dynamite Volatile",
        HashName = "AMMO_DYNAMITE_VOLATILE",
    },
    {
        Name     = "Ammo Molotov",
        HashName = "AMMO_MOLOTOV",
    },
    {
        Name     = "Ammo Molotov Volatile",
        HashName = "AMMO_MOLOTOV_VOLATILE",
    },
    {
        Name     = "Ammo Hatchet Cleaver",
        HashName = "AMMO_HATCHET_CLEAVER",
    },
    {
        Name     = "Ammo Hatchet Hunter",
        HashName = "AMMO_HATCHET_HUNTER",
    },
    {
        Name     = "Ammo Hatchet Double Bit",
        HashName = "AMMO_HATCHET_DOUBLE_BIT",
    },
    {
        Name     = "Ammo Hatchet Hewing",
        HashName = "AMMO_HATCHET_HEWING",
    },
    {
        Name     = "Ammo Hatchet Viking",
        HashName = "AMMO_HATCHET_VIKING",
    },
    {
        Name     = "Ammo Hatchet",
        HashName = "AMMO_HATCHET",
    }


}
WeaponsType = {
    {
        Name     = " Lasso",
        HashName = "WEAPON_LASSO",
    },
    {
        Name     = " Reinforced Lasso",
        HashName = "WEAPON_LASSO_REINFORCED",
    },
    {
        Name = "Knife",
        HashName = "WEAPON_MELEE_KNIFE",
    },
    {
        Name = "Knife Rustic",
        HashName = "WEAPON_MELEE_KNIFE_RUSTIC",
    },
    {
        Name = "Knife Horror",
        HashName = "WEAPON_MELEE_KNIFE_HORROR",
    },
    {
        Name = "Knife Civil War",
        HashName = "WEAPON_MELEE_KNIFE_CIVIL_WAR",
    },
    {
        Name = "Knife Jawbone",
        HashName = "WEAPON_MELEE_KNIFE_JAWBONE",
    },
    {
        Name = "Knife Miner",
        HashName = "WEAPON_MELEE_KNIFE_MINER",
    },
    {
        Name = "Knife Vampire",
        HashName = "WEAPON_MELEE_KNIFE_VAMPIRE",
    },
    {
        Name = "Cleaver",
        HashName = "WEAPON_MELEE_CLEAVER",
    },
    {
        Name = "Hachet",
        HashName = "WEAPON_MELEE_HATCHET",
    },
    {
        Name = "Hachet Double Bit",
        HashName = "WEAPON_MELEE_HATCHET_DOUBLE_BIT",
    },
    {
        Name = "Hachet Hewing",
        HashName = "WEAPON_MELEE_HATCHET_HEWING",
    },
    {
        Name = "Hachet Hunter",
        HashName = "WEAPON_MELEE_HATCHET_HUNTER",
    },
    {
        Name = "Hachet Viking",
        HashName = "WEAPON_MELEE_HATCHET_VIKING",
    },
    {
        Name = "Tomahawk",
        HashName = "WEAPON_THROWN_TOMAHAWK",
    },
    {
        Name = "Tomahawk Ancient",
        HashName = "WEAPON_THROWN_TOMAHAWK_ANCIENT",
    },
    {
        Name = "Throwing Knifes",
        HashName = "WEAPON_THROWN_THROWING_KNIVES",
    },
    {
        Name = "Machete",
        HashName = "WEAPON_MELEE_MACHETE",
    },
    {
        Name = "Bow",
        HashName = "WEAPON_BOW",
    },
    {
        Name = "Pistol Semi-Auto",
        HashName = 'WEAPON_PISTOL_SEMIAUTO',
    },
    {
        Name = "Pistol Mauser",
        HashName = "WEAPON_PISTOL_MAUSER",
    },
    {
        Name = "Pistol Volcanic",
        HashName = "WEAPON_PISTOL_VOLCANIC",
    },
    {
        Name = "Pistol M1899",
        HashName = "WEAPON_PISTOL_M1899",
    },
    {
        Name = "Revolver Schofield",
        HashName = "WEAPON_REVOLVER_SCHOFIELD",
    },
    {
        Name = "Revolver Navy",
        HashName = "WEAPON_REVOLVER_NAVY",
    },
    {
        Name = "Revolver Navy Crossover",
        HashName = "WEAPON_REVOLVER_NAVY_CROSSOVER",
    },
    {
        Name = "Revolver Lemat",
        HashName = "WEAPON_REVOLVER_LEMAT",
    },
    {
        Name = "Revolver Double Action",
        HashName = "WEAPON_REVOLVER_DOUBLEACTION",
    },
    {
        Name = "Revolver Cattleman",
        HashName = "WEAPON_REVOLVER_CATTLEMAN",
    },
    {
        Name = "Revolver Cattleman mexican",
        HashName = "WEAPON_REVOLVER_CATTLEMAN_MEXICAN",
    },
    {
        Name = "Varmint Rifle",
        HashName = "WEAPON_RIFLE_VARMINT",
    },
    {
        Name = "Winchester Repeater",
        HashName = "WEAPON_REPEATER_WINCHESTER",
    },
    {
        Name = "Henry Reapeater",
        HashName = "WEAPON_REPEATER_HENRY",
    },
    {
        Name = "Evans Repeater",
        HashName = "WEAPON_REPEATER_EVANS",
    },
    {
        Name = "Carabine Reapeater",
        HashName = "WEAPON_REPEATER_CARBINE",
    },
    {
        Name = "Rolling Block Rifle",
        HashName = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK",
    },
    {
        Name = "Carcano Rifle",
        HashName = "WEAPON_SNIPERRIFLE_CARCANO",
    },
    {
        Name = "Springfield Rifle",
        HashName = "WEAPON_RIFLE_SPRINGFIELD",
    },
    {
        Name = "Elephant Rifle",
        HashName = "WEAPON_RIFLE_ELEPHANT",
    },
    {
        Name = "BoltAction Rifle",
        HashName = "WEAPON_RIFLE_BOLTACTION",
    },
    {
        Name = "Semi-Auto Shotgun",
        HashName = "WEAPON_SHOTGUN_SEMIAUTO",
    },
    {
        Name = "Sawedoff Shotgun",
        HashName = "WEAPON_SHOTGUN_SAWEDOFF",
    },
    {
        Name = "Repeating Shotgun",
        HashName = "WEAPON_SHOTGUN_REPEATING",
    },
    {
        Name = "Double Barrel Exotic Shotgun",
        HashName = "WEAPON_SHOTGUN_DOUBLEBARREL_EXOTIC",
    },
    {
        Name = "Pump Shotgun",
        HashName = "WEAPON_SHOTGUN_PUMP",
    },
    {
        Name = "Double Barrel Shotgun",
        HashName = "WEAPON_SHOTGUN_DOUBLEBARREL",
    },
    {
        Name = "Camera",
        HashName = "WEAPON_KIT_CAMERA",
    },
    {
        Name = "Improved Binoculars",
        HashName = "WEAPON_KIT_BINOCULARS_IMPROVED",
    },
    {
        Name = "Knife Trader",
        HashName = "WEAPON_MELEE_KNIFE_TRADER",
    },
    {
        Name = "Binoculars",
        HashName = "WEAPON_KIT_BINOCULARS",
    },
    {
        Name = "Advanced Camera",
        HashName = "WEAPON_KIT_CAMERA_ADVANCED",
    },
    {
        Name = "Lantern",
        HashName = "WEAPON_MELEE_LANTERN",
    },
    {
        Name = "Davy Lantern",
        HashName = "WEAPON_MELEE_DAVY_LANTERN",
    },
    {
        Name = "Halloween Lantern",
        Desc = "made with a real human skull",
        HashName = "WEAPON_MELEE_LANTERN_HALLOWEEN",
    },
    {
        Name = "Poison Bottle",
        HashName = "WEAPON_THROWN_POISONBOTTLE",
    },
    {
        Name = "Metal Detector",
        HashName = "WEAPON_KIT_METAL_DETECTOR",
    },
    {
        Name = "Dynamite",
        HashName = "WEAPON_THROWN_DYNAMITE",
    },
    {
        Name = "Molotov",
        HashName = "WEAPON_THROWN_MOLOTOV",
    },
    {
        Name = "Improved Bow",
        HashName = "WEAPON_BOW_IMPROVED",
    },
    {
        Name = "Machete Collector",
        HashName = "WEAPON_MELEE_MACHETE_COLLECTOR",
    },
    {
        Name = "Electric Lantern",
        HashName = "WEAPON_MELEE_LANTERN_ELECTRIC",
    },
    {
        Name = "Torch",
        HashName = "WEAPON_MELEE_TORCH",
    },
    {
        Name = "Moonshine Jug",
        HashName = "WEAPON_MOONSHINEJUG_MP",
    },
    {
        Name = "Bolas",
        HashName = "WEAPON_THROWN_BOLAS",
    },
    {
        Name = "Bolas Hawkmoth",
        HashName = "WEAPON_THROWN_BOLAS_HAWKMOTH",
    },
    {
        Name = "Bolas Ironspiked",
        HashName = "WEAPON_THROWN_BOLAS_IRONSPIKED",
    },
    {
        Name = "Bolas Intertwined",
        HashName = "WEAPON_THROWN_BOLAS_INTERTWINED",
    },
    {
        Name = "Fishing Rod",
        HashName = "WEAPON_FISHINGROD",
    },
    {
        Name = "Machete Horror",
        HashName = "WEAPON_MACHETE_HORROR",
    },
    {
        Name = "Lantern Haloween",
        HashName = "WEAPON_MELEE_LANTERN_HALOWEEN",
    },
    {
        Name = "Hammer",
        HashName = "WEAPON_MELEE_HAMMER",
    }
}
