Config = {}
Config.keys = {
    -- change the hashes to the keys u want, do not change the writings in qoutes. for example if u wana change B do ["B"] = (CHANGE THIS 0x8AAA0AD4), do not change whats inside those brackets > ["B"]
    ["G"] = 0x760A9C6F,
    ["1"] = 0xE6F612E4,
    ["2"] = 0x1CE6D9EB,
    ["3"] = 0x4F49CC4C,
    ["4"] = 0x8F9F9E58,
}
Config.updatedinventoryammo = true -- set to false if ur using an out of date inventory NEW LINE

Config.removescope = true -- set to true if you want scoped rifles to come with no scopes and players need to add the scope

Config.allowcustomserial = true -- allow players to set custom serial number when crafting weapon
Config.allowcustomlabel = true -- allow players to set custom label when crafting weapon
Config.allowcustomdesc = true -- allow players to set custom description when crafting weapon

Config.noserialweapons = { -- list of weapons that cant have a serial number
    "WEAPON_MELEE_CLEAVER",
    "WEAPON_MELEE_HATCHET",
    "WEAPON_MELEE_HATCHET_HUNTER",
    "WEAPON_MELEE_KNIFE",
    "WEAPON_KIT_BINOCULARS_IMPROVED",
    "WEAPON_KIT_BINOCULARS",
    "WEAPON_FISHINGROD",
    "WEAPON_KIT_CAMERA",
    "WEAPON_kIT_CAMERA_ADVANCED",
    "WEAPON_MELEE_LANTERN",
    "WEAPON_MELEE_DAVY_LANTERN",
    "WEAPON_MELEE_LANTERN_HALLOWEEN",
    "WEAPON_KIT_METAL_DETECTOR",
    "WEAPON_MELEE_HAMMER",
    "WEAPON_BOW",
    "WEAPON_BOW_IMPROVED",
}

Config.craftingtakeitems = true -- if mini game fails take items from player

Config.jobonly = true -- only players with mentioned jobs below can access crafting/customization station
Config.jobrankcustomization = 1
Config.jobrankcrafting = 1

Config.checkguncommand = "checkgun"

Config.weaponshops = false -- endable or disable weapon shops

Config.craftinganimations = "WORLD_HUMAN_CROUCH_INSPECT" -- animation for crafting
Config.customizationanimation = "WORLD_HUMAN_WRITE_NOTEBOOK" -- animations for customizations

Config.customizationLocations = { 
    Valentine = {	   
        Pos = {x= -277.22, y=778.922, z=119.50}, -- location weapon customization station
        Pos2 = {x= -276.47, y=778.922, z=119.80}, -- location spawned weapon 3d model
        job = {"gunsmith"},
    },
    lympanyguns = {	   
        Pos = {x= -346.0, y=-157.09, z=50.7}, -- location weapon customization station
        Pos2 = {x= -346.3, y=-157.5, z=51.21}, -- location spawned weapon 3d model
        job = {"lympanyguns"},
    },
    Rhodes = {	   
        Pos = {x= 1327.05, y=-1322.05, z=78.05}, -- location weapon customization station
        Pos2 = {x= 1326.35, y=-1322.05, z=78.08}, -- location spawned weapon 3d model
        job = {"rguns"},

    },
    SaintDenis = {	   
        Pos = {x= 2712.148, y=-1283.020, z=49.636}, -- location weapon customization station
        Pos2 = {x= 2712.649, y=-1282.320, z=49.86}, -- location spawned weapon 3d model
        job = {"sdgunsmith"},

    },
    Annesburg = {	   
        Pos = {x= 2950.90, y=1316.09, z=44.82}, -- location weapon customization station
        Pos2 = {x= 2949.80, y=1316.81, z=45.01}, -- location spawned weapon 3d model
        job = {"annesburggunsmith"},

    },
    Blackwater = {	   
        Pos = {x=-836.9686,y=-1273.4796,z=43.5798}, -- location weapon customization station     
        Pos2 = {x=-836.9039,y=-1274.1606,z= 43.9144}, -- location spawned weapon 3d model       -836.9039, -1274.1606, 44.6144, 185.5813
        job = {"bwgunsmith"},

    },
    Tumbleweed = {	   
        Pos = {x= -5507.00, y=-2963.76, z=-0.63}, -- location weapon customization station
        Pos2 = {x= -5507.40, y=-2963.46, z=-0.30}, -- location spawned weapon 3d model
        job = {"twgunsmith"},
    },
    Armadillo = {	   
        Pos = {x= -3676.70, y=-2605.13, z=-13.72}, -- location weapon customization station
        Pos2 = {x= -3676.70, y=-2604.63, z=-13.50}, -- location spawned weapon 3d model
        job = {"frontierarms"},
    },
    Strawberry = {	   
        Pos = {x= -1843.8356, y=-415.6792, z=161.3111}, -- location weapon customization station     
        Pos2 = {x= -1844.2242, y=-414.7462, z=161.3111}, -- location spawned weapon 3d model                       
        job = {"strwgunsmith"},

    },
}

Config.craftinglocation = { 
    Valentine = {	   
        Pos = {x= -277.0, y=780.689, z=119.68}, -- location weapon crafting station
        job = {"gunsmith"},
    },
    lympanyguns = {	   
        Pos = {x= -343.0, y=-157.6, z=51.1}, -- location weapon crafting station
        job = {"lympanyguns"},
    },   
    Rhodes = {	   
        Pos = {x= 1330.15, y=-1321.06, z=77.88}, -- location weapon crafting station
        job = {"rguns"},

    },
    SaintDenis = {	   
        Pos = {x= 2708.766, y=-1284.148, z=49.63}, -- location weapon crafting station
        job = {"sdgunsmith"},

    },
    annesblacksmith = {	   
        Pos = {x= 2886.75, y=1361.51, z=63.1}, -- location weapon crafting station
        job = {"annesblacksmith"},

    },
    Annesburg = {	   
        Pos = {x= 2951.28, y=1314.52, z=44.82}, -- location weapon crafting station
        job = {"annesburggunsmith"},

    },
    Blackwater = {	   
        Pos = {x=-829.1316,y=-1270.5123,z=43.5771}, -- location weapon crafting station    
        job = {"bwgunsmith"},

    },
    Tumbleweed = {	   
        Pos = {x= -5508.79, y=-2968.97, z=-0.63}, -- location weapon crafting station
        job = {"twgunsmith"},

    },
    Armadillo = {	   
        Pos = {x= -3676.43, y=-2601.06, z=-13.32}, -- location weapon crafting station
        job = {"frontierarms"},

    },
    Strawberry = {	   
        Pos = {x= -1846.0286, y=-418.4677, z=161.3111}, -- location weapon crafting station      
        job = {"strwgunsmith"},

    },
}


