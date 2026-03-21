Config.Wolf = {
    {
        Label = _U('Wolf'),
        LocationName = 'Grizzlies',
        ImageDesc = 'map_camp_location_grizzlies',
        Rewards = {
            {	-- REWARD 1
                currency = { 
                    type = 0,	-- 0 = money, 1 = gold, 2 = rol
                    label = '$',
                    amount = { 160, 350 },	-- number,{ number_min, number_max } or false (disable reward currency)
                },
                items = {
                    { label = 'Game Meat', item = 'game', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'tooth', item = 'wolftooth', amount = 10 },	-- amount (number or { number_min, number_max }
                    -- { label = 'Example', item = 'example', amount = 10 },	-- amount (number or { number_min, number_max }
                },
            },
            {	-- REWARD 2
                 currency = { 
                    type = 0,	-- 0 = money, 1 = gold, 2 = rol
                    label = '$',
                    amount = { 160, 350 },	-- number,{ number_min, number_max } or false (disable reward currency)
                },
                items = {
                    { label = 'Game Meat', item = 'game', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'tooth', item = 'wolftooth', amount = 10 },	-- amount (number or { number_min, number_max }
                    -- { label = 'Example', item = 'example', amount = 10 },	-- amount (number or { number_min, number_max }
                },
            },
        },
        Part1 = vector3(-1785.28, 1701.02, 239.35), -- Blip
        Part2 = {
            vector3(-1755.94, 1690.46, 237.85),
            vector3(-1790.09, 1680.58, 237.06),
            vector3(-1782.2, 1715.65, 237.28),
            vector3(-1809.22, 1715.38, 237.23),
            vector3(-1771.74, 1689.86, 238.34),
            vector3(-1791.45, 1716.54, 239.32),
            vector3(-1759.75, 1678.72, 237.63),
            vector3(-1770.41, 1710.52, 236.63),
            vector3(-1780.92, 1731.59, 235.47),
            vector3(-1809.2, 1710.19, 237.03),
        },
        Part3 = {
            Blip = vector3(-1838.2, 1501.19, 244.21),
            Tracks = {  -- Track Elk
                vector3(-1817.47, 1508.48, 238.11),
                vector3(-1798.44, 1518.93, 235.72),
                vector3(-1826.83, 1525.58, 238.53),
                vector3(-1853.65, 1543.57, 244.88),
                vector3(-1856.32, 1511.0, 245.65),
                vector3(-1862.83, 1483.81, 261.17),
                vector3(-1881.9, 1453.92, 248.49),
                vector3(-1867.12, 1434.19, 252.79),
                vector3(-1829.71, 1437.7, 261.67),
            },
        },
        Part4 = {
            Blip = vector3(-1765.1, 1327.83, 262.54),
            Tracks = {  -- Track Elk
                vector3(-1782.6, 1330.49, 251.72),
                vector3(-1750.86, 1292.54, 296.34),
                vector3(-1751.5, 1334.9, 271.66),
                vector3(-1747.59, 1390.03, 298.18),
                vector3(-1723.13, 1370.79, 279.9),
                vector3(-1749.54, 1283.56, 293.93),
                vector3(-1743.62, 1334.44, 274.67),
                vector3(-1743.2, 1347.79, 285.29),
                vector3(-1763.09, 1393.12, 298.57),
                vector3(-1769.47, 1382.18, 292.45),
                vector3(-1726.02, 1353.71, 281.43),
            },
            Wolves = {
                vector4(-1725.12, 1378.44, 277.48, 159.13),
                vector4(-1718.15, 1378.58, 278.04, 141.98),
                vector4(-1711.92, 1371.77, 278.39, 138.12),
                vector4(-1722.16, 1356.57, 280.28, 80.81),
                vector4(-1727.34, 1343.51, 280.6, 46.43),
                vector4(-1732.08, 1330.35, 277.43, 34.34),
                vector4(-1729.98, 1343.57, 280-.81, 320.31),
            },
        },
        Part5 = vector3(-1643.59, 1234.77, 351.84), -- Blip
        Part6 = {
            LegendaryWolf = vector4(-1637.46, 1233.92, 351.88, 77.89),
            Npc = vector4(-1643.52, 1236.43, 352.81, 216.66),   -- Crying girl
            Wolves = {
                vector4(-1640.9, 1232.29, 351.89, 27.41),
                vector4(-1638.82, 1238.47, 350.73, 149.48),
                vector4(-1643.28, 1242.01, 350.98, 152.25),
                vector4(-1648.58, 1236.25, 351.57, 262.72),
                vector4(-1645.39, 1232.02, 351.77, 310.97),
            },
        },
    },
}