Config.Panther = {
    {
        Label = _U('Panther'),
        LocationName = 'Gaptooth ridge',
        ImageDesc = 'map_camp_location_gaptooth_ridge',
        Rewards = {
            {	-- REWARD 1
        		currency = { 
        			type = 0,	-- 0 = money, 1 = gold, 2 = rol
        			label = '$',
        			amount = { 160, 350 },	-- number,{ number_min, number_max } or false (disable reward currency)
        		},
        		items = {
        			{ label = 'Big Game Meat', item = 'biggame', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
        			{ label = 'Panther eyes', item = 'panthere', amount = 10 },	-- amount (number or { number_min, number_max }
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
        			{ label = 'Panther eyes', item = 'panthere', amount = 10 },	-- amount (number or { number_min, number_max }
        			-- { label = 'Example', item = 'example', amount = 10 },	-- amount (number or { number_min, number_max }
        		},
        	},
        },
        Part1 = vector3(-5234.47, -3472.81, -21.2), -- Blip
        Part2 = {	-- Track Dog
            vector3(-5224.13, -3502.71, -22.09),
            vector3(-5204.18, -3473.37, -21.92),
            vector3(-5215.98, -3448.65, -22.08),
            vector3(-5222.13, -3424.63, -22.06),
            vector3(-5270.78, -3476.89, -21.17),
            vector3(-5276.63, -3515.54, -21.83),
        },
        Part3 = {
            Blip = vector3(-5411.3, -3655.15, -21.97),
            Tracks = {  -- Cow
                vector3(-5414.99, -3643.67, -22.11),
                vector3(-5429.72, -3645.35, -22.15),
                vector3(-5422.38, -3657.14, -22.13),
                vector3(-5421.86, -3651.44, -22.13),
                vector3(-5429.38, -3665.18, -22.09),
                vector3(-5418.52, -3665.76, -21.98),
                vector3(-5387.89, -3664.17, -22.08),
                vector3(-5432.55, -3654.7, -22.15),
            },
        },
        Part4 = {
            Blip = vector3(-5241.62, -3857.19, -3.08),
            Tracks = {
                vector3(-5244.34, -3853.87, -2.95),
                vector3(-5250.98, -3860.2, -2.43),
                vector3(-5246.38, -3849.05, -2.55),
                vector3(-5240.38, -3857.48, -3.09),
                vector3(-5237.53, -3863.66, -3.08),
                vector3(-5245.51, -3858.07, -2.99),
                vector3(-5251.66, -3852.19, -2.12),
                vector3(-5238.16, -3846.11, -3.36),
                vector3(-5241.22, -3853.06, -3.1),
                vector3(-5231.39, -3861.96, -3.1),
            },
        },
        Part5 = vector3(-5928.93, -3670.04, -26.13), -- Blip
        Part6 = {   -- Native poachers
            vector4(-5958.07, -3664.23, -8.24, 262.25),
            vector4(-5963.93, -3673.8, -8.85, 239.21),
            vector4(-5977.67, -3679.62, -6.51, 241.41),
            vector4(-5982.79, -3689.38, -5.03, 256.39),
            vector4(-5990.82, -3695.26, -3.72, 236.22),
            vector4(-5897.27, -3665.5, -19.01, 97.91),
            vector4(-5973.8, -3671.86, -6.81, 225.32),
            vector4(-5910.71, -3720.28, -12.79, 58.15),
            vector4(-5905.98, -3713.2, -10.66, 67.41),
            vector4(-5892.72, -3690.88, -8.19, 85.78),
            vector4(-5888.66, -3685.32, -7.65, 73.7),
        },
        Part7 = vector3(-6207.81, -3745.62, -17.76), -- Blip
        Part8 = {
            LegendaryPanther = vector4(-6207.81, -3745.62, -17.76, 255.07),
            BabyPanther = vector4(-6205.62, -3737.84, -13.68, 302.19),
            Poachers = {    -- Native poachers
                vector4(-6207.84, -3757.83, -21.55, 240.13),
                vector4(-6198.8, -3758.1, -22.52, 280.73),
                vector4(-6194.96, -3785.1, -21.17, 289.24),
                vector4(-6213.73, -3792.35, -17.44, 313.65),
                vector4(-6224.57, -3799.54, -17.24, 318.28),
            },
        },
    },
}