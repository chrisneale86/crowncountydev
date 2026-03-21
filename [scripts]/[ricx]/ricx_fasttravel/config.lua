Config = {}
Config.framework = "vorp"--"redemrp" or "vorp" or "qbr" or "qbr2" or "redemrp-reboot" or "rsg"
Config.RefreshRate = 5

Config.Prompts = {
    Prompt1 = 0x05CA7C52,
}

Config.Marker = {
    rgba = {126, 0, 0, 100},
    size = {1.0, 1.0, 0.3},
    enable = true,
}

Config.Texts = {
    Prompt1 = "Open",
    --
    FastTravel = "Fast Travel",
    Select = "Select Location",
    Options = "Fast Travel Options",
    --notifications
    Arrived = "Arrived to Location!",
    NotAllowed = "You are not allowed to travel from here!",
    NoJob = "You dont have the required job!",
    NoMoney = "You dont have enough money!",
    NoItems = "You are missing items! (%s)",
    WaitCD = "Wait before traveling here!",
}

Config.Textures = {
    cross = {"scoretimer_textures", "scoretimer_generic_cross"},
    locked = {"menu_textures","stamp_locked_rank"},
    tick = {"scoretimer_textures","scoretimer_generic_tick"},
    money = {"inventory_items", "money_moneystack"},
    alert = {"menu_textures", "menu_icon_alert"},
}

Config.TravelCD = 2 -- minutes before the Travel can be used at FastTravels once a player used

