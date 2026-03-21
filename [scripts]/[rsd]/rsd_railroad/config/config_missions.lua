--DELIVERIES
Config.EnableDeliveries = true --If you want Deliveries mission

Config.DeliveriesRanksAllowed = {0,1,2,3} --Ranks allowed to do this job

Config.ParametersPed = {
    distance = 60.0, --Distance to spawn peds
    notescape = true, --If the ped can not escape
    notafraid = true, --If the ped is not afraid
    isinvincible = true, --If the ped is invincible
}

Config.StationsDelivery = {
    VALENTINE = {
        name = "Valentine station", --name
        coords = vector4(-178.49, 622.2, 114.03, 249.17), --coords for peds and menu to deliver
        npcmodel = "A_F_M_RkrFancyTravellers_01", --model of Ped
    },
    RHODES = {
        name = "Rhodes station",
        coords = vector4(1223.13, -1295.94, 76.9, 138.56),
        npcmodel = "A_F_M_RkrFancyTravellers_01",
    },
    ANNESBURG = {
        name = "Annesburg station",
        coords = vector4(2937.46, 1274.26, 44.64, 265.28),
        npcmodel = "A_F_M_RkrFancyTravellers_01",
    },
    SAINTDENIS = {
        name = "Saint-Denis station",
        coords = vector4(2735.05, -1464.64, 45.46, 65.24),
        npcmodel = "A_F_M_RkrFancyTravellers_01",
    },
    EMERALD = {
        name = "Emerald station",
        coords = vector4(1525.53, 436.09, 90.68, 286.5),
        npcmodel = "A_F_M_RkrFancyTravellers_01",
    },
    FLATNECK = {
        name = "Flatneck station",
        coords = vector4(-336.28, -356.39, 88.02, 7.88),
        npcmodel = "A_F_M_RkrFancyTravellers_01",
    },
    RIGGS = {
        name = "Riggs station",
        coords = vector4(-1099.11, -576.68, 82.41, 127.24),
        npcmodel = "A_F_M_RkrFancyTravellers_01",
    },
    WALLACE = {
        name = "Wallace station",
        coords = vector4(-1294.73, 410.31, 95.38, 113.61),
        npcmodel = "A_F_M_RkrFancyTravellers_01",
    },
    BACCHUS = {
        name = "Bacchus station",
        coords = vector4(583.18, 1682.6, 187.79, 317.27),
        npcmodel = "A_F_M_RkrFancyTravellers_01",
    },
    VANHORN = {
        name = "VanHorn station",
        coords = vector4(2892.17, 620.51, 57.74, 59.85),
        npcmodel = "A_F_M_RkrFancyTravellers_01",
    },
    RANCH = {
        name = "MacFarlane's Ranch station",
        coords = vector4(-2497.58, -2426.15, 60.6, 80.38),
        npcmodel = "A_F_M_RkrFancyTravellers_01",
    },
    ARMADILLO = {
        name = "Armadillo station",
        coords = vector4(-3739.77, -2611.79, -13.24, 87.63),
        npcmodel = "A_F_M_RkrFancyTravellers_01",
    },
    BENEDICT = {
        name = "Benedict Point station",
        coords = vector4(-5231.38, -3483.96, -20.54, 114.84),
        npcmodel = "A_F_M_RkrFancyTravellers_01",
    },
    --[[BLACKWATER = {
        name = "Blackwater station",
        coords = vector4(-881.2, -1323.7, 43.98, 178.33),
        npcmodel = "A_F_M_RkrFancyTravellers_01",
    },]]--
        BLACKWATER = {
        name = "Blackwater Station",
        coords = vector4(-883.12, -1233.58, 44.15, 181.81),
        npcmodel = "A_F_M_RkrFancyTravellers_01", --Ped you want
    },
    MANZANITA = {
        name = "Manzanita Station",
        coords = vector4(-1946.55, -1609.97, 116.69, 8.76),
        npcmodel = "A_F_M_RkrFancyTravellers_01", --Ped you want
    },
}

