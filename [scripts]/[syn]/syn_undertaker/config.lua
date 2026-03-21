Config = {}
Config.keys = {
    ["G"] = 0x760A9C6F,
    ["DOWN"] = 0x05CA7C52,
    ["UP"] = 0x6319DB71,
    ["LEFT"] = 0xA65EBAB4,
    ["RIGHT"] = 0xDEB34313,
    ["1"] = 0xE6F612E4,
    ["2"] = 0x1CE6D9EB,
    ["B"] = 0x4CC0E2FE,
    ["F"] = 0xB2F377E8,
}

Config.prepanywhere = true -- if true undertaker can prep bodies anywhere if false undertaker can only prep bodies at the undertaker location related to their job 
Config.jobs = {"undertaker"}
Config.shoveljobs = {"undertaker"}
Config.webhook = ""
Config.shovelitems = {"shovel"}

Config.playerbodylimit = 10 -- how many bodies a player can prep burry per restart cycle 

--- rewards for using shovel dig
-- Config.minmoney = 0
-- Config.maxmoney = 0
Config.minitemamount = 1
Config.maxitemamount = 4

-- reward for burrying bodies
Config.rewardmin = 10
Config.rewardmax = 15

Config.treasure = {

    {label = "Gold nugget" ,item = "goldnugget"},
    {label = "Pocket Watch" ,item = "pocket_watch"},
    {label = "Glass Eye" , item ="glasseye"},
    {label = "Boots" , item ="boots"},
    {label = "Hunters Gold Eye Cover-Coins" ,item = "luckycoin"},
  
}

Config.normalpayment = 15 
Config.prepbodyitems = {
    {item = "burialoil", label = "Burial Perfume Oil", amount = 1 , rewardbonus = 25},
    {item = "burialwraps", label = "Burial Wraps", amount = 1 , rewardbonus = 25},
    {item = "goodbyliquor", label = "Good-bye Liquor", amount = 1 , rewardbonus = 25},
    {item = "flowerarrangement", label = "Flower Arrangement", amount = 1 , rewardbonus = 35},
    {item = "luckycoin", label = "Hunters Gold Eye Cover-Coins", amount = 1 , rewardbonus = 25},
    {item = "honey", label = "Honey", amount = 1 , rewardbonus = 5},
    {item = "goldbar", label = "GoldBar", amount = 1 , rewardbonus = 20},
    {item = "ruby", label = "ruby", amount = 1 , rewardbonus = 30},
    {item = "pocket_watch", label = "Pocket Watch", amount = 1 , rewardbonus = 5},
    {item = "glasseye", label = "glass eye", amount = 1 , rewardbonus = 5},
    {item = "boots", label = "Boots", amount = 2 , rewardbonus = 5}, 

}

Config.blip = 350569997

-- locations where undertaker can burry bodies 
Config.grave = {
    val = {
        Pos = {x= -238.22, y=820.13, z=123.89},
    },
    sd = {
        Pos = {x= 2737.39, y=-1084.97, z=47.15},

    },
    rhodes = {
        Pos = {x= 1276.90, y=-1229.43, z=80.84},

    },
    bw = {
        Pos = {x= -993.35, y=-1193.28, z=58.90},

    },
    strw = {
        Pos = {x= -1756.98, y=-240.66, z=182.89},

    },
    dillo = {
        Pos = {x= -3652.7553, y= -2580.7209, z= -13.6168},

    },
    limpany = {
        Pos = {x=-402.9163, y=-157.9432, z=47.0603},

    },
}

Config.wagonDistance = 8.0 -- the distance in meters the wagon needs to be from the prep location; if it's too close you can't prep the body
Config.prepbody = {
    undertakerrhodes = {
        coords = {x = 1284.63, y = -1213.64, z = 82.17,h = 301.28},
        bodyaxis = {250.0, 10.0, -150.0},
        bodyaxis2 = {-0.05, -0.15, 0.2},
        burialsite =  {x= 1276.90, y=-1229.43, z=80.84},
    },
    undertakersd = {
        coords = {x= 2764.936035 ,y=-1125.792114 ,z=48.428051,h = 358.87},
        bodyaxis = {250.0, 10.0, -150.0},
        bodyaxis2 = {-0.05, -0.15, 0.2},
        burialsite =  {x= 2737.39, y=-1084.97, z=47.15},
    },
    dilloundertaker = {
        coords = {x = -3654.05, y = -2588.68, z = -13.15,h = 85.12},
        bodyaxis = {250.0, 10.0, -180.0},
        bodyaxis2 = {-0.05, -0.15, 0.2},
        burialsite =  {x= -3652.7553, y= -2580.7209, z= -13.6168},
    },
    limpanyundertaker = {
        coords = {x=-403.5358, y=-147.5633, z=45.8404,h = 175.16},
        bodyaxis = {250.0, 10.0, 90.0},
        bodyaxis2 = {-0.05, -0.15, 0.2},
        burialsite =  {x=-402.9163, y=-157.9432, z=47.0603},
    },

}


Config.Towns = {
    `Tumbleweed`,
    `VANHORN`,
    `valentine`, 
    `Strawberry`, 
    `StDenis`, 
    `Emerald`, 
    `Rhodes`, 
    `Blackwater`,  
    `Armadillo`, 
}

Config.Language = {
    oncooldown = "You are on cooldown until next storm",
    burrybody = "Bury Body",
    prepbody = "Place body",
    Title = "Treasure Hunt",
    WrongArea = "cant dig in towns",
    Nothing = "found nothing",
    FoundMoney = "found some money",
    FoundItem = "found some treasure",
    NoDig = "cant dig right now",
    cantburryanimals = "cant bury animals",
    shovel = "Shovel",
    stop = "Stop",
    dig = "Dig",
    bodyburried = "You buried a body and got $",
    nojob = "You are not a undertaker here",
    propbodymenu = "Prep Body",
    undertaker = "Undertaker",
    addburialitem = "Add Burial Item",
    itemadded = "Burial Item added",
    notenoughitems = "You dont have enough items",
    payment = "Payment: $",
    closecasket = "Close Casket",
    closecasket2 = "Close Casket And Prepare For Burial",
    carrycascket = "Carry Casket",
    gotoburialsite = "Go To Burial Site",
    burialsite = "Burial Site",
    noshovel = "You dont have a shovel",
    nowagonprep = "Move wagons at least " .. Config.wagonDistance .. "m away before placing the body",
    normalburial = "Normal Burial",
    prepburial = "Prep Burial",
    burriedbody = "Burried Body, paid $ ", 
}