Config.FastTravels = {
    [1] = {
        name = "Fast Travel Tumbleweed",
        blip = {enable = true, sprite = 1012165077},
        coords = vector3(-5413.73, -2923.05, 1.38),
        job = {"doctor",},
        identifiers = false, --Or can use array with identifiers data: identifiers = {{identifiers = "steam:01", charid = 1}, {identifiers = "steam:02", charid = 1},},
        locations = {
            {
                name = "Armadillo",
                coords = vector4(-3441.99, -2711.01, -4.5, 90.52),
                price = 0,
                items = false
            },
            {
                name = "Blackwater",
                coords = vector4(-835.84, -1659.13, 61.42, 90.53),
                price = 0,
                items = false,
            },
            {
                name = "Strawberry",
                coords = vector4(-1755.73, -226.22, 184.57, 90.39),
                price = 0,
                items = false
            },
            {
                name = "Valentine",
                coords = vector4(-242.26, 959.76, 137.61, 90.4),
                price = 0,
                items = false,
            },
            {
                name = "Rhodes",
                coords = vector4(1297.66, -1128.31, 81.22, 90.41),
                price = 0,
                items = false
            },
            {
                name = "Saint Denis",
                coords = vector4(2345.84, -1548.35, 46.1, 90.42),
                price = 0,
                items = false,
            },
            {
                name = "Annesburg",
                coords = vector4(2842.97, 1441.17, 68.71, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Wapiti",
                coords = vector4(442.5, 2139.76, 243.57, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Tumbleweed",
                coords = vector4(-5413.58, -2923.24, 1.37, 271.83),
                price = 0,
                items = false,
            },
        },
    },
    [2] = {
        name = "Fast Travel Armadillo",
        blip = {enable = true, sprite = 1012165077},
        coords = vector3(-3441.85, -2711.04, -4.5),
        job = {"doctor",},
        identifiers = false, --Or can use array with identifiers data: identifiers = {{identifiers = "steam:01", charid = 1}, {identifiers = "steam:02", charid = 1},},
        locations = {
            {
                name = "Armadillo",
                coords = vector4(-3441.99, -2711.01, -4.5, 90.52),
                price = 0,
                items = false
            },
            {
                name = "Blackwater",
                coords = vector4(-835.84, -1659.13, 61.42, 90.53),
                price = 0,
                items = false,
            },
            {
                name = "Strawberry",
                coords = vector4(-1755.73, -226.22, 184.57, 90.39),
                price = 0,
                items = false
            },
            {
                name = "Valentine",
                coords = vector4(-242.26, 959.76, 137.61, 90.4),
                price = 0,
                items = false,
            },
            {
                name = "Rhodes",
                coords = vector4(1297.66, -1128.31, 81.22, 90.41),
                price = 0,
                items = false
            },
            {
                name = "Saint Denis",
                coords = vector4(2345.84, -1548.35, 46.1, 90.42),
                price = 0,
                items = false,
            },
            {
                name = "Annesburg",
                coords = vector4(2842.97, 1441.17, 68.71, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Wapiti",
                coords = vector4(442.5, 2139.76, 243.57, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Tumbleweed",
                coords = vector4(-5413.58, -2923.24, 1.37, 271.83),
                price = 0,
                items = false,
            },
        },
    },
    [3] = {
        name = "Fast Travel Blackwater",
        blip = {enable = true, sprite = 1012165077},
        coords = vector3(-835.56, -1659.16, 61.36),
        job = {"doctor",},
        identifiers = false, --Or can use array with identifiers data: identifiers = {{identifiers = "steam:01", charid = 1}, {identifiers = "steam:02", charid = 1},},
        locations = {
            {
                name = "Armadillo",
                coords = vector4(-3441.99, -2711.01, -4.5, 90.52),
                price = 0,
                items = false
            },
            {
                name = "Blackwater",
                coords = vector4(-835.84, -1659.13, 61.42, 90.53),
                price = 0,
                items = false,
            },
            {
                name = "Strawberry",
                coords = vector4(-1755.73, -226.22, 184.57, 90.39),
                price = 0,
                items = false
            },
            {
                name = "Valentine",
                coords = vector4(-242.26, 959.76, 137.61, 90.4),
                price = 0,
                items = false,
            },
            {
                name = "Rhodes",
                coords = vector4(1297.66, -1128.31, 81.22, 90.41),
                price = 0,
                items = false
            },
            {
                name = "Saint Denis",
                coords = vector4(2345.84, -1548.35, 46.1, 90.42),
                price = 0,
                items = false,
            },
            {
                name = "Annesburg",
                coords = vector4(2842.97, 1441.17, 68.71, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Wapiti",
                coords = vector4(442.5, 2139.76, 243.57, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Tumbleweed",
                coords = vector4(-5413.58, -2923.24, 1.37, 271.83),
                price = 0,
                items = false,
            },
        },
    },
    [4] = {
        name = "Fast Travel Strawberry",
        blip = {enable = true, sprite = 1012165077},
        coords = vector3(-1755.6, -226.16, 184.59),
        job = {"doctor",},
        identifiers = false, --Or can use array with identifiers data: identifiers = {{identifiers = "steam:01", charid = 1}, {identifiers = "steam:02", charid = 1},},
        locations = {
            {
                name = "Armadillo",
                coords = vector4(-3441.99, -2711.01, -4.5, 90.52),
                price = 0,
                items = false
            },
            {
                name = "Blackwater",
                coords = vector4(-835.84, -1659.13, 61.42, 90.53),
                price = 0,
                items = false,
            },
            {
                name = "Strawberry",
                coords = vector4(-1755.73, -226.22, 184.57, 90.39),
                price = 0,
                items = false
            },
            {
                name = "Valentine",
                coords = vector4(-242.26, 959.76, 137.61, 90.4),
                price = 0,
                items = false,
            },
            {
                name = "Rhodes",
                coords = vector4(1297.66, -1128.31, 81.22, 90.41),
                price = 0,
                items = false
            },
            {
                name = "Saint Denis",
                coords = vector4(2345.84, -1548.35, 46.1, 90.42),
                price = 0,
                items = false,
            },
            {
                name = "Annesburg",
                coords = vector4(2842.97, 1441.17, 68.71, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Wapiti",
                coords = vector4(442.5, 2139.76, 243.57, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Tumbleweed",
                coords = vector4(-5413.58, -2923.24, 1.37, 271.83),
                price = 0,
                items = false,
            },
        },
    },
    [5] = {
        name = "Fast Travel Valentine",
        blip = {enable = true, sprite = 1012165077},
        coords = vector3(-242.04, 959.7, 137.61),
        job = {"doctor",},
        identifiers = false, --Or can use array with identifiers data: identifiers = {{identifiers = "steam:01", charid = 1}, {identifiers = "steam:02", charid = 1},},
        locations = {
            {
                name = "Armadillo",
                coords = vector4(-3441.99, -2711.01, -4.5, 90.52),
                price = 0,
                items = false
            },
            {
                name = "Blackwater",
                coords = vector4(-835.84, -1659.13, 61.42, 90.53),
                price = 0,
                items = false,
            },
            {
                name = "Strawberry",
                coords = vector4(-1755.73, -226.22, 184.57, 90.39),
                price = 0,
                items = false
            },
            {
                name = "Valentine",
                coords = vector4(-242.26, 959.76, 137.61, 90.4),
                price = 0,
                items = false,
            },
            {
                name = "Rhodes",
                coords = vector4(1297.66, -1128.31, 81.22, 90.41),
                price = 0,
                items = false
            },
            {
                name = "Saint Denis",
                coords = vector4(2345.84, -1548.35, 46.1, 90.42),
                price = 0,
                items = false,
            },
            {
                name = "Annesburg",
                coords = vector4(2842.97, 1441.17, 68.71, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Wapiti",
                coords = vector4(442.5, 2139.76, 243.57, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Tumbleweed",
                coords = vector4(-5413.58, -2923.24, 1.37, 271.83),
                price = 0,
                items = false,
            },
        },
    },
    [6] = {
        name = "Fast Travel Rhodes",
        blip = {enable = true, sprite = 1012165077},
        coords = vector3(1297.93, -1128.34, 81.23),
        job = {"doctor",},
        identifiers = false, --Or can use array with identifiers data: identifiers = {{identifiers = "steam:01", charid = 1}, {identifiers = "steam:02", charid = 1},},
        locations = {
            {
                name = "Armadillo",
                coords = vector4(-3441.99, -2711.01, -4.5, 90.52),
                price = 0,
                items = false
            },
            {
                name = "Blackwater",
                coords = vector4(-835.84, -1659.13, 61.42, 90.53),
                price = 0,
                items = false,
            },
            {
                name = "Strawberry",
                coords = vector4(-1755.73, -226.22, 184.57, 90.39),
                price = 0,
                items = false
            },
            {
                name = "Valentine",
                coords = vector4(-242.26, 959.76, 137.61, 90.4),
                price = 0,
                items = false,
            },
            {
                name = "Rhodes",
                coords = vector4(1297.66, -1128.31, 81.22, 90.41),
                price = 0,
                items = false
            },
            {
                name = "Saint Denis",
                coords = vector4(2345.84, -1548.35, 46.1, 90.42),
                price = 0,
                items = false,
            },
            {
                name = "Annesburg",
                coords = vector4(2842.97, 1441.17, 68.71, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Wapiti",
                coords = vector4(442.5, 2139.76, 243.57, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Tumbleweed",
                coords = vector4(-5413.58, -2923.24, 1.37, 271.83),
                price = 0,
                items = false,
            },
        },
    },
    [7] = {
        name = "Fast Travel Saint Denis",
        blip = {enable = true, sprite = 1012165077},
        coords = vector3(2346.11, -1548.39, 46.1),
        job = {"doctor",},
        identifiers = false, --Or can use array with identifiers data: identifiers = {{identifiers = "steam:01", charid = 1}, {identifiers = "steam:02", charid = 1},},
        locations = {
            {
                name = "Armadillo",
                coords = vector4(-3441.99, -2711.01, -4.5, 90.52),
                price = 0,
                items = false
            },
            {
                name = "Blackwater",
                coords = vector4(-835.84, -1659.13, 61.42, 90.53),
                price = 0,
                items = false,
            },
            {
                name = "Strawberry",
                coords = vector4(-1755.73, -226.22, 184.57, 90.39),
                price = 0,
                items = false
            },
            {
                name = "Valentine",
                coords = vector4(-242.26, 959.76, 137.61, 90.4),
                price = 0,
                items = false,
            },
            {
                name = "Rhodes",
                coords = vector4(1297.66, -1128.31, 81.22, 90.41),
                price = 0,
                items = false
            },
            {
                name = "Saint Denis",
                coords = vector4(2345.84, -1548.35, 46.1, 90.42),
                price = 0,
                items = false,
            },
            {
                name = "Annesburg",
                coords = vector4(2842.97, 1441.17, 68.71, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Wapiti",
                coords = vector4(442.5, 2139.76, 243.57, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Tumbleweed",
                coords = vector4(-5413.58, -2923.24, 1.37, 271.83),
                price = 0,
                items = false,
            },
        },
    },
    [8] = {
        name = "Fast Travel Annesburg",
        blip = {enable = true, sprite = 1012165077},
        coords = vector3(2843.25, 1441.13, 68.65),
        job = {"doctor",},
        identifiers = false, --Or can use array with identifiers data: identifiers = {{identifiers = "steam:01", charid = 1}, {identifiers = "steam:02", charid = 1},},
        locations = {
            {
                name = "Armadillo",
                coords = vector4(-3441.99, -2711.01, -4.5, 90.52),
                price = 0,
                items = false
            },
            {
                name = "Blackwater",
                coords = vector4(-835.84, -1659.13, 61.42, 90.53),
                price = 0,
                items = false,
            },
            {
                name = "Strawberry",
                coords = vector4(-1755.73, -226.22, 184.57, 90.39),
                price = 0,
                items = false
            },
            {
                name = "Valentine",
                coords = vector4(-242.26, 959.76, 137.61, 90.4),
                price = 0,
                items = false,
            },
            {
                name = "Rhodes",
                coords = vector4(1297.66, -1128.31, 81.22, 90.41),
                price = 0,
                items = false
            },
            {
                name = "Saint Denis",
                coords = vector4(2345.84, -1548.35, 46.1, 90.42),
                price = 0,
                items = false,
            },
            {
                name = "Annesburg",
                coords = vector4(2842.97, 1441.17, 68.71, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Wapiti",
                coords = vector4(442.5, 2139.76, 243.57, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Tumbleweed",
                coords = vector4(-5413.58, -2923.24, 1.37, 271.83),
                price = 0,
                items = false,
            },
        },
    },
    [9] = {
        name = "Fast Travel Wapiti",
        blip = {enable = true, sprite = 1012165077},
        coords = vector3(442.77, 2139.72, 243.55),
        job = {"doctor",},
        identifiers = false, --Or can use array with identifiers data: identifiers = {{identifiers = "steam:01", charid = 1}, {identifiers = "steam:02", charid = 1},},
        locations = {
            {
                name = "Armadillo",
                coords = vector4(-3441.99, -2711.01, -4.5, 90.52),
                price = 0,
                items = false
            },
            {
                name = "Blackwater",
                coords = vector4(-835.84, -1659.13, 61.42, 90.53),
                price = 0,
                items = false,
            },
            {
                name = "Strawberry",
                coords = vector4(-1755.73, -226.22, 184.57, 90.39),
                price = 0,
                items = false
            },
            {
                name = "Valentine",
                coords = vector4(-242.26, 959.76, 137.61, 90.4),
                price = 0,
                items = false,
            },
            {
                name = "Rhodes",
                coords = vector4(1297.66, -1128.31, 81.22, 90.41),
                price = 0,
                items = false
            },
            {
                name = "Saint Denis",
                coords = vector4(2345.84, -1548.35, 46.1, 90.42),
                price = 0,
                items = false,
            },
            {
                name = "Annesburg",
                coords = vector4(2842.97, 1441.17, 68.71, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Wapiti",
                coords = vector4(442.5, 2139.76, 243.57, 90.43),
                price = 0,
                items = false,
            },
            {
                name = "Tumbleweed",
                coords = vector4(-5413.58, -2923.24, 1.37, 271.83),
                price = 0,
                items = false,
            },
        },
    },
}

--[[
    --REDEM:RP INVENTORY ITEM

    ["item"] = { label = "", description = "", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 50,imgsrc = "items/item.png", type = "item_standard",},

    --QBR/QR/RS ITEM
    ['item'] 					= {['name'] = 'item', 			 	  	['label'] = 'label',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'item.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'desc'},
	
]]
