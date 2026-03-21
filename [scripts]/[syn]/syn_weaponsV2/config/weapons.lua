Config4 = {} 
Config4.weapons = {  
    ["Melee"] = {
        ["Horror Knife"] = {	
            hashname = "WEAPON_MELEE_KNIFE_HORROR",
            expadd = 1,
            expreq = 10,
            diff = 3500,
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "hwood",label = "Hard Wood", amount = 2},
                item3 = {name = "bucks",label = "bucks Pelt", amount = 2},
                item4 = {name = "coal",label = "Coal", amount = 3},
                item10 = {name = "bolts",label = "Bolts", amount = 2},

            }, 
        
        },
        ["Rustic Knife"] = {	
            hashname = "WEAPON_MELEE_KNIFE_RUSTIC",
            expadd = 1,
            expreq = 0,
            diff = 2500,
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "hwood",label = "Hard Wood", amount = 2},
                item3 = {name = "deerskin",label = "deerskin", amount = 2},
                item4 = {name = "coal",label = "Coal", amount = 3},
                item10 = {name = "bolts",label = "Bolts", amount = 2},


            },   
        
        },
        ["Tradders Knife"] = {	
            expadd = 1,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_MELEE_KNIFE_TRADER",   
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "hwood",label = "Hard Wood", amount = 2},
                item3 = {name = "deerskin",label = "deerskin", amount = 2},
                item4 = {name = "coal",label = "Coal", amount = 3},
                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["Knife"] = {	
            expadd = 1,
            expreq = 0,
            diff = 2500,
            hashname = "WEAPON_MELEE_KNIFE",     
            letcraft = true, --show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 2},
                item2 = {name = "hwood",label = "Hard Wood", amount = 1},
                item3 = {name = "foxskin",label = "foxskin", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 3},
                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["JawBone Knife"] = {	
            expadd = 1,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_MELEE_KNIFE_JAWBONE",    
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 2},
                item2 = {name = "hwood",label = "Hard Wood", amount = 1},
                item3 = {name = "deerskin",label = "deerskin", amount = 2},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["Cleaver"] = {	
            expadd = 1,
            expreq = 20,
            diff = 3000,
            hashname = "WEAPON_MELEE_CLEAVER", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "hwood",label = "Hard Wood", amount = 1},
                item3 = {name = "bucks",label = "Buck skin", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["Hunter Hatchet"] = {	
            expadd = 1,
            expreq = 0,
            diff = 2500,
            hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 4},
                item2 = {name = "hwood",label = "Hard Wood", amount = 1},
                item3 = {name = "bucks",label = "Buck skin", amount = 2},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["Machete"] = {	
            expadd = 1,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_MELEE_MACHETE", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 4},
                item2 = {name = "hwood",label = "Hard Wood", amount = 1},
                item3 = {name = "bucks",label = "Buck skin", amount = 2},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["Collector Machete"] = {	
            expadd = 1,
            expreq = 50,
            diff = 2500,
            hashname = "WEAPON_MELEE_MACHETE_COLLECTOR",    
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 4},
                item2 = {name = "hwood",label = "Hard Wood", amount = 2},
                item3 = {name = "bucks",label = "Buck skin", amount = 2},
                item4 = {name = "coal",label = "Coal", amount = 3},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        
    },
    ["Bows"] = {
        ["Bow"] = {	
            expadd = 2,
            expreq = 0,
            diff = 100,
            hashname = "WEAPON_BOW",
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "deerskin",label = "deerskin", amount = 1},
                item2 = {name = "hwood",label = "Hard Wood", amount = 1},
                item3 = {name = "fibers",label = "Fibers", amount = 1},
                item4 = {name = "wsnakes",label = "Western rattlesnake pelt", amount = 2},

            }, 
        },
        ["Improved Bow"] = {	
            expadd = 3,
            expreq = 100,
            diff = 3000,
            hashname = "WEAPON_BOW_IMPROVED",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "sap",label = "Sap", amount = 3},
                item2 = {name = "hwood",label = "Hard Wood", amount = 1},
                item3 = {name = "fibers",label = "Fibers", amount = 3},
                 item4 = {name = "wsnakeskin",label = "Watersnake pelt", amount = 2},
            }, 
        },
    },
    ["Rifles"] = {
        ["Elephant Rifle"] = {	
            expadd = 10,
            expreq = 5000,
            diff = 2500,
            hashname = "WEAPON_RIFLE_ELEPHANT",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            materials = {
                item1 = {name = "riflebarrel",label = "Rifle Barrel", amount = 1},
                item2 = {name = "bulls",label = "Bull pelt", amount = 2},
                item3 = {name = "riflereceiver",label = "Rifle Reciever", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["Varmint Rifle"] = {	
            expadd = 2,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_RIFLE_VARMINT", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "riflebarrel",label = "Rifle Barrel", amount = 1},
                item2 = {name = "riflestock",label = "Rifle Stock", amount = 1},
                item3 = {name = "riflereceiver",label = "Rifle Reciever", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["Rollingblock Rifle"] = {	
            expadd = 50,
            expreq = 10000,
            diff = 3000,
            hashname = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
            materials = {
                item1 = {name = "riflebarrel",label = "Rifle Barrel", amount = 1},
                item2 = {name = "bisons",label = "Bison pelt", amount = 2},
                item3 = {name = "riflereceiver",label = "Rifle Reciever", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["Carcano Rifle"] = {	
            expadd = 50,
            expreq = 12500,
            diff = 3000,
            hashname = "WEAPON_SNIPERRIFLE_CARCANO",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
            materials = {
                item1 = {name = "riflebarrel",label = "Rifle Barrel", amount = 1},
                item2 = {name = "aligators",label = "Alligator Pelt", amount = 2},
                item3 = {name = "riflereceiver",label = "Rifle Reciever", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["Springfield Rifle"] = {	
            expadd = 15,
            expreq = 3000,
            diff = 3000,
            hashname = "WEAPON_RIFLE_SPRINGFIELD", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "riflebarrel",label = "Rifle Barrel", amount = 1},
                item2 = {name = "riflestock",label = "Rifle Stock", amount = 1},
                item3 = {name = "riflereceiver",label = "Rifle Reciever", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},

            }, 
        },
        ["Boltaction Rifle"] = {	
            expadd = 10,
            expreq = 5000,
            diff = 3000,
            hashname = "WEAPON_RIFLE_BOLTACTION",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
            materials = {
                item1 = {name = "riflebarrel",label = "Rifle Barrel", amount = 1},
                item2 = {name = "riflestock",label = "Rifle Stock", amount = 1},
                item3 = {name = "riflereceiver",label = "Rifle Reciever", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
    },
    ["Repeaters"] = {
        ["Winchester Repeater"] = {	
            expadd = 5,
            expreq = 200,
            diff = 3000,
            hashname = "WEAPON_REPEATER_WINCHESTER",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
            materials = {
                item1 = {name = "repeaterbarrel",label = "Repeater Barrel", amount = 1},
                item2 = {name = "repeaterreceiver",label = "Repeater Receiver", amount = 1},
                item3 = {name = "repeaterstock",label = "Repeater Stock", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["Henry Repeater"] = {	
            expadd = 3,
            expreq = 50,
            diff = 3000,
            hashname = "WEAPON_REPEATER_HENRY", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "repeaterbarrel",label = "Repeater Barrel", amount = 1},
                item2 = {name = "repeaterreceiver",label = "Repeater Receiver", amount = 1},
                item3 = {name = "repeaterstock",label = "Repeater Stock", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["Evans Repeater"] = {	
            expadd = 3,
            expreq = 100,
            diff = 3000,
            hashname = "WEAPON_REPEATER_EVANS",
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "repeaterbarrel",label = "Repeater Barrel", amount = 1},
                item2 = {name = "repeaterreceiver",label = "Repeater Receiver", amount = 1},
                item3 = {name = "repeaterstock",label = "Repeater Stock", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["Carbine Repeater"] = {	
            expadd = 2,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_REPEATER_CARBINE",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
            materials = {
                item1 = {name = "repeaterbarrel",label = "Repeater Barrel", amount = 1},
                item2 = {name = "repeaterreceiver",label = "Repeater Receiver", amount = 1},
                item3 = {name = "repeaterstock",label = "Repeater Stock", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
    },
    ["Pistols"] = {
            ["SemiAuto Pistol "] = {	
            expadd = 5,
            expreq = 1000,
            diff = 2000,
            hashname = "WEAPON_PISTOL_SEMIAUTO",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "pistolreceiver",label = "Pistol Receiver", amount = 1},
                item2 = {name = "pistolbarrel",label = "Pistol Barrel", amount = 1},
                item3 = {name = "deerskin",label = "Deer Pelt", amount = 2},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["Mauser Pistol "] = {	
            expadd = 3,
            expreq = 500,
            diff = 2000,
            hashname = "WEAPON_PISTOL_MAUSER",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "pistolreceiver",label = "Pistol Receiver", amount = 1},
                item2 = {name = "pistolbarrel",label = "Pistol Barrel", amount = 1},
                item3 = {name = "goats",label = "goats Pelt", amount = 2},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["Volcanic Pistol "] = {	
            expadd = 3,
            expreq = 500,
            diff = 2000,
            hashname = "WEAPON_PISTOL_VOLCANIC",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "pistolreceiver",label = "Pistol Receiver", amount = 1},
                item2 = {name = "pistolbarrel",label = "Pistol Barrel", amount = 1},
                item3 = {name = "goats",label = "goats Pelt", amount = 2},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},


            }, 
        },
        ["M1899 Pistol "] = {	
            expadd = 10,
            expreq = 2000,
            diff = 2000,
            hashname = "WEAPON_PISTOL_M1899",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "pistolreceiver",label = "Pistol Receiver", amount = 1},
                item2 = {name = "pistolbarrel",label = "Pistol Barrel", amount = 1},
                item3 ={name = "deerskin",label = "deer pelt", amount = 2},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},

            }, 
        },
        
    }, 
    ["Revolvers"] = {
        ["Double Action Gambler"] = {	
            hashname = "WEAPON_REVOLVER_DOUBLEACTION_GAMBLER",    
            expadd = 3,
            expreq = 50,
            diff = 2500,
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "revolverbarrel",label = "Revolver Barrel", amount = 1},
                item2 = {name = "revolverhandle",label = "Revolver Handle", amount = 1},
                item3 = {name = "revolvercylinder",label = "Revolver Cylinder", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                item10 = {name = "bolts",label = "Bolts", amount = 2},

            }, 
        },
        ["Mexican Cattleman"] = {	
            hashname = "WEAPON_REVOLVER_CATTLEMAN_MEXICAN",    
            expadd = 3,
            expreq = 75,
            diff = 2500,
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "revolverbarrel",label = "Revolver Barrel", amount = 1},
                item2 = {name = "revolverhandle",label = "Revolver Handle", amount = 1},
                item3 = {name = "revolvercylinder",label = "Revolver Cylinder", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                item10 = {name = "bolts",label = "Bolts", amount = 2},

            }, 
        },
        ["Navy Revolver Crossover"] = {	
            hashname = "WEAPON_REVOLVER_NAVY_CROSSOVER",    
            expadd = 5,
            expreq = 500,
            diff = 2500,
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "revolverbarrel",label = "Revolver Barrel", amount = 1},
                item2 = {name = "revolverhandle",label = "Revolver Handle", amount = 1},
                item3 = {name = "revolvercylinder",label = "Revolver Cylinder", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                item10 = {name = "bolts",label = "Bolts", amount = 2},

            }, 
        },
        ["Schofield Revolver"] = {	
            expadd = 2,
            expreq = 50,
            diff = 3000,
            hashname = "WEAPON_REVOLVER_SCHOFIELD",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "revolverbarrel",label = "Revolver Barrel", amount = 1},
                item2 = {name = "revolverhandle",label = "Revolver Handle", amount = 1},
                item3 = {name = "revolvercylinder",label = "Revolver Cylinder", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},

            }, 
        },
        ["Lemat Revolver"] = {	
            expadd = 5,
            expreq = 250,
            diff = 3000,
            hashname = "WEAPON_REVOLVER_LEMAT",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "revolverbarrel",label = "Revolver Barrel", amount = 1},
                item2 = {name = "revolverhandle",label = "Revolver Handle", amount = 1},
                item3 = {name = "revolvercylinder",label = "Revolver Cylinder", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},

            }, 
        },
        ["Double Action Revolver"] = {	
            expadd = 3,
            expreq = 75,
            diff = 3000,
            hashname = "WEAPON_REVOLVER_DOUBLEACTION", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
            materials = {
                item1 = {name = "revolverbarrel",label = "Revolver Barrel", amount = 1},
                item2 = {name = "revolverhandle",label = "Revolver Handle", amount = 1},
                item3 = {name = "revolvercylinder",label = "Revolver Cylinder", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},

            }, 
        },
        ["Cattleman Revolver"] = {	
            expadd = 2,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_REVOLVER_CATTLEMAN",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "revolverbarrel",label = "Revolver Barrel", amount = 1},
                item2 = {name = "revolverhandle",label = "Revolver Handle", amount = 1},
                item3 = {name = "revolvercylinder",label = "Revolver Cylinder", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},

            }, 
        },
        ["Navy Revolver"] = {	
            expadd = 2,
            expreq = 500,
            diff = 3000,
            hashname = "WEAPON_REVOLVER_NAVY",     
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "revolverbarrel",label = "Revolver Barrel", amount = 1},
                item2 = {name = "revolverhandle",label = "Revolver Handle", amount = 1},
                item3 = {name = "revolvercylinder",label = "Revolver Cylinder", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},

            }, 
        },
    },
    ["Throwable"] = { -- Due to vorp bug, using this weapon never runs out of ammo if u requip. 
    -- in order for throwables to work. the player must buy the throwable weapon then buy and use the related ammo box
    -- only then will the throwable show up in their weapon wheel 
        ["Bolas Hawkmoth"] = {	
            hashname = "WEAPON_THROWN_BOLAS_HAWKMOTH",    
            expadd = 1,
            expreq = 250,
            diff = 500,
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 2},
                item2 = {name = "fibers",label = "Fibers", amount = 5},
                item3 = {name = "hawkt",label = "Hawk claws", amount = 2},
            }, 
        
        },
        ["Bolas Iron-Spiked"] = {	
            hashname = "WEAPON_THROWN_BOLAS_IRONSPIKED",    
            expadd = 3,
            expreq = 1000,
            diff = 3000,
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 2},
                item2 = {name = "fibers",label = "Fibers", amount = 5},
                item3 = {name = "deerskin",label = "Deer skin", amount = 2},
            }, 
        
        },
        ["Bolas Intertwined"] = {	
            hashname = "WEAPON_THROWN_BOLAS_INTERTWINED",    
            expadd = 1,
            expreq = 1000,
            diff = 3000,
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "sap",label = "Sap", amount = 2},
                item2 = {name = "fibers",label = "Fibers", amount = 5},
                item3 = {name = "deerskin",label = "Deer skin", amount = 2},
            },
        
        },
        ["Tomahawk"] = {	
            expadd = 2,
            expreq = 1000,
            diff = 3000,
            hashname = "WEAPON_THROWN_TOMAHAWK",  
            jobonly = true,
           jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "hwood",label = "Hard Wood", amount = 2},
                item3 = {name = "fibers",label = "Fibers", amount = 2},
            }, 
        },
        ["Knives"] = {	
            expadd = 2,
            expreq = 100,
            diff = 3000,
            hashname = "WEAPON_THROWN_THROWING_KNIVES", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "hwood",label = "Hard Wood", amount = 1},
                item3 = {name = "clay",label = "Clay", amount = 1},
                item4 = {name = "coal",label = "Coal", amount = 5},
                                item10 = {name = "bolts",label = "Bolts", amount = 2},

            }, 
        },
        ["Poison Bottle"] = {	
            expadd = 5,
            expreq = 10000,
            diff = 3000,
            hashname = "WEAPON_THROWN_POISONBOTTLE", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "alcohol",label = "alcohol", amount = 3},
                item2 = {name = "glassbottle",label = "glassbottle", amount = 3},
                item3 = {name = "hornet_poison",label = "Hornet Poison", amount = 3},
            }, 
        },
        ["Bolas"] = {	
            expadd = 2,
            expreq = 100,
            diff = 3000,
            hashname = "WEAPON_THROWN_BOLAS",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "deerskin",label = "deer skin", amount = 2},
                item2 = {name = "fibers",label = "Fibers", amount = 2},
                item3 = {name = "rock",label = "rock", amount = 2},
            }, 
        },
        ["Dynamite"] = {	
            expadd = 10,
            expreq = 20000,
            diff = 1500,
            hashname = "WEAPON_THROWN_DYNAMITE",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "nitrite",label = "nitrite", amount = 10},
                item2 = {name = "acid",label = "Acid", amount = 10},
                item3 = {name = "dynamite",label = "dynamite", amount = 1},
                item4 = {name = "elks",label = "elks Pelt", amount = 5},
                item5 = {name = "clay",label = "Clay", amount = 5},
                item6 = {name = "sap",label = "Sap", amount = 5},
                item7 = {name = "coal",label = "Coal", amount = 5},

                item8 = {name = "fibers",label = "Fibers", amount = 5},
                item9 = {name = "alcohol",label = "Alcohol", amount = 10},
                item10 = {name = "fertilizerbless",label = "Blessed Fertilizer", amount = 10},
                item11 = {name = "iron",label = "iron ore", amount = 10},
                item12 = {name = "porkfat",label = "Pork Fat", amount = 10},
                item13 = {name = "fertilizersyn",label = "Synful Fertilizer", amount = 10},
                item14 = {name = "salt",label = "Salt", amount = 10},
                
            }, 
        },
        ["Molotov"] = {	
            expadd = 10,
            expreq = 15000,
            diff = 3000,
            hashname = "WEAPON_THROWN_MOLOTOV",
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "alcohol",label = "alcohol", amount = 3},
                item4 = {name = "mooses",label = "mooses Pelt", amount = 2},
                item3 = {name = "glassbottle",label = "glassbottle", amount = 3},
                item7 = {name = "coal",label = "Coal", amount = 5},
                item8 = {name = "fibers",label = "Fibers", amount = 5},
                item9 = {name = "porkfat",label = "Pork Fat", amount = 10},
                item10 = {name = "nitrite",label = "Nitrite", amount = 10},


            }, 
        },

    },
    ["Shotguns"] = {
        ["Semiauto Shotgun"] = {	
            expadd = 3,
            expreq = 600,
            diff = 2000,
            hashname = "WEAPON_SHOTGUN_SEMIAUTO",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
            materials = {
                item1 = {name = "shotgunbarrel",label = "Shotgun Barrel", amount = 1},
                item2 = {name = "shotgunstock",label = "Shotgun Stock", amount = 1},
                item3 = {name = "ironbar",label = "Iron Bar", amount = 5},
                item7 = {name = "coal",label = "Coal", amount = 5},

            }, 
        },
        ["Sawedoff Shotgun"] = {	
            expadd = 3,
            expreq = 1000,
            diff = 4000,
            hashname = "WEAPON_SHOTGUN_SAWEDOFF",  
            jobonly = true,
            jobs = {"gunsmith","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","rguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "shotgunbarrel",label = "Shotgun Barrel", amount = 1},
                item2 = {name = "shotgunstock",label = "Shotgun Stock", amount = 1},
                item3 = {name = "ironbar",label = "Iron Bar", amount = 5},
                item7 = {name = "coal",label = "Coal", amount = 5},

            }, 
        },
        ["Repeating Shotgun"] = {	
            expadd = 3,
            expreq = 250,
            diff = 3000,
            hashname = "WEAPON_SHOTGUN_REPEATING",   
            jobonly = true,
            jobs = {"gunsmith","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","rguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "shotgunbarrel",label = "Shotgun Barrel", amount = 1},
                item2 = {name = "shotgunstock",label = "Shotgun Stock", amount = 1},
                item3 = {name = "ironbar",label = "Iron Bar", amount = 5},
                item7 = {name = "coal",label = "Coal", amount = 5},

            }, 
        },
        ["Pump Shotgun"] = {	
            expadd = 5,
            expreq = 2500,
            diff = 3000,
            hashname = "WEAPON_SHOTGUN_PUMP",  
            jobonly = true,
            jobs = {"gunsmith","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","rguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "shotgunbarrel",label = "Shotgun Barrel", amount = 1},
                item2 = {name = "shotgunstock",label = "Shotgun Stock", amount = 1},
                item3 = {name = "ironbar",label = "Iron Bar", amount = 5},
                item7 = {name = "coal",label = "Coal", amount = 5},

            }, 
        },
        ["Doublebarrel Shotgun"] = {	
            expadd = 2,
            expreq = 100,
            diff = 3000,
            hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "shotgunbarrel",label = "Shotgun Barrel", amount = 1},
                item2 = {name = "shotgunstock",label = "Shotgun Stock", amount = 1},
                item3 = {name = "ironbar",label = "Iron Bar", amount = 5},
                item7 = {name = "coal",label = "Coal", amount = 5},

            }, 
        },
        ["Exotic Doublebarrel Shotgun"] = {	
            expadd = 2,
            expreq = 100,
            diff = 3000,
            hashname = "WEAPON_SHOTGUN_DOUBLEBARREL_EXOTIC",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "shotgunbarrel",label = "Shotgun Barrel", amount = 1},
                item2 = {name = "shotgunstock",label = "Shotgun Stock", amount = 1},
                item3 = {name = "ironbar",label = "Iron Bar", amount = 5},
                item7 = {name = "coal",label = "Coal", amount = 5},

            }, 
        },
    },
    ["Misc."] = {
        ["Metal Dectector"] = {	 
            expadd = 1,
            expreq = 500,
            diff = 2000,
            hashname = "WEAPON_KIT_METAL_DETECTOR",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "deerskin", amount = 2},
                item2 = {name = "copper",label = "Copper", amount = 2},
            }, 
        },
        ["Halloween Lantern"] = {	
            expadd = 1,
            expreq = 50,
            diff = 3000,
            hashname = "WEAPON_MELEE_LANTERN_HALLOWEEN",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "deerskin",label = "deerskin", amount = 2},
                item2 = {name = "copper",label = "copper", amount = 1},
                item3 = {name = "ironbar",label = "Iron Bar", amount = 2},
            },  
        
        },
        ["Lasso"] = {	
            expadd = 2,
            expreq = 0,
            diff = 4500,
            hashname = "WEAPON_LASSO",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "deerskin",label = "deerskin", amount = 2},
                item2 = {name = "bucks",label = "Buck skin", amount = 2},
                item3 = {name = "fibers",label = "Fiber", amount = 3},
            }, 
        },
        ["Reinforced Lasso"] = {	
            expadd = 3,
            expreq = 1000,
            diff = 3000,
            hashname = "WEAPON_LASSO_REINFORCED",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "deerskin",label = "deerskin", amount = 3},
                item2 = {name = "fibers",label = "Fibers", amount = 5},
                item3 = {name = "copper",label = "copper", amount = 3},
                item7 = {name = "coal",label = "Coal", amount = 3},

            }, 
        },
        ["Improved Binoculars"] = {	
            expadd = 2,
            expreq = 100,
            diff = 2500,
            hashname = "WEAPON_KIT_BINOCULARS_IMPROVED",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 4},
                item2 = {name = "copper",label = "copper", amount = 4},
                item3 = {name = "deerskin",label = "deerskin", amount = 2},
            }, 
        },
        ["Binoculars"] = {	
            expadd = 1,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_KIT_BINOCULARS",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 2},
                item2 = {name = "copper",label = "copper", amount = 4},
                item3 = {name = "deerskin",label = "deerskin", amount = 4},
            }, 
        },
        ["Fishing Rod"] = {	
            expadd = 1,
            expreq = 0,
            diff = 5000,
            hashname = "WEAPON_FISHINGROD",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 1},
                item2 = {name = "hwood",label = "Hard Wood", amount = 4},
                item3 = {name = "deerskin",label = "deerskin", amount = 1},
            }, 
        },
        ["Camera"] = {	
            expadd = 1,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_KIT_CAMERA", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 2},
                item2 = {name = "copper",label = "Copper", amount = 2},
                item3 = {name = "lense",label = "Lense", amount = 2},
            }, 
        },
        ["Advanced Camera"] = {	
            expadd = 2,
            expreq = 100,
            diff = 2000,
            hashname = "WEAPON_kIT_CAMERA_ADVANCED",    
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 5},
                item2 = {name = "copper",label = "Copper", amount = 2},
                item3 = {name = "lense",label = "lense", amount = 4},
            }, 
        },
        ["Lantern"] = {	
            expadd = 1,
            expreq = 0,
            diff = 5000,
            hashname = "WEAPON_MELEE_LANTERN",     
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "coal",label = "Coal", amount = 2},
                item3 = {name = "deerskin",label = "deerskin", amount = 2},
            }, 
        },
        ["Davy Lantern"] = {	
            expadd = 1,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_MELEE_DAVY_LANTERN",    
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","twgunsmith","lympanyguns","bwgunsmith","annesburggunsmith","frontierarms","strwgunsmith"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 4},
                item2 = {name = "coal",label = "Coal", amount = 2},
                item3 = {name = "copper",label = "Copper", amount = 3},
            }, 
        },
    },
   
}