--FREE DELIVERIES
Config.ItemDeliveries = {
    ["bread"] = {label = "Bread", price = 0.2}, --item, label, price
    ["apple"] = {label = "Apple", price = 0.4},
}

--CUSTOM FIX DELIVERIES
Config.EnableCustomDeliveries = true --If you want custom fix deliveries instead of free deliveries
Config.CustomDeliveries = {
    {
        name = "Food delivery in Annesburg",
        station = "ANNESBURG", --target delivery (key of Config.StationsDelivery)
        jobs = {"railroader"},--job allowed to take mission
        items = {
            {item = "bread", label = "Bread", count =  10, price = 0.2},--item, label, count, price
            {item = "apple", label = "Apple", count =  10, price = 0.2},
            {item = "flour", label = "Flour", count =  10, price = 0.5},
            {item = "beer",  label = "Beer",  count =  10, price = 0.5},
            {item = "bacon", label = "Bacon", count =  10, price = 0.5},
            {item = "consumable_poundcake", label = "Poundcake", count =  10, price = 0.2},
        },
        rewardUnique = 300,  -- false to reward per item 
    },

    {
        name = "Food delivery to Mcfarlanes Ranch",
        station = "RANCH", --target delivery (key of Config.StationsDelivery)
        jobs = {"railroader"},--job allowed to take mission
        items = {
            {item = "bread", label = "Bread", count =  10, price = 0.2},--item, label, count, price
            {item = "apple", label = "Apple", count =  10, price = 0.2},
            {item = "flour", label = "Flour", count =  10, price = 0.5},
            {item = "beer",  label = "Beer",  count =  10, price = 0.5},
            {item = "bacon", label = "Bacon", count =  10, price = 0.5},
            {item = "consumable_poundcake", label = "Poundcake", count =  10, price = 0.2},
        },
        rewardUnique = 300,  -- false to reward per item 
    },

    {
        name = "Supplies delivery in Saint Denis",
        station = "SAINTDENIS",
        jobs = {"railroader"},
        items = {
            {item = "wood", label = "Wood", count =  10, price = 0.6},
            {item = "iron", label = "Strong Iron", count =  10, price = 0.6},
            {item = "fertilizer", label = "Fertilizer", count =  10, price = 0.8},
            {item = "clay", label = "Clay", count =  10, price = 0.3},
            {item = "copper", label = "Copper", count =  10, price = 0.5},
            {item = "coal", label = "Coal", count =  10, price = 0.8},
            {item = "hwood", label = "Hard Wood", count =  10, price = 0.8},
        },
        rewardUnique = 300,
    },

       {
        name = "Supplies delivery in Armadillo",
        station = "ARMADILLO",
        jobs = {"railroader"},
        items = {
            {item = "wood", label = "Wood", count =  10, price = 0.6},
            {item = "iron", label = "Strong Iron", count =  10, price = 0.6},
            {item = "fertilizer", label = "Fertilizer", count =  10, price = 0.8},
            {item = "clay", label = "Clay", count =  10, price = 0.3},
            {item = "copper", label = "Copper", count =  10, price = 0.5},
            {item = "coal", label = "Coal", count =  10, price = 0.8},
            {item = "hwood", label = "Hard Wood", count =  10, price = 0.8},
        },
        rewardUnique = 300,
    },
}

--------------------------------------------------------------



--TRANSPORT

--For passenger transport missions to work, the passenger wagon must be either in first or second place after the coal wagon (trains are already set up in this way).
--The wagon interiors do not load after these 2 positions when you are in the driver's seat and consequently bug the animations and the positioning of the NPCs as well as the freeze in the wagon, thank you RedM for these complications !

Config.EnableTransport = true --If you want transport mission

Config.TransportRanksAllowed = {0,1,2,3} --Ranks allowed to do this job

Config.TicketPrice = 3.0  --ticket price per NPC in $

Config.MaxPassenger = 27 --MAX IS 27 (DONT TOUCH !!)

