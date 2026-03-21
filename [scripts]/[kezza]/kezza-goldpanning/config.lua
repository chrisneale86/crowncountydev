Config = Config or {}

Config.Framework = 'VORP' -- RSG or VORP

-- Gold Panning Settings
Config.GoldFlakeChance = 15        -- How high percentage chance you are to goldpan gold at a non hotspot
Config.HotspotChance = 50          -- How high a chance to goldpan gold at a hotspot zone

-- Items
Config.Goldpan = 'goldpan'         -- Goldpan item
Config.GoldpanItem = 'goldnugget' -- Item given when panning gold
Config.CommonItems = 'rock'        -- Rock item used for washing

-- Rock Washing - Random items you can get from washing rocks
Config.WashingItems = {
    'sapphire_uncut',
    'ruby_uncut',
    'opal_uncut',
    'copper',
    'coal',
    'iron',
    'nitrite',
    'clay',
}

-- Hotspot Zones - Better gold panning locations
Config.Hotspots = {
    {
        label = 'Kamassa River',
        id = 'kamassa_river',
        blip = vector3(2280.0, 250.0, 48.0),  -- Blip location (center of zone)
        showBlip = false,                       -- Set to false to hide blip
        coords = {
            vector2(2302.1120605468, 191.99772644042),
            vector2(2258.7827148438, 244.7160949707),
            vector2(2235.6157226562, 308.85150146484),
            vector2(2267.6584472656, 320.87823486328),
            vector2(2306.5317382812, 262.37814331054),
            vector2(2333.0869140625, 213.49571228028)
        },
        minZ = 43.875305175782,
        maxZ = 53.66160583496,
    },
    {
        label = 'Window Rock River',
        id = 'window_rock',
        blip = vector3(-70.0, 1450.0, 112.0),
        showBlip = false,
        coords = {
            vector2(-113.18208312988, 1443.2928466796),
            vector2(-87.23462677002, 1457.6431884766),
            vector2(-75.73860168457, 1481.8635253906),
            vector2(-38.384033203125, 1474.3354492188),
            vector2(-57.992519378662, 1432.5572509766),
            vector2(-84.852905273438, 1411.8271484375)
        },
        minZ = 108.87984466552,
        maxZ = 118.41208648682,
    },
    {
        label = 'Lower Montana River',
        id = 'lower_montana',
        blip = vector3(-2150.0, -2055.0, 50.0),
        showBlip = false,
        coords = {
            vector2(-2165.4360351562, -2037.6072998046),
            vector2(-2135.3989257812, -2051.5485839844),
            vector2(-2127.9128417968, -2060.2097167968),
            vector2(-2137.5129394532, -2072.5593261718),
            vector2(-2156.8508300782, -2061.6994628906),
            vector2(-2173.6037597656, -2054.7192382812)
        },
        minZ = 45.603881835938,
        maxZ = 55.94333267212,
    },
}