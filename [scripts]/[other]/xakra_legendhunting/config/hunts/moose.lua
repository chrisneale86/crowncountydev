Config.Moose = {
    {
        Label = _U('Moose'),
        LocationName = 'Tall trees',
        ImageDesc = 'map_camp_location_tall_trees',
        Rewards = {
    		{	-- REWARD 1
    			currency = { 
    				type = 0,	-- 0 = money, 1 = gold, 2 = rol
    				label = '$',
    				amount = { 160, 350 },	-- number,{ number_min, number_max } or false (disable reward currency)
    			},
    			items = {
    				{ label = 'Big Game Meat', item = 'biggame', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
    				{ label = 'Moose Antlers"', item = 'mooseantler', amount = 10 },	-- amount (number or { number_min, number_max }
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
    				{ label = 'Big Game Meat', item = 'biggame', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
    				{ label = 'Moose Antlers"', item = 'mooseantler', amount = 10 },	-- amount (number or { number_min, number_max }
    				-- { label = 'Example', item = 'example', amount = 10 },	-- amount (number or { number_min, number_max }
    			},
    		},
        },
        Part1 = vector3(-2162.32, -1475.22, 133.7), -- Blip
        Part2 = {	-- Track Elk
            vector3(-2165.08, -1476.75, 133.7),
            vector3(-2158.48, -1457.71, 135.3),
            vector3(-2141.97, -1438.69, 137.71),
            vector3(-2097.01, -1496.99, 137.81),
            vector3(-2137.81, -1496.64, 140.99),
            vector3(-2198.27, -1504.09, 139.62),
            vector3(-2213.01, -1476.03, 135.77),
        },
        Part3 = vector3(-2379.21, -1477.85, 145.44), -- Blip
        Part4 = {
            Snipers = {
                vector4(-2420.62, -1510.73, 165.16, 356.32),
                vector4(-2412.56, -1512.71, 164.06, 324.38),
                vector4(-2398.74, -1515.57, 162.59, 355.07),
                vector4(-2402.87, -1515.92, 162.98, 353.0),
                vector4(-2390.37, -1522.9, 163.58, 6.2),
                vector4(-2379.44, -1510.64, 159.21, 15.05),
                vector4(-2369.86, -1518.35, 160.09, 347.89),
                vector4(-2360.92, -1519.77, 159.36, 350.3),
            },
            PHorses = {
                vector4(-2431.07, -1455.21, 148.69, 287.36),
                vector4(-2473.7, -1460.26, 147.65, 235.32),
                vector4(-2479.92, -1476.59, 147.6, 277.69),
                vector4(-2416.71, -1427.36, 150.95, 290.22),
                vector4(-2417.67, -1427.95, 150.91, 258.77),
                vector4(-2441.84, -1425.55, 148.89, 235.43),
            },
        },
        Part5 = vector3(-2228.91, -1740.43, 140.61), -- Blip
        Part6 = {   -- Legendary Moose
            vector4(-2210.77, -1792.42, 138.8, 308.27),
            vector4(-2178.27, -1769.33, 139.9, 108.05),
            vector4(-2177.51, -1748.57, 139.88, 345.55),
            vector4(-2197.55, -1716.79, 142.16, 83.16),
            vector4(-2207.4, -1691.75, 141.89, 69.37),
        },
    },
}