Config.Passenger = { --add model you want for passengers
    "A_F_M_LOWERTRAINPASSENGERS_01",
    "A_F_M_MIDDLETRAINPASSENGERS_01",
    "A_F_M_UPPERTRAINPASSENGERS_01",
    "A_M_M_LOWERTRAINPASSENGERS_01",
    "A_M_M_MIDDLETRAINPASSENGERS_01",
    "A_M_M_UPPERTRAINPASSENGERS_01",
    "A_F_M_BiVFancyTravellers_01",
    "A_F_M_BynFancyTravellers_01",
    "A_F_M_GriFancyTravellers_01",
    "A_F_M_HtlFancyTravellers_01",
    "A_F_M_RkrFancyTravellers_01",
    "A_F_M_SclFancyTravellers_01",
	"A_M_M_BiVFancyTravellers_01",
    "A_M_M_BynFancyTravellers_01",
    "A_M_M_GriFancyTravellers_01",
    "A_M_M_HtlFancyTravellers_01",
    "A_M_M_RkrFancyTravellers_01",
    "A_M_M_SclFancyTravellers_01",
    "A_M_M_SDFANCYTRAVELLERS_01",
}

Config.Platforms = {
    VALENTINE = {
        coordsWagon = vector3(-164.85, 626.36, 113.51), --coord where the wagon has to stop in vec3
        coordsPassenger = vector4(-169.17, 629.23, 114.03, 233.69), --coord or passengers spawn on the platform in vec4
        NumberOfPassenger = {6, 9}, --random of passenger, max is 27 "Config.MaxPassenger"
    },
    RHODES = {
        coordsWagon = vector3(1220.26, -1304.87, 76.44),
        coordsPassenger = vector4(1223.62, -1301.45, 76.9, 137.18),
        NumberOfPassenger = {6, 9},
    },
    ANNESBURG = {
        coordsWagon = vector3(2953.17, 1275.02, 43.92),
        coordsPassenger = vector4(2947.75, 1276.13, 44.64, 238.81),
        NumberOfPassenger = {9, 13},
    },
    SAINTDENIS = {
        coordsWagon = vector3(2688.51, -1466.2, 45.76),
        coordsPassenger = vector4(2685.77, -1461.98, 46.28, 206.83),
        NumberOfPassenger = {8, 12},
    },
    EMERALD = {
        coordsWagon = vector3(1529.38, 438.38, 90.22),
        coordsPassenger = vector4(1526.02, 433.62, 90.68, 260.88),
        NumberOfPassenger = {4, 8},
    },
    FLATNECK = {
        coordsWagon = vector3(-337.34, -347.82, 87.72),
        coordsPassenger = vector4(-334.9, -353.02, 88.02, 27.64),
        NumberOfPassenger = {6, 9},
    },
    RIGGS = {
        coordsWagon = vector3(-1103.68, -578.76, 81.98),
        coordsPassenger = vector4(-1104.57, -574.17, 82.22, 150.61),
        NumberOfPassenger = {6, 9},
    },
    WALLACE = {
        coordsWagon = vector3(-1307.24, 408.67, 94.95),
        coordsPassenger = vector4(-1303.31, 407.36, 95.38, 62.73),
        NumberOfPassenger = {6, 9},
    },
    BACCHUS = {
        coordsWagon = vector3(585.31, 1688.08, 187.54),
        coordsPassenger = vector4(583.21, 1686.27, 187.67, 316.16),
        NumberOfPassenger = {6, 9},
    },
    VANHORN = {
        coordsWagon = vector3(2890.75, 628.2, 57.45),
        coordsPassenger = vector4(2892.6, 626.63, 57.72, 74.9),
        NumberOfPassenger = {6, 9},
    },
    RANCH = {
        coordsWagon = vector3(-2499.09, -2432.68, 60.21),
        coordsPassenger = vector4(-2490.37, -2430.78, 60.64, 113.56),
        NumberOfPassenger = {6, 9},
    },
    ARMADILLO = {
        coordsWagon = vector3(-3749.6, -2600.91, -13.72),
        coordsPassenger = vector4(-3745.27, -2600.64, -13.25, 90.83),
        NumberOfPassenger = {6, 9},
    },
    BENEDICT = {
        coordsWagon = vector3(-5235.44, -3471.35, -21.26),
        coordsPassenger = vector4(-5232.27, -3471.77, -20.55, 95.63),
        NumberOfPassenger = {6, 9},
    },
    BLACKWATER = {
        coordsWagon = vector3(-886.96, -1243.92, 43.33),
        coordsPassenger = vector4(-883.33, -1242.29, 44.14, 89.8),
        NumberOfPassenger = {6, 9},
    },
    MANZANITA = {
        coordsWagon = vector3(-1950.17, -1605.26, 116.07),
        coordsPassenger = vector4(-1946.12, -1606.17, 116.71, 89.53),
        NumberOfPassenger = {3, 6},
    },
    --[[BLACKWATER = {
        coordsWagon = vector3(-885.81, -1332.15, 43.64),
        coordsPassenger = vector4(-882.19, -1332.03, 43.97, 90.83),
        NumberOfPassenger = {4, 6},
    },]]--
}
--------------------------------------------------------------






