Config.debug = false                              --Enable debug mode for development and troubleshooting

Config.blipSprite = "blip_shop_tailor"            --Blip icon for clothing stores on the map

Config.blipSpriteWardrobes = "blip_shop_wardrobe" --Blip icon for wardrobes on the map

Config.displayOutfitId = false                    --Display outfit database ID in the outfit menu

Config.percentResell = 0.33                       --Resell price percentage of original price, set to 0 to disable reselling

Config.canResellInWardrobe = false                --Allow players to resell clothes from the wardrobe menu

Config.openStoreNewCharacter = true               --Automatically open clothing store for new characters

Config.enablePrompt = true                        --Display interaction prompts near stores and wardrobes

Config.extraLightIntensity = 10.0                 --Additional light intensity in store for better character visibility

Config.offsetRoutingBucket = 0                    --Offset added to player server ID for instancing calculation

Config.enableClothesManagement = true             --Enable the clothes manager menu for adjusting wearable states

Config.maxFailLoadClothesData = 5                 --Maximum retry attempts when loading player clothes data fails

Config.canEquipOutfit = true                      --Allow players to directly equip saved outfits

Config.useGameClotheNames = true                  --Use in-game clothing names if available instead of Number X

Config.keys = {                                   --Keybinds for store interactions (see https://github.com/femga/rdr3_discoveries/tree/master/Controls)
	enter = "INPUT_FRONTEND_ACCEPT",
	turn = "INPUT_AIM_IN_AIR",
	delete = "INPUT_FRONTEND_RS",
	resell = "INPUT_CONTEXT_X",
	zoom = "INPUT_SPECIAL_ABILITY_SECONDARY",
	spin = "INPUT_CONTEXT_ACTION",
	buyOutfit = "INPUT_LOOT3",
	switchPrice = "INPUT_OPEN_SATCHEL_MENU",
	fixBodyParts = "INPUT_INTERACT_ANIMAL"
}

Config.keysDisabled = { --Controls disabled while in the clothing store menu
	`INPUT_MOVE_UD`,
	`INPUT_MOVE_LR`,
	`INPUT_MOVE_LB`,
	`INPUT_COVER`,
	`INPUT_ATTACK`,
	`INPUT_NEXT_WEAPON`,
	`INPUT_PREV_WEAPON`,
}
