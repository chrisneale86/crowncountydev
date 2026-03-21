Config = {}
Config.Webhook = "https://discord.com/api/webhooks/1482300528393453572/LsXGLpLwuoVbfKTkUfpwaHEdNdVpgHKgcYGF8RHWPbr8NHEcf-R1exSNpd8m0QSL0R0n" 
Config.ReviveTime = 7
Config.WeaponClearDelay = 500

Config.KillReward = {
    enabled = true,
    money = 0,
    gold = 0,
    items = { 
        { name = "consumable_water", count = 2 },
        { name = "herbal_tonic", count = 2 },
        { name = "Bandage", count = 2 }
    }
}

Config.StartNPC = {
    model = "G_M_M_UniBanditos_01",
    coords = vector4(-217.91, 666.35, 112.36, 139.26),
    blip = "blip_honor_bad"
}

Config.Maps = {
    [1] = {
        name = "1vs1 Arena",
        coords = vector4(-1232.17, -2984.19, 87.32, 116.18),
        radius = 100.0,
        teamSize = 1, -- 1vs1 = 2
        revivePoints = {
            vector4(-1258.87, -2970.0, 87.8, 242.03),
            vector4(-1236.88, -2984.42, 87.38, 200.81),
            vector4(-1241.24, -2974.77, 87.4, 106.0),
            vector4(-1254.05, -3023.83, 88.89, 20.35),
            vector4(-1259.25, -3017.66, 89.02, 355.4),
            
        },
        endNPC = {
            model = "G_M_M_UniBanditos_01",
            coords = vector4(-1272.77, -2963.56, 87.18, 222.06)
        }
    },
    [2] = {
        name = "2vs2 Arena",
        coords = vector4(-1192.23, -2932.37, 90.57, 186.78),
        radius = 100.0,
        teamSize = 2, -- 2vs2 = 4 
        revivePoints = {
            vector4(-1224.87, -2952.28, 88.06, 175.68),
            vector4(-1188.88, -2963.89, 90.53, 15.67),
            vector4(-1178.85, -2961.4, 90.91, 66.18),
            vector4(-1238.82, -2954.84, 87.67, 268.78),
        },
        endNPC = {
            model = "G_M_M_UniBanditos_01",
            coords = vector4(-1167.02, -2940.02, 91.34, 114.11)
        }
    },
    [3] = {
        name = "3vs3 Arena",
        coords = vector4(-1185.71, -3085.14, 86.46, 82.81),
        radius = 100.0,
        teamSize = 3, -- 3vs3 = 6 
        revivePoints = {
            vector4(-1189.82, -3094.36, 86.61, 87.85),
            vector4(-1238.68, -3084.9, 88.23, 204.15),
            vector4(-1223.31, -3085.58, 87.25, 157.15),
            vector4(-1233.37, -3045.0, 88.0, 310.62),
            vector4(-1249.53, -3055.04, 88.92, 190.24),
        },
        endNPC = {
            model = "G_M_M_UniBanditos_01",
            coords = vector4(-1187.83, -3076.27, 85.51, 82.91)
        }
    },
    [4] = {
        name = "4vs4 Arena",
         coords = vector4(-1181.11, -3078.57, 86.38, 354.58),
        radius = 100.0,
        teamSize = 4, -- 4vs4 = 8
        revivePoints = {
            vector4(-1183.01, -3055.73, 86.75, 293.71),
            vector4(-1183.09, -3068.17, 86.45, 19.63),
            vector4(-1134.66, -3073.62, 87.16, 123.5),
            vector4(-1138.4, -3052.41, 88.17, 55.57),
            vector4(-1150.13, -3015.56, 89.92, 162.97),
            vector4(-1175.19, -3020.86, 88.62, 199.96),
        },
        endNPC = {
            model = "G_M_M_UniBanditos_01",
            coords = vector4(-1180.74, -3080.54, 85.38, 20.03)
        }
    },
    [5] = {
        name = "5vs5 Arena",
        coords = vector4(-1193.85, -2993.26, 87.91, 277.06),
        radius = 100.0,
        teamSize = 5, -- 5vs5 = 10
        revivePoints = {
            vector4(-1159.05, -2981.82, 91.49, 109.69),
            vector4(-1170.29, -2969.39, 91.28, 173.54),
            vector4(-1194.41, -2973.58, 88.64, 209.1),
            vector4(-1218.83, -3003.33, 87.27, 272.53),
            vector4(-1243.57, -3031.33, 88.45, 298.72),
            vector4(-1183.98, -2990.56, 89.1, 123.95),

        },
        endNPC = {
            model = "G_M_M_UniBanditos_01",
            coords = vector4(-1219.15, -3011.62, 86.31, 121.27)
        }
    }
}