--SWITCH MAINTENANCE
Config.EnableSwitchMaintenance = false --AVAILABLE SOON
--------------------------------------------------------------




--RAIL MAINTENANCE
Config.EnableRailMaintenance = true --If you want Rail maintenance missions

Config.MaintenanceRanksAllowed = {0,1,2,3} --Ranks allowed to do this job

Config.timeAnimMaintenance = 60 -- time of animation with sledgehammer (30sec)

Config.CoolDownMaintenance = 30 --CoolDown that the rails can be maintained again (60min)

Config.BlipMaintenance = 1258184551 --blip for rails point

Config.PriceMaintenance = 250  --reward in $

Config.BlipMaintenanceColor = { --color to show if rails are good
    isOK = "BLIP_STYLE_DEBUG_GREEN", --green
    isNOK = "BLIP_STYLE_DEBUG_RED", --red
} 

Config.MaintenanceCoords = {
    NEWHANOVER = {
        {coords = vector3(22.059116, 663.783142, 116.994156)},--just change coords
        {coords = vector3(200.788208, 557.351501, 115.836266)},
        {coords = vector3(402.818817, 644.557434, 114.829994)},
        {coords = vector3(541.790405, 656.620667, 114.977264)},
        {coords = vector3(683.880188, 708.021851, 113.890953)},
        {coords = vector3(830.896606, 744.720154, 111.328529)},
        {coords = vector3(952.932434, 777.070496, 106.331345)},
        {coords = vector3(1060.370850, 798.554199, 106.503410)},
        {coords = vector3(1168.853760, 794.879395, 103.108589)},
        {coords = vector3(1295.774536, 761.691101, 95.009270)},
        {coords = vector3(1526.956543, 579.878601, 91.267159)},
        {coords = vector3(1461.241211, 258.867126, 91.242371)},
        {coords = vector3(2578.436035, 313.331757, 65.709030)},
        {coords = vector3(2541.170166, 416.569885, 71.644707)},
        {coords = vector3(2422.900879, 517.341125, 77.655319)},
        {coords = vector3(2257.499756, 623.105164, 87.677452)},
        {coords = vector3(2122.773438, 935.551819, 117.234001)},
        {coords = vector3(1891.014648, 910.772156, 114.372185)},
        {coords = vector3(1776.515015, 686.443970, 104.954712)},
        {coords = vector3(1605.084717, 563.817749, 92.860207)},
        {coords = vector3(-177.556549, 513.041138, 111.883240)},
        {coords = vector3(-35.503242, 356.025757, 112.017525)},
        {coords = vector3(55.291824, 134.618652, 102.327301)},
        {coords = vector3(-79.371040, -180.682739, 99.084023)},
        {coords = vector3(-437.941895, -399.206329, 83.699188)},
        {coords = vector3(-647.756592, -505.783936, 76.800056)},
        {coords = vector3(2318.568848, 2007.373535, 178.646393)},
        {coords = vector3(2514.577148, 2159.977539, 167.268036)},
        {coords = vector3(2710.593262, 2230.302490, 159.290863)},
        {coords = vector3(2870.992188, 2100.504150, 158.495087)},
        {coords = vector3(3053.967529, 1898.242065, 117.081932)},
        {coords = vector3(3144.465332, 1661.231567, 78.574448)},
        {coords = vector3(2928.523193, 1338.687988, 43.105785)},
        {coords = vector3(2829.662354, 1106.281372, 45.294968)},
        {coords = vector3(2845.462402, 927.391235, 48.326530)},
        {coords = vector3(2910.000000, 733.095398, 51.776203)},
        {coords = vector3(2866.036865, 557.504150, 56.955109)},
        {coords = vector3(2736.273438, 283.671844, 52.685978)},
        {coords = vector3(-24.926170, -191.666779, 101.134377)},
        {coords = vector3(199.656174, -433.075745, 85.631294)},
        {coords = vector3(473.078888, -521.729553, 76.130119)},
    },
    LEMOYNE = {
        {coords = vector3(1406.268555, 72.058052, 91.575729)},
        {coords = vector3(1384.128174, -54.083694, 93.369415)},
        {coords = vector3(1433.090210, -192.861374, 89.936478)},
        {coords = vector3(1470.791504, -284.170227, 84.320877)},
        {coords = vector3(1479.431519, -386.782593, 79.042496)},
        {coords = vector3(1458.927734, -528.530029, 68.033569)},
        {coords = vector3(1459.084839, -639.416992, 60.199863)},
        {coords = vector3(1516.049927, -750.107422, 52.281937)},
        {coords = vector3(1606.088257, -807.458496, 48.686661)},
        {coords = vector3(1701.578491, -913.312988, 44.221901)},
        {coords = vector3(1817.811401, -999.596375, 42.025196)},
        {coords = vector3(2023.795898, -1077.462280, 42.615860)},
        {coords = vector3(2154.366455, -1239.803833, 42.536037)},
        {coords = vector3(2309.922119, -1358.957886, 44.628109)},
        {coords = vector3(2897.964844, -1204.952026, 45.096401)},
        {coords = vector3(2875.634277, -1096.571045, 45.233643)},
        {coords = vector3(2777.790283, -903.297546, 42.364040)},
        {coords = vector3(2680.742676, -710.272583, 41.692219)},
        {coords = vector3(2672.068848, -261.749451, 42.942444)},
        {coords = vector3(2662.191895, -55.006580, 48.825386)},
        {coords = vector3(2754.568848, 104.978966, 48.435749)},
        {coords = vector3(2775.914307, -71.762375, 43.229946)},
        {coords = vector3(2706.228027, -282.765198, 41.687023)},
        {coords = vector3(623.517517, -514.889221, 76.212395)},
        {coords = vector3(726.295837, -553.887756, 76.220055)},
        {coords = vector3(859.844849, -629.499329, 72.367599)},
        {coords = vector3(898.522278, -777.730591, 67.507294)},
        {coords = vector3(1060.107056, -1092.411011, 66.050926)},
        {coords = vector3(1133.754272, -1210.743042, 71.688507)},
        {coords = vector3(1328.429932, -1400.472168, 75.160316)},
        {coords = vector3(1509.251831, -1542.422852, 69.810631)},
        {coords = vector3(1621.387573, -1611.142334, 59.270512)},
        {coords = vector3(1929.002319, -1632.271240, 41.475918)},
        {coords = vector3(2249.589111, -1509.752808, 44.880035)},
    },
    ELIZABETH = {
        {coords = vector3(-843.390564, -605.859192, 71.326485)},
        {coords = vector3(-1033.422729, -620.297485, 74.354408)},
        {coords = vector3(-1256.031250, -441.861725, 96.746025)},
        {coords = vector3(-1490.174805, 22.083004, 101.852943)},
        {coords = vector3(-1506.522461, 209.713684, 103.647156)},
        {coords = vector3(-1447.986572, 303.576843, 99.178467)},
        {coords = vector3(-1277.276611, 485.422089, 92.747833)},
        {coords = vector3(-1189.199341, 569.002197, 92.652878)},
    },
    AMBARINO = {
        {coords = vector3(-1002.612671, 678.110413, 94.127693)},
        {coords = vector3(-799.777344, 811.333374, 105.623291)},
        {coords = vector3(-699.920898, 940.318909, 117.868462)},
        {coords = vector3(-427.737701, 1272.399292, 145.679184)},
        {coords = vector3(-325.947266, 1493.590698, 161.129562)},
        {coords = vector3(-246.284882, 1644.294312, 169.978058)},
        {coords = vector3(-154.319580, 1701.333740, 173.465881)},
        {coords = vector3(19.351393, 1745.040527, 176.616806)},
        {coords = vector3(298.544861, 1764.653564, 186.727432)},
        {coords = vector3(486.739105, 1774.006958, 186.742447)},
        {coords = vector3(716.989624, 1586.293823, 189.138565)},
        {coords = vector3(868.469116, 1652.158936, 191.695343)},
        {coords = vector3(1066.794556, 1752.484863, 191.696701)},
        {coords = vector3(1405.069336, 1849.535400, 190.803436)},
        {coords = vector3(1484.030151, 1851.773193, 190.794785)},
        {coords = vector3(1720.736084, 1826.572876, 191.098938)},
        {coords = vector3(1926.715820, 1775.448242, 191.089127)},
        {coords = vector3(2105.293213, 1872.595581, 191.454941)},
    },
    NEWAUSTIN = {
        {coords = vector3(-3736.770508, -2258.816895, -10.495174)},
        {coords = vector3(-1724.144531, -2628.287842, 64.341675)},
        {coords = vector3(-1649.082275, -2439.918457, 49.334015)},
        {coords = vector3(-1681.371460, -2292.662842, 43.963078)},
        {coords = vector3(-1878.650513, -2317.025391, 51.500957)},
        {coords = vector3(-2052.130859, -2413.068604, 59.519642)},
        {coords = vector3(-2259.961914, -2506.756836, 63.662853)},
        {coords = vector3(-2508.171875, -2327.947266, 62.988018)},
        {coords = vector3(-2642.915039, -2087.980225, 72.134064)},
        {coords = vector3(-2977.614258, -1980.501953, 73.959259)},
        {coords = vector3(-3498.533691, -1799.582764, 47.731953)},
        {coords = vector3(-3773.601074, -1860.991211, 37.100258)},
        {coords = vector3(-3786.573486, -2027.883789, 3.333039)},
        {coords = vector3(-3761.499268, -2430.081543, -11.817414)},
        {coords = vector3(-3750.928711, -2748.093262, -15.110002)},
        {coords = vector3(-3924.037598, -2859.663574, -15.201417)},
        {coords = vector3(-4195.937500, -3080.302246, -7.660140)},
        {coords = vector3(-4486.177246, -3075.881592, -9.595722)},
        {coords = vector3(-4635.043945, -3063.892822, -7.552699)},
        {coords = vector3(-4804.199707, -3098.461914, -13.630837)},
        {coords = vector3(-5002.570312, -3099.656982, -17.494303)},
        {coords = vector3(-5193.136719, -3264.524902, -16.419418)},
        {coords = vector3(-5317.033691, -3577.814209, -21.957640)},
        {coords = vector3(-5415.791504, -3783.913818, -20.288698)},
        {coords = vector3(-5593.472168, -3736.854004, -21.816391)},
        {coords = vector3(-5841.875000, -3597.239014, -24.250656)},
        {coords = vector3(-5982.096680, -3439.645752, -22.983334)},
        {coords = vector3(-5853.069336, -3279.467285, -21.903954)},
        {coords = vector3(-5776.564453, -2931.586914, -14.569978)},
        {coords = vector3(-5749.349609, -2701.382812, -12.610381)},
        {coords = vector3(-5578.364746, -2496.345947, -11.675924)},
        {coords = vector3(-5360.635254, -2354.394287, -5.499952)},
        {coords = vector3(-5083.580566, -2403.741211, -8.388512)},
        {coords = vector3(-5025.819336, -2663.187012, -12.937441)},
        {coords = vector3(-4973.678223, -2907.710449, -14.027708)},
    },
}
--------------------------------------------------------------



