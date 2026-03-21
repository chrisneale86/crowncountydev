-- these shops are only templates ! items inside here and shop locations are up to you to manage, add and set up as per your server needs ! 
-- not all items in these shops will work on all servers they are meant to be configured as per your needs  

-- you can add weapons to shops now ! by using a line like this 
--{name = "WEAPON_SHOTGUN_SAWEDOFF", label = "Sawed off", price = "15",type = "item_weapon"},
-- shops can sell weapons but they cannot buy weapons ! 

Config.normalstores = {  -- delete everything inside here if you dont want normal shops 
    {	   
        Pos = {x = -785.4955, y = -1323.8416, z = 43.8843}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Blackwater general store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "consumable_water", label = "water", price = "2.00",type = "item_standard"}, -- change label of items shown ,
        {name = "consumable_coffee", label = "Coffee", price = "2.00",type = "item_standard"},
        {name = "rollingpaper", label = "Rolling paper", price = "1.00",type = "item_standard"},
        {name = "consumable_cupcake", label = "Cupcake", price = "2.00",type = "item_standard"},
        {name = "campfire", label = "Campfire", price = "15.00",type = "item_standard"},
        {name = "flag", label = "Camp Flag", price = "10000.00",type = "item_standard"},
        {name = "huntinglicense", label = "Hunting License ", price = "1000.00",type = "item_standard"},
        {name = "antipoison2", label = "Anti Snake Poison", price = "20.00",type = "item_standard"},
        {name = "Bandage", label = "Bandage", price = "20.00",type = "item_standard"},
        {name = "whisky", label = "whisky", price = "5.00",type = "item_standard"},

        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

        {	   
        Pos = {x = -1791.1117, y = -386.9077, z = 160.3348}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Strawberry general store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "consumable_water", label = "water", price = "2.00",type = "item_standard"}, -- change label of items shown ,
        {name = "consumable_coffee", label = "Coffee", price = "2.00",type = "item_standard"},
        {name = "rollingpaper", label = "Rolling paper", price = "1.00",type = "item_standard"},
        {name = "consumable_cupcake", label = "Cupcake", price = "2.00",type = "item_standard"},
        {name = "campfire", label = "Campfire", price = "15.00",type = "item_standard"},
        {name = "flag", label = "Camp Flag", price = "10000.00",type = "item_standard"},
        {name = "huntinglicense", label = "Hunting License ", price = "1000.00",type = "item_standard"},
        {name = "antipoison2", label = "Anti Snake Poison", price = "20.00",type = "item_standard"},
        {name = "Bandage", label = "Bandage", price = "20.00",type = "item_standard"},
        {name = "whisky", label = "whisky", price = "5.00",type = "item_standard"},
        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

            {	   
        Pos = {x = -322.3945, y = 804.3936, z = 117.8817}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Valentine general store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "consumable_water", label = "water", price = "2.00",type = "item_standard"}, -- change label of items shown ,
        {name = "consumable_coffee", label = "Coffee", price = "2.00",type = "item_standard"},
        {name = "rollingpaper", label = "Rolling paper", price = "1.00",type = "item_standard"},
        {name = "consumable_cupcake", label = "Cupcake", price = "2.00",type = "item_standard"},
        {name = "campfire", label = "Campfire", price = "15.00",type = "item_standard"},
        {name = "flag", label = "Camp Flag", price = "10000.00",type = "item_standard"},
        {name = "huntinglicense", label = "Hunting License ", price = "1000.00",type = "item_standard"},
        {name = "antipoison2", label = "Anti Snake Poison", price = "20.00",type = "item_standard"},
        {name = "Bandage", label = "Bandage", price = "20.00",type = "item_standard"},
         {name = "whisky", label = "whisky", price = "5.00",type = "item_standard"},
        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

            {	   
        Pos = {x = 1328.4381, y = -1292.9135, z = 77.0223}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Rhodes general store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "consumable_water", label = "water", price = "2.00",type = "item_standard"}, -- change label of items shown ,
        {name = "consumable_coffee", label = "Coffee", price = "2.00",type = "item_standard"},
        {name = "rollingpaper", label = "Rolling paper", price = "1.00",type = "item_standard"},
        {name = "consumable_cupcake", label = "Cupcake", price = "2.00",type = "item_standard"},
        {name = "campfire", label = "Campfire", price = "15.00",type = "item_standard"},
        {name = "flag", label = "Camp Flag", price = "10000.00",type = "item_standard"},
        {name = "huntinglicense", label = "Hunting License ", price = "1000.00",type = "item_standard"},
        {name = "antipoison2", label = "Anti Snake Poison", price = "20.00",type = "item_standard"},
        {name = "Bandage", label = "Bandage", price = "20.00",type = "item_standard"},
         {name = "whisky", label = "whisky", price = "5.00",type = "item_standard"},
        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

            {	   
        Pos = {x = 2826.0415, y = -1318.5862, z = 46.7557}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Saint Denis general store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "consumable_water", label = "water", price = "2.00",type = "item_standard"}, -- change label of items shown ,
        {name = "consumable_coffee", label = "Coffee", price = "2.00",type = "item_standard"},
        {name = "rollingpaper", label = "Rolling paper", price = "1.00",type = "item_standard"},
        {name = "consumable_cupcake", label = "Cupcake", price = "2.00",type = "item_standard"},
        {name = "campfire", label = "Campfire", price = "15.00",type = "item_standard"},
        {name = "flag", label = "Camp Flag", price = "10000.00",type = "item_standard"},
        {name = "huntinglicense", label = "Hunting License ", price = "1000.00",type = "item_standard"},
        {name = "antipoison2", label = "Anti Snake Poison", price = "20.00",type = "item_standard"},
         {name = "Bandage", label = "Bandage", price = "20.00",type = "item_standard"},
        {name = "whisky", label = "whisky", price = "5.00",type = "item_standard"},
        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

            {	   
        Pos = {x = 2926.41, y = 1364.77, z = 45.19}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Annesburg general store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "consumable_water", label = "water", price = "2.00",type = "item_standard"}, -- change label of items shown ,
        {name = "consumable_coffee", label = "Coffee", price = "2.00",type = "item_standard"},
        {name = "rollingpaper", label = "Rolling paper", price = "1.00",type = "item_standard"},
        {name = "consumable_cupcake", label = "Cupcake", price = "2.00",type = "item_standard"},
        {name = "campfire", label = "Campfire", price = "15.00",type = "item_standard"},
        {name = "flag", label = "Camp Flag", price = "10000.00",type = "item_standard"},
        {name = "huntinglicense", label = "Hunting License ", price = "1000.00",type = "item_standard"},
        {name = "antipoison2", label = "Anti Snake Poison", price = "20.00",type = "item_standard"},
        {name = "Bandage", label = "Bandage", price = "20.00",type = "item_standard"},
        {name = "whisky", label = "whisky", price = "5.00",type = "item_standard"},
        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

            {	   
        Pos = {x = -3685.6235, y = -2622.7837, z = -13.4312}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Armadillo general store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "consumable_water", label = "water", price = "2.00",type = "item_standard"}, -- change label of items shown ,
        {name = "consumable_coffee", label = "Coffee", price = "2.00",type = "item_standard"},
        {name = "rollingpaper", label = "Rolling paper", price = "1.00",type = "item_standard"},
        {name = "consumable_cupcake", label = "Cupcake", price = "2.00",type = "item_standard"},
        {name = "campfire", label = "Campfire", price = "15.00",type = "item_standard"},
        {name = "flag", label = "Camp Flag", price = "10000.00",type = "item_standard"},
        {name = "huntinglicense", label = "Hunting License ", price = "1000.00",type = "item_standard"},
        {name = "antipoison2", label = "Anti Snake Poison", price = "20.00",type = "item_standard"},
        {name = "Bandage", label = "Bandage", price = "20.00",type = "item_standard"},
        {name = "whisky", label = "whisky", price = "5.00",type = "item_standard"},
        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

                {	   
        Pos = {x = -5487.7793, y = -2938.3381, z = -0.3880}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Tumbleweed general store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "consumable_water", label = "water", price = "2.00",type = "item_standard"}, -- change label of items shown ,
        {name = "consumable_coffee", label = "Coffee", price = "2.00",type = "item_standard"},
        {name = "rollingpaper", label = "Rolling paper", price = "1.00",type = "item_standard"},
        {name = "consumable_cupcake", label = "Cupcake", price = "2.00",type = "item_standard"},
        {name = "campfire", label = "Campfire", price = "15.00",type = "item_standard"},
        {name = "flag", label = "Camp Flag", price = "10000.00",type = "item_standard"},
        {name = "huntinglicense", label = "Hunting License ", price = "1000.00",type = "item_standard"},
        {name = "antipoison2", label = "Anti Snake Poison", price = "20.00",type = "item_standard"},
         {name = "Bandage", label = "Bandage", price = "20.00",type = "item_standard"},
         {name = "whisky", label = "whisky", price = "5.00",type = "item_standard"},

        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

     --[[           {	   
        Pos = {x = -828.6207, y = -1265.8273, z = 43.5771}, -- location of shop    
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Blackwater gunstore gov', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "ammorepeaternormal", label = "Repeater Ammo Normal", price = "2.00",type = "item_standard"}, -- change label of items shown 
        {name = "ammorevolvernormal", label = "Revolver Ammo Normal", price = "2.00",type = "item_standard"},
        {name = "ammoriflenormal", label = "Rifle Ammo Normal", price = "2.00",type = "item_standard"},
        {name = "ammoarrownormal", label = "Arrow Normal", price = "2.00",type = "item_standard"},
        {name = "ammoarrowsmallgame", label = "Arrow Small Game", price = "2.00",type = "item_standard"},
        {name = "ammovarmint", label = "Varmint ammo", price = "2.00",type = "item_standard"},
        {name = "WEAPON_MELEE_KNIFE", label = "Knife", price = "2",type = "item_weapon"},
        {name = "WEAPON_BOW", label = "Bow", price = "7",type = "item_weapon"},
        {name = "WEAPON_RIFLE_VARMINT", label = "Varmint Rifle", price = "15",type = "item_weapon"},
        {name = "WEAPON_REPEATER_CARBINE", label = "Carbine Repeater", price = "20",type = "item_weapon"},
        {name = "WEAPON_REVOLVER_CATTLEMAN", label = "Cattleman Revolver", price = "10",type = "item_weapon"},
        {name = "WEAPON_LASSO", label = "Lasso", price = "20",type = "item_weapon"},
        {name = "WEAPON_KIT_BINOCULARS", label = "Binoculars", price = "3",type = "item_weapon"},
        {name = "WEAPON_FISHINGROD", label = "Fishing Rod", price = "5",type = "item_weapon"},
        {name = "WEAPON_MELEE_LANTERN", label = "Lantern", price = "2",type = "item_weapon"},
        
    
        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

                    {	   
        Pos = {x=-279.52, y=783.21, z=119.52}, -- location of shop    
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Valentine gunstore gov', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "ammorepeaternormal", label = "Repeater Ammo Normal", price = "5.00",type = "item_standard"}, -- change label of items shown 
        {name = "ammorevolvernormal", label = "Revolver Ammo Normal", price = "5.00",type = "item_standard"},
        {name = "ammoriflenormal", label = "Rifle Ammo Normal", price = "5.00",type = "item_standard"},
        {name = "ammoarrownormal", label = "Arrow Normal", price = "5.00",type = "item_standard"},
        {name = "ammoarrowsmallgame", label = "Arrow Small Game", price = "5.00",type = "item_standard"},
        {name = "ammovarmint", label = "Varmint ammo", price = "5.00",type = "item_standard"},
        {name = "WEAPON_MELEE_KNIFE", label = "Knife", price = "2",type = "item_weapon"},
        {name = "WEAPON_BOW", label = "Bow", price = "7",type = "item_weapon"},
        {name = "WEAPON_RIFLE_VARMINT", label = "Varmint Rifle", price = "15",type = "item_weapon"},
        {name = "WEAPON_REPEATER_CARBINE", label = "Carbine Repeater", price = "50",type = "item_weapon"},
        {name = "WEAPON_REVOLVER_CATTLEMAN", label = "Cattleman Revolver", price = "10",type = "item_weapon"},
        {name = "WEAPON_LASSO", label = "Lasso", price = "20",type = "item_weapon"},
        {name = "WEAPON_KIT_BINOCULARS", label = "Binoculars", price = "3",type = "item_weapon"},
        {name = "WEAPON_FISHINGROD", label = "Fishing Rod", price = "5",type = "item_weapon"},
        {name = "WEAPON_MELEE_LANTERN", label = "Lantern", price = "2",type = "item_weapon"},
        
    
        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

                    {	   
        Pos = {x=-1840.9756, y=-415.7417, z=161.3111}, -- location of shop      
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Strawberry gunstore gov', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "ammorepeaternormal", label = "Repeater Ammo Normal", price = "5.00",type = "item_standard"}, -- change label of items shown 
        {name = "ammorevolvernormal", label = "Revolver Ammo Normal", price = "5.00",type = "item_standard"},
        {name = "ammoriflenormal", label = "Rifle Ammo Normal", price = "5.00",type = "item_standard"},
        {name = "ammoarrownormal", label = "Arrow Normal", price = "5.00",type = "item_standard"},
        {name = "ammoarrowsmallgame", label = "Arrow Small Game", price = "5.00",type = "item_standard"},
        {name = "ammovarmint", label = "Varmint ammo", price = "5.00",type = "item_standard"},
        {name = "WEAPON_MELEE_KNIFE", label = "Knife", price = "2",type = "item_weapon"},
        {name = "WEAPON_BOW", label = "Bow", price = "7",type = "item_weapon"},
        {name = "WEAPON_RIFLE_VARMINT", label = "Varmint Rifle", price = "15",type = "item_weapon"},
        {name = "WEAPON_REPEATER_CARBINE", label = "Carbine Repeater", price = "50",type = "item_weapon"},
        {name = "WEAPON_REVOLVER_CATTLEMAN", label = "Cattleman Revolver", price = "10",type = "item_weapon"},
        {name = "WEAPON_LASSO", label = "Lasso", price = "20",type = "item_weapon"},
        {name = "WEAPON_KIT_BINOCULARS", label = "Binoculars", price = "3",type = "item_weapon"},
        {name = "WEAPON_FISHINGROD", label = "Fishing Rod", price = "5",type = "item_weapon"},
        {name = "WEAPON_MELEE_LANTERN", label = "Lantern", price = "2",type = "item_weapon"},
        
    
        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

                    {	   
        Pos = {x=1328.54, y=-1317.83, z=77.94}, -- location of shop    
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Rhodes gunstore gov', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "ammorepeaternormal", label = "Repeater Ammo Normal", price = "5.00",type = "item_standard"}, -- change label of items shown 
        {name = "ammorevolvernormal", label = "Revolver Ammo Normal", price = "5.00",type = "item_standard"},
        {name = "ammoriflenormal", label = "Rifle Ammo Normal", price = "5.00",type = "item_standard"},
        {name = "ammoarrownormal", label = "Arrow Normal", price = "5.00",type = "item_standard"},
        {name = "ammoarrowsmallgame", label = "Arrow Small Game", price = "5.00",type = "item_standard"},
        {name = "ammovarmint", label = "Varmint ammo", price = "5.00",type = "item_standard"},
        {name = "WEAPON_MELEE_KNIFE", label = "Knife", price = "2",type = "item_weapon"},
        {name = "WEAPON_BOW", label = "Bow", price = "7",type = "item_weapon"},
        {name = "WEAPON_RIFLE_VARMINT", label = "Varmint Rifle", price = "15",type = "item_weapon"},
        {name = "WEAPON_REPEATER_CARBINE", label = "Carbine Repeater", price = "50",type = "item_weapon"},
        {name = "WEAPON_REVOLVER_CATTLEMAN", label = "Cattleman Revolver", price = "10",type = "item_weapon"},
        {name = "WEAPON_LASSO", label = "Lasso", price = "20",type = "item_weapon"},
        {name = "WEAPON_KIT_BINOCULARS", label = "Binoculars", price = "3",type = "item_weapon"},
        {name = "WEAPON_FISHINGROD", label = "Fishing Rod", price = "5",type = "item_weapon"},
        {name = "WEAPON_MELEE_LANTERN", label = "Lantern", price = "2",type = "item_weapon"},
    
        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

                    {	   
        Pos = {x=2715.53, y=-1281.09, z=49.63}, -- location of shop    
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'SaintD gunstore gov', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "ammorepeaternormal", label = "Repeater Ammo Normal", price = "5.00",type = "item_standard"}, -- change label of items shown 
        {name = "ammorevolvernormal", label = "Revolver Ammo Normal", price = "5.00",type = "item_standard"},
        {name = "ammoriflenormal", label = "Rifle Ammo Normal", price = "5.00",type = "item_standard"},
        {name = "ammoarrownormal", label = "Arrow Normal", price = "5.00",type = "item_standard"},
        {name = "ammoarrowsmallgame", label = "Arrow Small Game", price = "5.00",type = "item_standard"},
        {name = "ammovarmint", label = "Varmint ammo", price = "5.00",type = "item_standard"},
        {name = "WEAPON_MELEE_KNIFE", label = "Knife", price = "2",type = "item_weapon"},
        {name = "WEAPON_BOW", label = "Bow", price = "7",type = "item_weapon"},
        {name = "WEAPON_RIFLE_VARMINT", label = "Varmint Rifle", price = "15",type = "item_weapon"},
        {name = "WEAPON_REPEATER_CARBINE", label = "Carbine Repeater", price = "50",type = "item_weapon"},
        {name = "WEAPON_REVOLVER_CATTLEMAN", label = "Cattleman Revolver", price = "10",type = "item_weapon"},
        {name = "WEAPON_LASSO", label = "Lasso", price = "20",type = "item_weapon"},
        {name = "WEAPON_KIT_BINOCULARS", label = "Binoculars", price = "3",type = "item_weapon"},
        {name = "WEAPON_FISHINGROD", label = "Fishing Rod", price = "5",type = "item_weapon"},
        {name = "WEAPON_MELEE_LANTERN", label = "Lantern", price = "2",type = "item_weapon"},
        
    
        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

                    {	   
        Pos = {x=2944.70, y=1318.51, z=44.82}, -- location of shop    
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Annesburg gunstore gov', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "ammorepeaternormal", label = "Repeater Ammo Normal", price = "5.00",type = "item_standard"}, -- change label of items shown 
        {name = "ammorevolvernormal", label = "Revolver Ammo Normal", price = "5.00",type = "item_standard"},
        {name = "ammoriflenormal", label = "Rifle Ammo Normal", price = "5.00",type = "item_standard"},
        {name = "ammoarrownormal", label = "Arrow Normal", price = "5.00",type = "item_standard"},
        {name = "ammoarrowsmallgame", label = "Arrow Small Game", price = "5.00",type = "item_standard"},
        {name = "ammovarmint", label = "Varmint ammo", price = "5.00",type = "item_standard"},
        {name = "WEAPON_MELEE_KNIFE", label = "Knife", price = "2",type = "item_weapon"},
        {name = "WEAPON_BOW", label = "Bow", price = "7",type = "item_weapon"},
        {name = "WEAPON_RIFLE_VARMINT", label = "Varmint Rifle", price = "15",type = "item_weapon"},
        {name = "WEAPON_REPEATER_CARBINE", label = "Carbine Repeater", price = "50",type = "item_weapon"},
        {name = "WEAPON_REVOLVER_CATTLEMAN", label = "Cattleman Revolver", price = "10",type = "item_weapon"},
        {name = "WEAPON_LASSO", label = "Lasso", price = "20",type = "item_weapon"},
        {name = "WEAPON_KIT_BINOCULARS", label = "Binoculars", price = "3",type = "item_weapon"},
        {name = "WEAPON_FISHINGROD", label = "Fishing Rod", price = "5",type = "item_weapon"},
        {name = "WEAPON_MELEE_LANTERN", label = "Lantern", price = "2",type = "item_weapon"},
        
    
        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

                    {	   
        Pos = {x=-5508.61,y=-2961.96,z=-0.64}, -- location of shop    
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Tumbleweed gunstore gov', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "ammorepeaternormal", label = "Repeater Ammo Normal", price = "5.00",type = "item_standard"}, -- change label of items shown 
        {name = "ammorevolvernormal", label = "Revolver Ammo Normal", price = "5.00",type = "item_standard"},
        {name = "ammoriflenormal", label = "Rifle Ammo Normal", price = "5.00",type = "item_standard"},
        {name = "ammoarrownormal", label = "Arrow Normal", price = "5.00",type = "item_standard"},
        {name = "ammoarrowsmallgame", label = "Arrow Small Game", price = "5.00",type = "item_standard"},
        {name = "ammovarmint", label = "Varmint ammo", price = "5.00",type = "item_standard"},
        {name = "WEAPON_MELEE_KNIFE", label = "Knife", price = "2",type = "item_weapon"},
        {name = "WEAPON_BOW", label = "Bow", price = "7",type = "item_weapon"},
        {name = "WEAPON_RIFLE_VARMINT", label = "Varmint Rifle", price = "15",type = "item_weapon"},
        {name = "WEAPON_REPEATER_CARBINE", label = "Carbine Repeater", price = "50",type = "item_weapon"},
        {name = "WEAPON_REVOLVER_CATTLEMAN", label = "Cattleman Revolver", price = "10",type = "item_weapon"},
        {name = "WEAPON_LASSO", label = "Lasso", price = "20",type = "item_weapon"},
        {name = "WEAPON_KIT_BINOCULARS", label = "Binoculars", price = "3",type = "item_weapon"},
        {name = "WEAPON_FISHINGROD", label = "Fishing Rod", price = "5",type = "item_weapon"},
        {name = "WEAPON_MELEE_LANTERN", label = "Lantern", price = "2",type = "item_weapon"},
    
        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

                    {	   
        Pos = {{x = 2944.6, y = 1323.16, z = 44.82}}, -- location of shop    
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Armadillo gunstore gov', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "ammorepeaternormal", label = "Repeater Ammo Normal", price = "5.00",type = "item_standard"}, -- change label of items shown 
        {name = "ammorevolvernormal", label = "Revolver Ammo Normal", price = "5.00",type = "item_standard"},
        {name = "ammoriflenormal", label = "Rifle Ammo Normal", price = "5.00",type = "item_standard"},
        {name = "ammoarrownormal", label = "Arrow Normal", price = "5.00",type = "item_standard"},
        {name = "ammoarrowsmallgame", label = "Arrow Small Game", price = "5.00",type = "item_standard"},
        {name = "ammovarmint", label = "Varmint ammo", price = "5.00",type = "item_standard"},
        {name = "WEAPON_MELEE_KNIFE", label = "Knife", price = "2",type = "item_weapon"},
        {name = "WEAPON_BOW", label = "Bow", price = "7",type = "item_weapon"},
        {name = "WEAPON_RIFLE_VARMINT", label = "Varmint Rifle", price = "15",type = "item_weapon"},
        {name = "WEAPON_REPEATER_CARBINE", label = "Carbine Repeater", price = "50",type = "item_weapon"},
        {name = "WEAPON_REVOLVER_CATTLEMAN", label = "Cattleman Revolver", price = "10",type = "item_weapon"},
        {name = "WEAPON_LASSO", label = "Lasso", price = "20",type = "item_weapon"},
        {name = "WEAPON_KIT_BINOCULARS", label = "Binoculars", price = "3",type = "item_weapon"},
        {name = "WEAPON_FISHINGROD", label = "Fishing Rod", price = "5",type = "item_weapon"},
        {name = "WEAPON_MELEE_LANTERN", label = "Lantern", price = "2",type = "item_weapon"},
    
        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    }, ]]

                {	   
        Pos = {x = 1380.8083, y = -1311.2516, z = 77.4179}, -- location of shop    
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Rhodes Farm Shop', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "Alaskan_Ginseng_Seed", label = "Alaskan Ginseng", price = "0.25",type = "item_standard"}, -- change label of items shown 
        {name = "pumpkinseeds", label = "Pumpkin", price = "0.05",type = "item_standard"},
        {name = "American_Ginseng_Seed", label = "American Ginseng", price = "0.25",type = "item_standard"},
        {name = "hop_seed", label = "Hop", price = "0.25",type = "item_standard"},
        {name = "Black_Berry_Seed", label = "Black Berry", price = "0.25",type = "item_standard"},
        {name = "Black_Currant_Seed", label = "Black Currant", price = "0.25",type = "item_standard"},
        {name = "Blood_Flower_Seed", label = "Blood Flower", price = "0.25",type = "item_standard"},
        {name = "Choc_Daisy_Seed", label = "Choc Daisy", price = "0.25",type = "item_standard"},
        {name = "coffeeseeds", label = "Coffee", price = "0.25",type = "item_standard"},
        {name = "Creekplum_Seed", label = "Creekplum", price = "0.25",type = "item_standard"},
        {name = "Creeking_Thyme_Seed", label = "Creeking Thyme", price = "0.25",type = "item_standard"},
        {name = "Crows_Garlic_Seed", label = "Crows Garlic", price = "0.25",type = "item_standard"},
        {name = "English_Mace_Seed", label = "English Mace", price = "0.25",type = "item_standard"},
        {name = "Indian_Tobbaco_Seed", label = "Indian Tobbaco", price = "0.25",type = "item_standard"},
        {name = "Milk_Weed_Seed", label = "Milk Weed", price = "0.25",type = "item_standard"},
        {name = "Oleander_Sage_Seed", label = "Oleander Sage", price = "0.25",type = "item_standard"},
        {name = "Oregano_Seed", label = "Oregano", price = "0.25",type = "item_standard"},
        {name = "Parasol_Mushroom_Seed", label = "Parasol Mushroom", price = "0.25",type = "item_standard"},
        {name = "Prairie_Poppy_Seed", label = "Prairie Poppy", price = "0.25",type = "item_standard"},
        {name = "Red_Raspberry_Seed", label = "Red Raspberry", price = "0.25",type = "item_standard"},
        {name = "Red_Sage_Seed", label = "Red Sage", price = "0.25",type = "item_standard"},
        {name = "teaseeds", label = "Tea", price = "0.25",type = "item_standard"},
        {name = "Wild_Carrot_Seed", label = "Wild Carrot", price = "0.25",type = "item_standard"},
        {name = "Wild_Mint_Seed", label = "Wild Mint", price = "0.25",type = "item_standard"},
        {name = "Wintergreen_Berry_Seed", label = "Wintergreen Berry", price = "0.25",type = "item_standard"},
        {name = "Yarrow_Seed", label = "Yarrow", price = "0.25",type = "item_standard"},
        {name = "cornseed", label = "Corn", price = "0.25",type = "item_standard"},
        {name = "Apple_Seed", label = "Apple Seed", price = "0.25",type = "item_standard"},
        {name = "sugarcaneseed", label = "Sugar", price = "0.25",type = "item_standard"},
        {name = "potatoseed", label = "Potato", price = "0.10",type = "item_standard"},
        {name = "cocoaseeds", label = "Cocoa", price = "0.25",type = "item_standard"},
        {name = "peachseeds", label = "Peach", price = "0.25",type = "item_standard"},
        {name = "wheatseed", label = "Wheat Seed", price = "0.25",type = "item_standard"},
        {name = "cottonseed", label = "cotton seed", price = "0.25",type = "item_standard"},
        {name = "Bitter_Weed_Seed", label = "Bitter Weed Seed", price = "0.25",type = "item_standard"},
        {name = "Wild_Rhubarb_Seed", label = "Wild Rhubarb Seed", price = "0.25",type = "item_standard"},
        {name = "lemon", label = "Lemons", price = "0.15",type = "item_standard"},



        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
             {name = "wool", label = "wool", price = "1.50",type = "item_standard"},
             {name = "milk", label = "milk", price = "1",type = "item_standard"},
             {name = "eggs", label = "eggs", price = "1",type = "item_standard"},
             {name = "honey", label = "honey", price = "1.50",type = "item_standard"},
             {name = "beeswax", label = "beeswax", price = "2",type = "item_standard"},

         },
    },

                    {	   
        Pos = {x = -727.8311, y = -1271.7141, z = 45.0085}, -- location of shop    -
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Blackwater Farm Shop', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "Alaskan_Ginseng_Seed", label = "Alaskan Ginseng", price = "0.25",type = "item_standard"}, -- change label of items shown 
        {name = "pumpkinseeds", label = "Pumpkin", price = "0.05",type = "item_standard"},
        {name = "American_Ginseng_Seed", label = "American Ginseng", price = "0.25",type = "item_standard"},
        {name = "hop_seed", label = "Hop", price = "0.25",type = "item_standard"},
        {name = "Black_Berry_Seed", label = "Black Berry", price = "0.25",type = "item_standard"},
        {name = "Black_Currant_Seed", label = "Black Currant", price = "0.25",type = "item_standard"},
        {name = "Blood_Flower_Seed", label = "Blood Flower", price = "0.25",type = "item_standard"},
        {name = "Choc_Daisy_Seed", label = "Choc Daisy", price = "0.25",type = "item_standard"},
        {name = "coffeeseeds", label = "Coffee", price = "0.25",type = "item_standard"},
        {name = "Creekplum_Seed", label = "Creekplum", price = "0.25",type = "item_standard"},
        {name = "Creeking_Thyme_Seed", label = "Creeking Thyme", price = "0.25",type = "item_standard"},
        {name = "Crows_Garlic_Seed", label = "Crows Garlic", price = "0.25",type = "item_standard"},
        {name = "English_Mace_Seed", label = "English Mace", price = "0.25",type = "item_standard"},
        {name = "Indian_Tobbaco_Seed", label = "Indian Tobbaco", price = "0.25",type = "item_standard"},
        {name = "Milk_Weed_Seed", label = "Milk Weed", price = "0.25",type = "item_standard"},
        {name = "Oleander_Sage_Seed", label = "Oleander Sage", price = "0.25",type = "item_standard"},
        {name = "Oregano_Seed", label = "Oregano", price = "0.25",type = "item_standard"},
        {name = "Parasol_Mushroom_Seed", label = "Parasol Mushroom", price = "0.25",type = "item_standard"},
        {name = "Prairie_Poppy_Seed", label = "Prairie Poppy", price = "0.25",type = "item_standard"},
        {name = "Red_Raspberry_Seed", label = "Red Raspberry", price = "0.25",type = "item_standard"},
        {name = "Red_Sage_Seed", label = "Red Sage", price = "0.25",type = "item_standard"},
        {name = "teaseeds", label = "Tea", price = "0.25",type = "item_standard"},
        {name = "Wild_Carrot_Seed", label = "Wild Carrot", price = "0.25",type = "item_standard"},
        {name = "Wild_Mint_Seed", label = "Wild Mint", price = "0.25",type = "item_standard"},
        {name = "Wintergreen_Berry_Seed", label = "Wintergreen Berry", price = "0.25",type = "item_standard"},
        {name = "Yarrow_Seed", label = "Yarrow", price = "0.25",type = "item_standard"},
        {name = "cornseed", label = "Corn", price = "0.25",type = "item_standard"},
        {name = "Apple_Seed", label = "Apple Seed", price = "0.25",type = "item_standard"},
        {name = "sugarcaneseed", label = "Sugar", price = "0.25",type = "item_standard"},
        {name = "potatoseed", label = "Potato", price = "0.10",type = "item_standard"},
        {name = "cocoaseeds", label = "Cocoa", price = "0.25",type = "item_standard"},
        {name = "peachseeds", label = "Peach", price = "0.25",type = "item_standard"},
        {name = "wheatseed", label = "Wheat Seed", price = "0.25",type = "item_standard"},
        {name = "cottonseed", label = "cotton seed", price = "0.25",type = "item_standard"},
        {name = "Bitter_Weed_Seed", label = "Bitter Weed Seed", price = "0.25",type = "item_standard"},
        {name = "Wild_Rhubarb_Seed", label = "Wild Rhubarb Seed", price = "0.25",type = "item_standard"},
        {name = "lemon", label = "Lemons", price = "0.15",type = "item_standard"},


        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
             {name = "wool", label = "wool", price = "1.50",type = "item_standard"},
             {name = "milk", label = "milk", price = "1",type = "item_standard"},
             {name = "eggs", label = "eggs", price = "1",type = "item_standard"},
             {name = "honey", label = "honey", price = "1.50",type = "item_standard"},
             {name = "beeswax", label = "beeswax", price = "2",type = "item_standard"},

         },
    },

                        {	   
        Pos = {x = -5487.7788, y = -2944.3242, z = -1.1271}, -- location of shop    -  
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Tumbleweed Farm Shop', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "Alaskan_Ginseng_Seed", label = "Alaskan Ginseng", price = "0.25",type = "item_standard"}, -- change label of items shown 
        {name = "pumpkinseeds", label = "Pumpkin", price = "0.05",type = "item_standard"},
        {name = "American_Ginseng_Seed", label = "American Ginseng", price = "0.25",type = "item_standard"},
        {name = "hop_seed", label = "Hop", price = "0.25",type = "item_standard"},
        {name = "Black_Berry_Seed", label = "Black Berry", price = "0.25",type = "item_standard"},
        {name = "Black_Currant_Seed", label = "Black Currant", price = "0.25",type = "item_standard"},
        {name = "Blood_Flower_Seed", label = "Blood Flower", price = "0.25",type = "item_standard"},
        {name = "Choc_Daisy_Seed", label = "Choc Daisy", price = "0.25",type = "item_standard"},
        {name = "coffeeseeds", label = "Coffee", price = "0.25",type = "item_standard"},
        {name = "Creekplum_Seed", label = "Creekplum", price = "0.25",type = "item_standard"},
        {name = "Creeking_Thyme_Seed", label = "Creeking Thyme", price = "0.25",type = "item_standard"},
        {name = "Crows_Garlic_Seed", label = "Crows Garlic", price = "0.25",type = "item_standard"},
        {name = "English_Mace_Seed", label = "English Mace", price = "0.25",type = "item_standard"},
        {name = "Indian_Tobbaco_Seed", label = "Indian Tobbaco", price = "0.25",type = "item_standard"},
        {name = "Milk_Weed_Seed", label = "Milk Weed", price = "0.25",type = "item_standard"},
        {name = "Oleander_Sage_Seed", label = "Oleander Sage", price = "0.25",type = "item_standard"},
        {name = "Oregano_Seed", label = "Oregano", price = "0.25",type = "item_standard"},
        {name = "Parasol_Mushroom_Seed", label = "Parasol Mushroom", price = "0.25",type = "item_standard"},
        {name = "Prairie_Poppy_Seed", label = "Prairie Poppy", price = "0.25",type = "item_standard"},
        {name = "Red_Raspberry_Seed", label = "Red Raspberry", price = "0.25",type = "item_standard"},
        {name = "Red_Sage_Seed", label = "Red Sage", price = "0.25",type = "item_standard"},
        {name = "teaseeds", label = "Tea", price = "0.25",type = "item_standard"},
        {name = "Wild_Carrot_Seed", label = "Wild Carrot", price = "0.25",type = "item_standard"},
        {name = "Wild_Mint_Seed", label = "Wild Mint", price = "0.25",type = "item_standard"},
        {name = "Wintergreen_Berry_Seed", label = "Wintergreen Berry", price = "0.25",type = "item_standard"},
        {name = "Yarrow_Seed", label = "Yarrow", price = "0.25",type = "item_standard"},
        {name = "cornseed", label = "Corn", price = "0.25",type = "item_standard"},
        {name = "Apple_Seed", label = "Apple Seed", price = "0.25",type = "item_standard"},
        {name = "sugarcaneseed", label = "Sugar", price = "0.25",type = "item_standard"},
        {name = "potatoseed", label = "Potato", price = "0.10",type = "item_standard"},
        {name = "cocoaseeds", label = "Cocoa", price = "0.25",type = "item_standard"},
        {name = "peachseeds", label = "Peach", price = "0.25",type = "item_standard"},
        {name = "wheatseed", label = "Wheat Seed", price = "0.25",type = "item_standard"},
        {name = "cottonseed", label = "cotton seed", price = "0.25",type = "item_standard"},
        {name = "Bitter_Weed_Seed", label = "Bitter Weed Seed", price = "0.25",type = "item_standard"},
        {name = "Wild_Rhubarb_Seed", label = "Wild Rhubarb Seed", price = "0.25",type = "item_standard"},
        {name = "lemon", label = "Lemons", price = "0.15",type = "item_standard"},


        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
             {name = "wool", label = "wool", price = "1.50",type = "item_standard"},
             {name = "milk", label = "milk", price = "1",type = "item_standard"},
             {name = "eggs", label = "eggs", price = "1",type = "item_standard"},
             {name = "honey", label = "honey", price = "1.50",type = "item_standard"},
             {name = "beeswax", label = "beeswax", price = "2",type = "item_standard"},

         },
    },

                        {	   
        Pos = {x = -3675.4680, y = -2626.5193, z = -13.7662}, -- location of shop    - 
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Armadillo Farm Shop', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "Alaskan_Ginseng_Seed", label = "Alaskan Ginseng", price = "0.25",type = "item_standard"}, -- change label of items shown 
        {name = "pumpkinseeds", label = "Pumpkin", price = "0.05",type = "item_standard"},
        {name = "American_Ginseng_Seed", label = "American Ginseng", price = "0.25",type = "item_standard"},
        {name = "hop_seed", label = "Hop", price = "0.25",type = "item_standard"},
        {name = "Black_Berry_Seed", label = "Black Berry", price = "0.25",type = "item_standard"},
        {name = "Black_Currant_Seed", label = "Black Currant", price = "0.25",type = "item_standard"},
        {name = "Blood_Flower_Seed", label = "Blood Flower", price = "0.25",type = "item_standard"},
        {name = "Choc_Daisy_Seed", label = "Choc Daisy", price = "0.25",type = "item_standard"},
        {name = "coffeeseeds", label = "Coffee", price = "0.25",type = "item_standard"},
        {name = "Creekplum_Seed", label = "Creekplum", price = "0.25",type = "item_standard"},
        {name = "Creeking_Thyme_Seed", label = "Creeking Thyme", price = "0.25",type = "item_standard"},
        {name = "Crows_Garlic_Seed", label = "Crows Garlic", price = "0.25",type = "item_standard"},
        {name = "English_Mace_Seed", label = "English Mace", price = "0.25",type = "item_standard"},
        {name = "Indian_Tobbaco_Seed", label = "Indian Tobbaco", price = "0.25",type = "item_standard"},
        {name = "Milk_Weed_Seed", label = "Milk Weed", price = "0.25",type = "item_standard"},
        {name = "Oleander_Sage_Seed", label = "Oleander Sage", price = "0.25",type = "item_standard"},
        {name = "Oregano_Seed", label = "Oregano", price = "0.25",type = "item_standard"},
        {name = "Parasol_Mushroom_Seed", label = "Parasol Mushroom", price = "0.25",type = "item_standard"},
        {name = "Prairie_Poppy_Seed", label = "Prairie Poppy", price = "0.25",type = "item_standard"},
        {name = "Red_Raspberry_Seed", label = "Red Raspberry", price = "0.25",type = "item_standard"},
        {name = "Red_Sage_Seed", label = "Red Sage", price = "0.25",type = "item_standard"},
        {name = "teaseeds", label = "Tea", price = "0.25",type = "item_standard"},
        {name = "Wild_Carrot_Seed", label = "Wild Carrot", price = "0.25",type = "item_standard"},
        {name = "Wild_Mint_Seed", label = "Wild Mint", price = "0.25",type = "item_standard"},
        {name = "Wintergreen_Berry_Seed", label = "Wintergreen Berry", price = "0.25",type = "item_standard"},
        {name = "Yarrow_Seed", label = "Yarrow", price = "0.25",type = "item_standard"},
        {name = "cornseed", label = "Corn", price = "0.25",type = "item_standard"},
        {name = "Apple_Seed", label = "Apple Seed", price = "0.25",type = "item_standard"},
        {name = "sugarcaneseed", label = "Sugar", price = "0.25",type = "item_standard"},
        {name = "potatoseed", label = "Potato", price = "0.10",type = "item_standard"},
        {name = "cocoaseeds", label = "Cocoa", price = "0.25",type = "item_standard"},
        {name = "peachseeds", label = "Peach", price = "0.25",type = "item_standard"},
        {name = "wheatseed", label = "Wheat Seed", price = "0.25",type = "item_standard"},
        {name = "cottonseed", label = "cotton seed", price = "0.25",type = "item_standard"},
        {name = "Bitter_Weed_Seed", label = "Bitter Weed Seed", price = "0.25",type = "item_standard"},
        {name = "Wild_Rhubarb_Seed", label = "Wild Rhubarb Seed", price = "0.25",type = "item_standard"},
        {name = "lemon", label = "Lemons", price = "0.15",type = "item_standard"},


        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
             {name = "wool", label = "wool", price = "1.50",type = "item_standard"},
             {name = "milk", label = "milk", price = "1",type = "item_standard"},
             {name = "eggs", label = "eggs", price = "1",type = "item_standard"},
             {name = "honey", label = "honey", price = "1.50",type = "item_standard"},
             {name = "beeswax", label = "beeswax", price = "2",type = "item_standard"},

         },
    },

                        {	   
        Pos = {x = -1776.3818, y = -390.3832, z = 157.0889}, -- location of shop    -   
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Strawberry Farm Shop', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "Alaskan_Ginseng_Seed", label = "Alaskan Ginseng", price = "0.25",type = "item_standard"}, -- change label of items shown 
        {name = "pumpkinseeds", label = "Pumpkin", price = "0.05",type = "item_standard"},
        {name = "American_Ginseng_Seed", label = "American Ginseng", price = "0.25",type = "item_standard"},
        {name = "hop_seed", label = "Hop", price = "0.25",type = "item_standard"},
        {name = "Black_Berry_Seed", label = "Black Berry", price = "0.25",type = "item_standard"},
        {name = "Black_Currant_Seed", label = "Black Currant", price = "0.25",type = "item_standard"},
        {name = "Blood_Flower_Seed", label = "Blood Flower", price = "0.25",type = "item_standard"},
        {name = "Choc_Daisy_Seed", label = "Choc Daisy", price = "0.25",type = "item_standard"},
        {name = "coffeeseeds", label = "Coffee", price = "0.25",type = "item_standard"},
        {name = "Creekplum_Seed", label = "Creekplum", price = "0.25",type = "item_standard"},
        {name = "Creeking_Thyme_Seed", label = "Creeking Thyme", price = "0.25",type = "item_standard"},
        {name = "Crows_Garlic_Seed", label = "Crows Garlic", price = "0.25",type = "item_standard"},
        {name = "English_Mace_Seed", label = "English Mace", price = "0.25",type = "item_standard"},
        {name = "Indian_Tobbaco_Seed", label = "Indian Tobbaco", price = "0.25",type = "item_standard"},
        {name = "Milk_Weed_Seed", label = "Milk Weed", price = "0.25",type = "item_standard"},
        {name = "Oleander_Sage_Seed", label = "Oleander Sage", price = "0.25",type = "item_standard"},
        {name = "Oregano_Seed", label = "Oregano", price = "0.25",type = "item_standard"},
        {name = "Parasol_Mushroom_Seed", label = "Parasol Mushroom", price = "0.25",type = "item_standard"},
        {name = "Prairie_Poppy_Seed", label = "Prairie Poppy", price = "0.25",type = "item_standard"},
        {name = "Red_Raspberry_Seed", label = "Red Raspberry", price = "0.25",type = "item_standard"},
        {name = "Red_Sage_Seed", label = "Red Sage", price = "0.25",type = "item_standard"},
        {name = "teaseeds", label = "Tea", price = "0.25",type = "item_standard"},
        {name = "Wild_Carrot_Seed", label = "Wild Carrot", price = "0.25",type = "item_standard"},
        {name = "Wild_Mint_Seed", label = "Wild Mint", price = "0.25",type = "item_standard"},
        {name = "Wintergreen_Berry_Seed", label = "Wintergreen Berry", price = "0.25",type = "item_standard"},
        {name = "Yarrow_Seed", label = "Yarrow", price = "0.25",type = "item_standard"},
        {name = "cornseed", label = "Corn", price = "0.25",type = "item_standard"},
        {name = "Apple_Seed", label = "Apple Seed", price = "0.25",type = "item_standard"},
        {name = "sugarcaneseed", label = "Sugar", price = "0.25",type = "item_standard"},
        {name = "potatoseed", label = "Potato", price = "0.10",type = "item_standard"},
        {name = "cocoaseeds", label = "Cocoa", price = "0.25",type = "item_standard"},
        {name = "peachseeds", label = "Peach", price = "0.25",type = "item_standard"},
        {name = "wheatseed", label = "Wheat Seed", price = "0.25",type = "item_standard"},
        {name = "cottonseed", label = "cotton seed", price = "0.25",type = "item_standard"},
        {name = "Bitter_Weed_Seed", label = "Bitter Weed Seed", price = "0.25",type = "item_standard"},
        {name = "Wild_Rhubarb_Seed", label = "Wild Rhubarb Seed", price = "0.25",type = "item_standard"},
        {name = "lemon", label = "Lemons", price = "0.15",type = "item_standard"},


        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
             {name = "wool", label = "wool", price = "1.50",type = "item_standard"},
             {name = "milk", label = "milk", price = "1",type = "item_standard"},
             {name = "eggs", label = "eggs", price = "1",type = "item_standard"},
             {name = "honey", label = "honey", price = "1.50",type = "item_standard"},
             {name = "beeswax", label = "beeswax", price = "2",type = "item_standard"},

         },
    },

                        {	   
        Pos = {x = -241.1652, y = 621.1761, z = 113.3572}, -- location of shop    -     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Valentine Farm Shop', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "Alaskan_Ginseng_Seed", label = "Alaskan Ginseng", price = "0.25",type = "item_standard"}, -- change label of items shown 
        {name = "pumpkinseeds", label = "Pumpkin", price = "0.05",type = "item_standard"},
        {name = "American_Ginseng_Seed", label = "American Ginseng", price = "0.25",type = "item_standard"},
        {name = "hop_seed", label = "Hop", price = "0.25",type = "item_standard"},
        {name = "Black_Berry_Seed", label = "Black Berry", price = "0.25",type = "item_standard"},
        {name = "Black_Currant_Seed", label = "Black Currant", price = "0.25",type = "item_standard"},
        {name = "Blood_Flower_Seed", label = "Blood Flower", price = "0.25",type = "item_standard"},
        {name = "Choc_Daisy_Seed", label = "Choc Daisy", price = "0.25",type = "item_standard"},
        {name = "coffeeseeds", label = "Coffee", price = "0.25",type = "item_standard"},
        {name = "Creekplum_Seed", label = "Creekplum", price = "0.25",type = "item_standard"},
        {name = "Creeking_Thyme_Seed", label = "Creeking Thyme", price = "0.25",type = "item_standard"},
        {name = "Crows_Garlic_Seed", label = "Crows Garlic", price = "0.25",type = "item_standard"},
        {name = "English_Mace_Seed", label = "English Mace", price = "0.25",type = "item_standard"},
        {name = "Indian_Tobbaco_Seed", label = "Indian Tobbaco", price = "0.25",type = "item_standard"},
        {name = "Milk_Weed_Seed", label = "Milk Weed", price = "0.25",type = "item_standard"},
        {name = "Oleander_Sage_Seed", label = "Oleander Sage", price = "0.25",type = "item_standard"},
        {name = "Oregano_Seed", label = "Oregano", price = "0.25",type = "item_standard"},
        {name = "Parasol_Mushroom_Seed", label = "Parasol Mushroom", price = "0.25",type = "item_standard"},
        {name = "Prairie_Poppy_Seed", label = "Prairie Poppy", price = "0.25",type = "item_standard"},
        {name = "Red_Raspberry_Seed", label = "Red Raspberry", price = "0.25",type = "item_standard"},
        {name = "Red_Sage_Seed", label = "Red Sage", price = "0.25",type = "item_standard"},
        {name = "teaseeds", label = "Tea", price = "0.25",type = "item_standard"},
        {name = "Wild_Carrot_Seed", label = "Wild Carrot", price = "0.25",type = "item_standard"},
        {name = "Wild_Mint_Seed", label = "Wild Mint", price = "0.25",type = "item_standard"},
        {name = "Wintergreen_Berry_Seed", label = "Wintergreen Berry", price = "0.25",type = "item_standard"},
        {name = "Yarrow_Seed", label = "Yarrow", price = "0.25",type = "item_standard"},
        {name = "cornseed", label = "Corn", price = "0.25",type = "item_standard"},
        {name = "Apple_Seed", label = "Apple Seed", price = "0.25",type = "item_standard"},
        {name = "sugarcaneseed", label = "Sugar", price = "0.25",type = "item_standard"},
        {name = "potatoseed", label = "Potato", price = "0.10",type = "item_standard"},
        {name = "cocoaseeds", label = "Cocoa", price = "0.25",type = "item_standard"},
        {name = "peachseeds", label = "Peach", price = "0.25",type = "item_standard"},
        {name = "wheatseed", label = "Wheat Seed", price = "0.25",type = "item_standard"},
        {name = "cottonseed", label = "cotton seed", price = "0.25",type = "item_standard"},
        {name = "Bitter_Weed_Seed", label = "Bitter Weed Seed", price = "0.25",type = "item_standard"},
        {name = "Wild_Rhubarb_Seed", label = "Wild Rhubarb Seed", price = "0.25",type = "item_standard"},
        {name = "lemon", label = "Lemons", price = "0.15",type = "item_standard"},


        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
             {name = "wool", label = "wool", price = "1.50",type = "item_standard"},
             {name = "milk", label = "milk", price = "1",type = "item_standard"},
             {name = "eggs", label = "eggs", price = "1",type = "item_standard"},
             {name = "honey", label = "honey", price = "1.50",type = "item_standard"},
             {name = "beeswax", label = "beeswax", price = "2",type = "item_standard"},

         },
    },

                        {	   
        Pos = {x = 2815.2244, y = -1336.8220, z = 46.3677}, -- location of shop    -    
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Saint Denis Farm Shop', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "Alaskan_Ginseng_Seed", label = "Alaskan Ginseng", price = "0.25",type = "item_standard"}, -- change label of items shown 
        {name = "pumpkinseeds", label = "Pumpkin", price = "0.05",type = "item_standard"},
        {name = "American_Ginseng_Seed", label = "American Ginseng", price = "0.25",type = "item_standard"},
        {name = "hop_seed", label = "Hop", price = "0.25",type = "item_standard"},
        {name = "Black_Berry_Seed", label = "Black Berry", price = "0.25",type = "item_standard"},
        {name = "Black_Currant_Seed", label = "Black Currant", price = "0.25",type = "item_standard"},
        {name = "Blood_Flower_Seed", label = "Blood Flower", price = "0.25",type = "item_standard"},
        {name = "Choc_Daisy_Seed", label = "Choc Daisy", price = "0.25",type = "item_standard"},
        {name = "coffeeseeds", label = "Coffee", price = "0.25",type = "item_standard"},
        {name = "Creekplum_Seed", label = "Creekplum", price = "0.25",type = "item_standard"},
        {name = "Creeking_Thyme_Seed", label = "Creeking Thyme", price = "0.25",type = "item_standard"},
        {name = "Crows_Garlic_Seed", label = "Crows Garlic", price = "0.25",type = "item_standard"},
        {name = "English_Mace_Seed", label = "English Mace", price = "0.25",type = "item_standard"},
        {name = "Indian_Tobbaco_Seed", label = "Indian Tobbaco", price = "0.25",type = "item_standard"},
        {name = "Milk_Weed_Seed", label = "Milk Weed", price = "0.25",type = "item_standard"},
        {name = "Oleander_Sage_Seed", label = "Oleander Sage", price = "0.25",type = "item_standard"},
        {name = "Oregano_Seed", label = "Oregano", price = "0.25",type = "item_standard"},
        {name = "Parasol_Mushroom_Seed", label = "Parasol Mushroom", price = "0.25",type = "item_standard"},
        {name = "Prairie_Poppy_Seed", label = "Prairie Poppy", price = "0.25",type = "item_standard"},
        {name = "Red_Raspberry_Seed", label = "Red Raspberry", price = "0.25",type = "item_standard"},
        {name = "Red_Sage_Seed", label = "Red Sage", price = "0.25",type = "item_standard"},
        {name = "teaseeds", label = "Tea", price = "0.25",type = "item_standard"},
        {name = "Wild_Carrot_Seed", label = "Wild Carrot", price = "0.25",type = "item_standard"},
        {name = "Wild_Mint_Seed", label = "Wild Mint", price = "0.25",type = "item_standard"},
        {name = "Wintergreen_Berry_Seed", label = "Wintergreen Berry", price = "0.25",type = "item_standard"},
        {name = "Yarrow_Seed", label = "Yarrow", price = "0.25",type = "item_standard"},
        {name = "cornseed", label = "Corn", price = "0.25",type = "item_standard"},
        {name = "Apple_Seed", label = "Apple Seed", price = "0.25",type = "item_standard"},
        {name = "sugarcaneseed", label = "Sugar", price = "0.25",type = "item_standard"},
        {name = "potatoseed", label = "Potato", price = "0.10",type = "item_standard"},
        {name = "cocoaseeds", label = "Cocoa", price = "0.25",type = "item_standard"},
        {name = "peachseeds", label = "Peach", price = "0.25",type = "item_standard"},
        {name = "wheatseed", label = "Wheat Seed", price = "0.25",type = "item_standard"},
        {name = "cottonseed", label = "cotton seed", price = "0.25",type = "item_standard"},
        {name = "Bitter_Weed_Seed", label = "Bitter Weed Seed", price = "0.25",type = "item_standard"},
        {name = "Wild_Rhubarb_Seed", label = "Wild Rhubarb Seed", price = "0.25",type = "item_standard"},
        {name = "lemon", label = "Lemons", price = "0.15",type = "item_standard"},


        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
             {name = "wool", label = "wool", price = "1.50",type = "item_standard"},
             {name = "milk", label = "milk", price = "1",type = "item_standard"},
             {name = "eggs", label = "eggs", price = "1",type = "item_standard"},
             {name = "honey", label = "honey", price = "1.50",type = "item_standard"},
             {name = "beeswax", label = "beeswax", price = "2",type = "item_standard"},

         },
    },

                        {	   
        Pos = {x = 2924.4675, y = 1335.1635, z = 44.0573}, -- location of shop    -  
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Annesburg Farm Shop', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "Alaskan_Ginseng_Seed", label = "Alaskan Ginseng", price = "0.25",type = "item_standard"}, -- change label of items shown 
        {name = "pumpkinseeds", label = "Pumpkin", price = "0.05",type = "item_standard"},
        {name = "American_Ginseng_Seed", label = "American Ginseng", price = "0.25",type = "item_standard"},
        {name = "hop_seed", label = "Hop", price = "0.25",type = "item_standard"},
        {name = "Black_Berry_Seed", label = "Black Berry", price = "0.25",type = "item_standard"},
        {name = "Black_Currant_Seed", label = "Black Currant", price = "0.25",type = "item_standard"},
        {name = "Blood_Flower_Seed", label = "Blood Flower", price = "0.25",type = "item_standard"},
        {name = "Choc_Daisy_Seed", label = "Choc Daisy", price = "0.25",type = "item_standard"},
        {name = "coffeeseeds", label = "Coffee", price = "0.25",type = "item_standard"},
        {name = "Creekplum_Seed", label = "Creekplum", price = "0.25",type = "item_standard"},
        {name = "Creeking_Thyme_Seed", label = "Creeking Thyme", price = "0.25",type = "item_standard"},
        {name = "Crows_Garlic_Seed", label = "Crows Garlic", price = "0.25",type = "item_standard"},
        {name = "English_Mace_Seed", label = "English Mace", price = "0.25",type = "item_standard"},
        {name = "Indian_Tobbaco_Seed", label = "Indian Tobbaco", price = "0.25",type = "item_standard"},
        {name = "Milk_Weed_Seed", label = "Milk Weed", price = "0.25",type = "item_standard"},
        {name = "Oleander_Sage_Seed", label = "Oleander Sage", price = "0.25",type = "item_standard"},
        {name = "Oregano_Seed", label = "Oregano", price = "0.25",type = "item_standard"},
        {name = "Parasol_Mushroom_Seed", label = "Parasol Mushroom", price = "0.25",type = "item_standard"},
        {name = "Prairie_Poppy_Seed", label = "Prairie Poppy", price = "0.25",type = "item_standard"},
        {name = "Red_Raspberry_Seed", label = "Red Raspberry", price = "0.25",type = "item_standard"},
        {name = "Red_Sage_Seed", label = "Red Sage", price = "0.25",type = "item_standard"},
        {name = "teaseeds", label = "Tea", price = "0.25",type = "item_standard"},
        {name = "Wild_Carrot_Seed", label = "Wild Carrot", price = "0.25",type = "item_standard"},
        {name = "Wild_Mint_Seed", label = "Wild Mint", price = "0.25",type = "item_standard"},
        {name = "Wintergreen_Berry_Seed", label = "Wintergreen Berry", price = "0.25",type = "item_standard"},
        {name = "Yarrow_Seed", label = "Yarrow", price = "0.25",type = "item_standard"},
        {name = "cornseed", label = "Corn", price = "0.25",type = "item_standard"},
        {name = "Apple_Seed", label = "Apple Seed", price = "0.25",type = "item_standard"},
        {name = "sugarcaneseed", label = "Sugar", price = "0.25",type = "item_standard"},
        {name = "potatoseed", label = "Potato", price = "0.10",type = "item_standard"},
        {name = "cocoaseeds", label = "Cocoa", price = "0.25",type = "item_standard"},
        {name = "peachseeds", label = "Peach", price = "0.25",type = "item_standard"},
        {name = "wheatseed", label = "Wheat Seed", price = "0.25",type = "item_standard"},
        {name = "cottonseed", label = "cotton seed", price = "0.25",type = "item_standard"},
        {name = "Bitter_Weed_Seed", label = "Bitter Weed Seed", price = "0.25",type = "item_standard"},
        {name = "Wild_Rhubarb_Seed", label = "Wild Rhubarb Seed", price = "0.25",type = "item_standard"},
        {name = "lemon", label = "Lemons", price = "0.15",type = "item_standard"},
        


        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
             {name = "wool", label = "wool", price = "1.50",type = "item_standard"},
             {name = "milk", label = "milk", price = "1",type = "item_standard"},
             {name = "eggs", label = "eggs", price = "1",type = "item_standard"},
             {name = "honey", label = "honey", price = "1.50",type = "item_standard"},
             {name = "beeswax", label = "beeswax", price = "2",type = "item_standard"},

         },
    },

                            {	   
        Pos = {x = -814.1937, y = -1275.9075, z = 43.6378}, -- location of shop    -    
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Blackwater Jewellery Shop', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
     },
         buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
             {name = "provision_coin_1700_ny_tkn", label = "1700 New Yorke Token", price = "100",type = "item_standard"},
             {name = "provision_coin_1787_cent_tkn", label = "1787 One cent Token", price = "100",type = "item_standard"},
             {name = "provision_coin_1789_pny", label = "789 Penny", price = "100",type = "item_standard"},
             {name = "provision_coin_1792_lib_qtr", label = "1792 Liberty Quate", price = "80",type = "item_standard"},
             {name = "provision_coin_1792_nickel", label = "1792 Nickel", price = "80",type = "item_standard"},
             {name = "provision_coin_1792_qtr", label = "1792 Quater", price = "60",type = "item_standard"},
             {name = "provision_coin_1794_slv_dlr", label = "1794 Silver Dolla", price = "60",type = "item_standard"},
             {name = "provision_coin_1795_hlf_eag", label = "1795 Half Eagle", price = "50",type = "item_standard"},
             {name = "provision_coin_1796_hlf_pny", label = "796 Half Penny", price = "50",type = "item_standard"},
             {name = "provision_coin_1797_gld_eag", label = "1797 Gold Eagle", price = "50",type = "item_standard"},
             {name = "provision_coin_1798_slv_dlr", label = "1798 Silver Dolla", price = "50",type = "item_standard"},
             {name = "provision_coin_1800_five_dlr", label = "1800 Five Dolla", price = "40",type = "item_standard"},
             {name = "provision_coin_1800_gld_dlr", label = "1800 Gold Dollar", price = "30",type = "item_standard"},
             {name = "provision_coin_1800_gld_qtr", label = "1800 Gold Quarter", price = "20",type = "item_standard"},
             {name = "provision_coin_1800_hlf_dime", label = "1800 Half Dime", price = "10",type = "item_standard"},
             {name = "diamond", label = "Diamond", price = "50",type = "item_standard"},
             {name = "emerald", label = "Emerald", price = "35",type = "item_standard"},
             {name = "provision_hrlm_brush_goathair", label = "Goat Hair Brush", price = "20",type = "item_standard"},
             {name = "provision_earring_platinum", label = "Platinum Earring", price = "35",type = "item_standard"},
             {name = "provision_jewelry_emerald_ring", label = "Bosque Emerald Ring", price = "25",type = "item_standard"},
             {name = "provision_jewelry_porcelain_necklace", label = "Braxton Amethyst Necklace", price = "15",type = "item_standard"},
             {name = "provision_jewelry_slvr_pearl_necklace", label = "Silver Pearl Necklace", price = "35",type = "item_standard"},
             {name = "provision_bracelet_gold", label = "Gold Bracelet", price = "35",type = "item_standard"},
             {name = "goldbar", label = "gold bar", price = "60",type = "item_standard"},
             {name = "provision_buckle_platinum", label = "Platinum Buckle", price = "25",type = "item_standard"},
             {name = "provision_jewelry_gld_pearl_necklace", label = "Rou Pearl Necklace", price = "45",type = "item_standard"},
             {name = "provision_ring_platinum", label = "Platinum Ring", price = "32",type = "item_standard"},
             {name = "provision_jewelry_pearl_ring", label = "Bonnard Pearl Ring", price = "28",type = "item_standard"},
             {name = "provision_disco_ancient_necklace", label = "Ancient Necklace", price = "55",type = "item_standard"},
             {name = "ruby_uncut", label = "ruby uncut", price = "10",type = "item_standard"},
             {name = "ruby", label = "Ruby", price = "20",type = "item_standard"},
             {name = "ruby_ring", label = "Ruby", price = "45",type = "item_standard"},
             {name = "opal_uncut", label = "opal uncut", price = "10",type = "item_standard"},
             {name = "opal", label = "Opal", price = "20",type = "item_standard"},
             {name = "opal_ring", label = "Opal Ring", price = "40",type = "item_standard"},
             {name = "sapphire_uncut", label = "sapphire uncut", price = "10",type = "item_standard"},
             {name = "sapphire", label = "Sapphire", price = "20",type = "item_standard"},
             {name = "sapphire_ring", label = "Sapphire Ring", price = "35",type = "item_standard"},
             
             
         },
    },

                {	   
        Pos = {x = -162.6537, y = 1732.8873, z = 170.7715}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Black Market', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = false,
        sellitems = { -- items sold by shop
        {name = "acid", label = "Acid", price = "15.00",type = "item_standard"},
        {name = "lockpick", label = "Lockpick", price = "5.00",type = "item_standard"},
        {name = "weed_seed", label = "weed seed", price = "5.00",type = "item_standard"},
        {name = "consumable_water", label = "water", price = "2.00",type = "item_standard"}, -- change label of items shown 


        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

                    {	   
        Pos = {x = -760.9218, y = -1320.5475, z = 43.7449}, -- location of shop        
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Bee Ware & Co.', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "insect_medicine", label = "Insect Medicine", price = "3.00",type = "item_standard"}, -- change label of items shown 
        {name = "sponge", label = "sponge", price = "2.00",type = "item_standard"},
        {name = "pipepeace", label = "Bee Smoking Pipe", price = "5.00",type = "item_standard"},
        {name = "basic_bees", label = "'Basic Bees", price = "10.00",type = "item_standard"},
        {name = "wild_bees", label = "wild bees", price = "10.00",type = "item_standard"},
        {name = "basic_hornets", label = "basic hornets", price = "10.00",type = "item_standard"},
        {name = "mexican_hornets", label = "mexican hornets", price = "10.00",type = "item_standard"},
        {name = "basic_queen", label = "Basic Queen", price = "7.00",type = "item_standard"}, -- change label of items shown 
        {name = "wild_queen", label = "wild queen", price = "7.00",type = "item_standard"},
        {name = "basic_hornet_queen", label = "basic hornet queen", price = "7.00",type = "item_standard"},
        {name = "mexican_hornet_queen", label = "mexican hornet queen", price = "7.00",type = "item_standard"},
        {name = "apiary_bee_house_gk_1", label = "Bee House 1", price = "300.00",type = "item_standard"},
        {name = "apiary_bee_house_gk_2", label = "Bee House 2", price = "300.00",type = "item_standard"},
        {name = "bee_hive02", label = "bee hive 2", price = "225.00",type = "item_standard"}, -- change label of items shown 
        {name = "bee_hive04", label = "bee hive 4", price = "425.00",type = "item_standard"},
        {name = "bee_hive08", label = "bee hive 8", price = "150.00",type = "item_standard"},
        {name = "bee_hive12", label = "bee hive 12", price = "550.00",type = "item_standard"},


        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

                    {	   
        Pos = {x = -781.1, y = -1299.22, z = 47.92}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Doctors Store', -- blip name 
        joblock = {"doctor"},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = false,
        sellitems = { -- items sold by shop
        {name = "Morphine", label = "Morphine", price = "0.00",type = "item_standard"},
        {name = "syringe", label = "Syringe", price = "2.00",type = "item_standard"},
        {name = "antipoison2", label = "Anti Snake Poison", price = "5.00",type = "item_standard"},


        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

                        {	   
        Pos = {x = 725.77, y = -461.99, z = 79.29}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Fury mining Gov Store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "pickaxe", label = "Pickaxe", price = "10.00",type = "item_standard"},


        },
       buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
             {name = "clay", label = "Clay", price = "0.20",type = "item_standard"},
             {name = "coal", label = "Coal", price = "1.25",type = "item_standard"},
             {name = "copper", label = "Copper", price = "0.50",type = "item_standard"},
             {name = "iron", label = "Iron", price = "0.70",type = "item_standard"},
             {name = "nitrite", label = "Nitrite", price = "0.70",type = "item_standard"},
             {name = "rock", label = "Rocks", price = "0.25",type = "item_standard"},
             {name = "salt", label = "Salt", price = "0.20",type = "item_standard"},
             {name = "goldnugget", label = "Gold Nuggets", price = "2",type = "item_standard"},
             {name = "sand", label = "Sand", price = "0.20",type = "item_standard"},
             },

    },

                    {	   
        Pos = {x = -5984.04, y = -3224.43, z = -21.18}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Wilson & co mining Gov Store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "pickaxe", label = "Pickaxe", price = "10.00",type = "item_standard"},


        },
       buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
             {name = "clay", label = "Clay", price = "0.20",type = "item_standard"},
             {name = "coal", label = "Coal", price = "1.25",type = "item_standard"},
             {name = "copper", label = "Copper", price = "0.50",type = "item_standard"},
             {name = "iron", label = "Iron", price = "0.70",type = "item_standard"},
             {name = "nitrite", label = "Nitrite", price = "0.70",type = "item_standard"},
             {name = "rock", label = "Rocks", price = "0.25",type = "item_standard"},
             {name = "salt", label = "Salt", price = "0.20",type = "item_standard"},
             {name = "goldnugget", label = "Gold Nuggets", price = "2",type = "item_standard"},
             {name = "sand", label = "Sand", price = "0.20",type = "item_standard"},
             },

    },

                        {	   
        Pos = {x = -1018.01, y = 1687.1, z = 244.18}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Lumber Gov Store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "hatchet", label = "Hatchet", price = "10.00",type = "item_standard"},


        },
       buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
             {name = "sap", label = "Sap", price = "0.20",type = "item_standard"},
             {name = "wood", label = "Soft Wood", price = "1.50",type = "item_standard"},
             {name = "hwood", label = "Hard Wood", price = "1.50",type = "item_standard"},
             {name = "rubber", label = "Rubber", price = "0.30",type = "item_standard"},
             {name = "fibers", label = "Fibers", price = "0.25",type = "item_standard"},
             {name = "pulp", label = "Pulp", price = "0.25",type = "item_standard"},
             },

    },

                        {	   
        Pos = {x = -879.55, y = -1228.77, z = 44.13}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Train Gov Store', -- blip name 
        joblock = {"railroader"},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = false,
        sellitems = { -- items sold by shop
        {name = "coal_bag", label = "Coal Bag", price = "25.00",type = "item_standard"},
        {name = "train_repair_kit", label = "Train Repair Kit", price = "50.00",type = "item_standard"},
    


        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

                            {	   
        Pos = {x = -762.14, y = -1351.28, z = 43.79}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Furniture Store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "nativebed", label = "Native Bed", price = "25.00",type = "item_standard"},
        {name = "cage", label = "Cage", price = "25.00",type = "item_standard"},
        {name = "tipi", label = "Native Tipi", price = "75.00",type = "item_standard"},
        {name = "tent2", label = "Trader Tent", price = "75.00",type = "item_standard"},
        {name = "tent3", label = "Simple Tent", price = "75.00",type = "item_standard"},
        {name = "tent4", label = "Canvas Shade", price = "75.00",type = "item_standard"},
        {name = "nativepot", label = "Native Pot", price = "15.00",type = "item_standard"},
        {name = "nativebasket1", label ="Native Basket 1", price = "15.00",type = "item_standard"},
        {name = "nativebasket2", label = "Native Basket 2", price = "15.00",type = "item_standard"},
        {name = "loungechair", label = "Lounge Chair", price = "15.00",type = "item_standard"},
        {name = "loungechair2", label = "Lounge Chair 2", price = "15.00",type = "item_standard"},
        {name = "decortent1", label = "Decor Tent 1 Set", price = "75.00",type = "item_standard"},
        {name = "decortent2", label = "Decor Tent 2 Set", price = "75.00",type = "item_standard"},
        {name = "decortent3", label = "Decor Tent 3 Set", price = "75.00",type = "item_standard"},
        {name = "decortent1", label = "Decor Tent 1 Set", price = "75.00",type = "item_standard"},
        {name = "decortent2", label = "Decor Tent 2 Set", price = "75.00",type = "item_standard"},
        {name = "robberyplanning", label = "Robbery Planning Set", price = "65.00",type = "item_standard"},
        {name = "lamppost1", label = "Lamp Post 1 Set", price = "50.00",type = "item_standard"},
        {name = "lamppost2", label = "Lamp Post 2 Set", price = "50.00",type = "item_standard"},
        {name = "standingtorch", label = "Stading Torch", price = "25.00",type = "item_standard"},
        {name = "tent", label = "Bounty Hunter Tent", price = "75.00",type = "item_standard"},
        {name = "crafting_fire", label = "Crafting Fire", price = "15.00",type = "item_standard"},
        {name = "log_bencha", label = "Log Bench 1", price = "25.00",type = "item_standard"},
        {name = "log_benchb", label = "Log Bench 2", price = "25.00",type = "item_standard"},
        {name = "lanterna", label = "Lantern", price = "15.00",type = "item_standard"},
    


        },
        -- buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        --     {name = "water", label = "water", price = "1",type = "item_standard"},
        -- },
    },

                      {	   
        Pos = {x = 2799.72, y = 1350.13, z = 73.18}, -- location of shop     
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Annesburg Coal Gov Store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        {name = "pickaxe", label = "Pickaxe", price = "10.00",type = "item_standard"},


        },
       buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
             {name = "coal", label = "Coal", price = "1.25",type = "item_standard"},
             },

    },
    



    
    
}