Config.prices = { --Default price for each clothing category, use -1 to disable a category
  coats_closed = 5,
  chaps = 4,
  spats = 5,
  ponchos = 4.25,
  holsters_left = 3.12,
  masks = 10,
  neckwear = 2.15,
  armor = 20,
  jewelry_rings_left = 1.25,
  jewelry_rings_right = 1.25,
  boot_accessories = 3.55,
  gloves = 4.25,
  badges = 2,
  gunbelts = 5,
  loadouts = 6.7,
  vests = 5,
  shirts_full = 5,
  pants = 5,
  suspenders = 1.5,
  gunbelt_accs = 1,
  hats = 3.5,
  cloaks = 5,
  coats = 5,
  belts = 2,
  gauntlets = 3,
  eyewear = 6,
  boots = 5,
  jewelry_bracelets = 2,
  satchels = 10,
  accessories = 2,
  neckties = 2,
  skirts = 5,
  belt_buckles = 1,
  dresses = 5
}

Config.modelPrices = {}           --Override prices for specific clothing models

Config.modelPrices["male"] = {}   --Male-specific model price overrides

Config.modelPrices["female"] = {} --Female-specific model price overrides
for category in pairs(Config.prices) do
  Config.modelPrices["male"][category] = {}
  Config.modelPrices["female"][category] = {}
end

--Syntax: Config.modelPrices[<sex>][<category>][<model_index>] = <price>
--Price can be: number, {money=X, gold=Y}, {money=X, item="item_name"}, or complex with operator="or"
Config.modelPrices["male"]["hats"][2] = Config.prices.hats * 1.25  --Hat model 2 costs 125% of base price

Config.modelPrices["male"]["hats"][3] = { money = 2.75, gold = 2 } --Hat model 3 costs money OR gold

Config.modelPrices["male"]["hats"][4] = 5.5                        --Hat model 4 fixed price

Config.modelPrices["male"]["hats"][5] = 4.25                       --Hat model 5 fixed price

Config.modelPrices["male"]["hats"][6] = Config.prices.hats * 2     --Hat model 6 costs 200% of base price

Config.modelPrices["female"]["skirts"][6] = Config.prices.hats * 2 --Skirt model 6 custom price

Config.modelPrices["female"]["hats"][2] = -1                       --Hat model 2 disabled for females

--Example of complex pricing with multiple payment options using "or" operator
Config.modelPrices["male"]["accessories"][1] = {
  operator = "or",                                --Player can choose between these payment options
  { money = 5, item = "water" },                  --Option 1: $5 + 1 acid item
  { gold = 5 },                                   --Option 2: 5 gold
  { money = 2, { item = "water", quantity = 3 } } --Option 3: $2 + 3 acid items
}

Config.modelPrices.female.pants[2] = 20
