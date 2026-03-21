Config.clothesInItem = false              --Give purchased clothes as inventory items instead of saving to database

Config.removeClothesItemAfterUsed = false --Remove clothing item from inventory after equipping

Config.clothesItem = {                    --Inventory item names for each clothing category, only used if Config.clothesInItem = true
  gloves = "gloves",
  eyewear = "eyewear",
  dresses = "dresses",
  shirts_full = "shirts_full",
  armor = "armor",
  gauntlets = "gauntlets",
  suspenders = "suspenders",
  neckties = "neckties",
  neckwear = "neckwear",
  vests = "vests",
  coats = "coats",
  coats_closed = "coats",
  cloaks = "cloaks",
  ponchos = "ponchos",
  masks = "masks",
  masks_large = "masks",
  hats = "hats",
  accessories = "accessories",
  loadouts = "loadouts",
  satchels = "satchels",
  jewelry_rings_right = "jewelry",
  jewelry_rings_left = "jewelry",
  jewelry_bracelets = "jewelry",
  aprons = "aprons",
  pants = "pants",
  skirts = "skirts",
  belts = "belts",
  belt_buckles = "belt_buckles",
  gunbelts = "gunbelts",
  holsters_left = "holsters",
  boots = "boots",
  boot_accessories = "boot_accessories",
  spats = "spats",
  chaps = "chaps",
  badges = "badges",
  gunbelt_accs = "gunbelt_accs",
  hair_accessories = "hair_accessories"
}

Config.outfitInItem = true               --Allow purchasing complete outfits as a single inventory item
Config.removeOutfitItemAfterUsed = false --Remove outfit item from inventory after equipping
Config.outfitItem = "outfit"             --Inventory item name for outfit items
Config.outfitItemPrice = {               -- Define the price of outfit item
  price = { money = 10 },
  multiplyByPiece = true                 -- The final price will be the <number of clothes> x <price>
}
