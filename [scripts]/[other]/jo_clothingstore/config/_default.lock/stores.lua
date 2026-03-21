Config.stores = {                                         --List of clothing store locations
	{                                                       --Valentine
		storeName = "Clothing store",                         -- the blip name
		book = vector4(-326.17, 773.757, 117.5, -170.0),      --Position and heading of the catalog book prop
		fittingRoom = vector4(-329.31, 775.11, 120.63, 294.79), --Position where player stands when trying clothes
		pedCoords = vector4(-325.67, 772.63, 116.44, 11.3),   --Position and heading of the tailor NPC
		pedModel = `S_M_M_Tailor_01`,                         --Model hash of the tailor NPC
		blip = true,                                          --Show this store on the map
		distancePrompt = 2.0,                                 --Distance in meters to show interaction prompt
		needInstance = true,                                  --Teleport player to separate routing bucket
		useOutfitMenu = true,                                 --Enable outfit management in this store
		useNPCClothesMenu = true,                             -- Requires the NPC Clothe Add-on
		useClassicClothesMenu = true,
	},
	{ --Saint Denis
		storeName = "Clothing store",
		book = vector4(2554.619, -1167.834, 53.746, 0.0),
		fittingRoom = vector4(2555.89, -1161.23, 52.7, 12.85),
		pedCoords = vector4(2554.6, -1166.83, 52.7, 180.95),
		pedModel = `S_M_M_Tailor_01`,
		blip = true,
		distancePrompt = 2.0,
		needInstance = true,
		useOutfitMenu = true,
		useNPCClothesMenu = true,
		useClassicClothesMenu = true,
	},
	{ --Blackwater
		storeName = "Clothing store",
		book = vector4(-761.98, -1292.61, 43.885, 180.0),
		fittingRoom = vector4(-767.74, -1295.17, 42.84, 304.87),
		pedCoords = vector4(-761.75, -1293.92, 42.84, 357.16),
		pedModel = `S_M_M_Tailor_01`,
		blip = true,
		distancePrompt = 2.0,
		needInstance = true,
		useOutfitMenu = true,
		useNPCClothesMenu = true,
		useClassicClothesMenu = true,
	},
	{ --Tumbleweed
		storeName = "Clothing store",
		book = vector4(-5486.660, -2936.75, -0.346, -144.0),
		fittingRoom = vector4(-5479.77, -2933.07, -1.36, 181.29),
		pedCoords = false,
		blip = true,
		distancePrompt = 2.0,
		needInstance = true,
		useOutfitMenu = true,
		useNPCClothesMenu = true,
		useClassicClothesMenu = true,
		},
	{ --sterwberry
		storeName = "Clothing store",
		book = vector4(-1817.41, -371.69, 163.19, 190.14),
		fittingRoom =vector4(-1817.86, -368.21, 162.35, 191.55),
		pedCoords = false,
		blip = true,
		distancePrompt = 2.0,
		needInstance = true,
		useOutfitMenu = true,
		useNPCClothesMenu = true,
		useClassicClothesMenu = true,
	}
}
