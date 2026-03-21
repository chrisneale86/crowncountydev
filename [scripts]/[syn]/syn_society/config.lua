

Config = {}

Config.vorp = true
Config.redem = false
Config.metadata = true 

Config.useDecayitems = true     --New set false if you dont use vorp inv 4.0 or higher 

--New Item Blacklist for storage items in this list will not beable to be stored in the storage
Config.ItemBlacklist = {


}

-------- only have 1 enabled----------
Config.normaldrawtext = true -- 
Config.drawtext3d = false --
--------------------------------------
Config.discordid = true 
Config.OpenMenu = 0x760A9C6F -- Key: G
Config.unemployed = "unemployed" --- make sure u set this up in vorp core config as well 
Config.salarytime = 15 -- every 30 minutes players get a salary from the jobs ledger (only if the job has a ledger set up and is included in the config below yes the money gets taken out of the ledger)
Config.maxsalary = 100 -- 30$ max salary --max salary job owners are allowed to set to ranks


Config.autocollect = true -- set to false if you dont want bills from the jobs mentioned below to be auto collected on the spot and instead go to the billing menu 
Config.autocollectjob = {"doctor","CCPolice","marshal"}

Config.Locations = { 
	--[[ Valentine = {	   -- you can add more job centers by copy pasting this 
        Pos = {x=-182.842, y=629.662, z=114.08}, -- location of job center 
        blipsprite = -272216216, -- blip sprite for job center
		Name = 'Job Center', -- blip name 
    }, ]]
    --[[ Valentine = {	   -- add more 
        Pos = {x=-182.842, y=629.662, z=114.08}, 
        blipsprite = -272216216, 
		Name = 'Job Center', 
	}, ]]
}

Config.AllowedJobCenterjobs = { -- make sure all these jobs are the same as the ones set for "group": in the configNui.js
    "horsetrainerbw",    -- job name
    "miner",
    "CCPolice",
    "doctor",
    -- Add more allowed jobs here that are set in the configNui.js file
}

Config.jobs = { 

    doctor = {	   
        Pos = { 
            {x=-288.89, y=808.89, z=119.38},
            {x=2976.17, y=571.99, z=44.81},
            {x=-1803.24, y=-432.46, z=158.83},
            {x=1370.36, y=-1312.08, z=77.93},
            {x=2721.72, y=-1225.92, z=50.36},
            {x=-831.95, y=-1269.82, z=43.68},
            {x=-5516.48, y=-2962.84, z=-0.81},
            {x=-3661.31, y=-2600.28, z=-13.28},
            {x=2921.79, y=1350.44, z=44.86},
            {x = -788.0, y = -1296.23, z = 43.73},
        }, 
        jobmenu = { 
            {x=-288.89, y=808.89, z=119.38},
            {x=2976.17, y=571.99, z=44.81},
            {x=-1803.24, y=-432.46, z=158.83},
            {x=1370.36, y=-1312.08, z=77.93},
            {x=2721.72, y=-1225.92, z=50.36},
            {x=-831.95, y=-1269.82, z=43.68},
            {x=-5520.48, y=-2973.68, z=-0.86},
            {x=-3661.31, y=-2600.28, z=-13.28},
            {x=2921.79, y=1350.44, z=44.86},
            {x = -780.7, y = -1298.54, z = 43.73},
        },
        blipsprite = -592068833,
		Name = 'Doctor',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 4,
        containername = "Doctor Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,

    },

        horsetrainerval = {	   
        Pos = { 
            {x = -363.56, y = 791.64, z = 116.19},
        }, 
        jobmenu = { 
           {x = -363.56, y = 791.64, z = 116.19},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'horsetrainerval',
        recruitmentrank = 0,
        bossrank = 4,
        containerid = 3,
        containername = "Horse Trainer Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,

    },

        bwsaloon = {	   
        Pos = { 
            {x = -812.84, y = -1348.36, z = 43.73},
        }, 
        jobmenu = { 
           {x = -822.16, y = -1351.01, z = 43.73},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'bwsaloon',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 20,
        containername = "bwsaloon Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        horsetrainerblk  = {	   
        Pos = { 
            {x = -867.1, y = -1366.58, z = 43.54},
        }, 
        jobmenu = { 
           {x = -878.46, y = -1361.65, z = 43.53},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'horsetrainerblk',
        recruitmentrank = 0,
        bossrank = 4,
        containerid = 5,
        containername = "horsetrainerblk Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        bwblacksmiths    = {	   
        Pos = { 
            {x = -862.2, y = -1392.6, z = 43.51},
        }, 
        jobmenu = { 
           {x = -863.4, y = -1390.08, z = 43.51},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'bwblacksmiths',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 16,
        containername = "bwblacksmiths Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        bwlumber    = {	   
        Pos = { 
            {x = -871.32, y = -1289.25, z = 43.1},
        }, 
        jobmenu = { 
           {x = -866.74, y = -1286.42, z = 43.1},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'bwlumber',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 12,
        containername = "bwlumber Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        bwgunsmith     = {	   
        Pos = { 
            {x = -834.56, y = -1268.15, z = 43.58},
        }, 
        jobmenu = { 
           {x = -828.19, y = -1276.13, z = 43.58},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'bwgunsmith',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 34,
        containername = "bwgunsmith Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        mcfarmer      = {	   
        Pos = { 
            {x = -2408.81, y = -2461.59, z = 60.17},
        }, 
        jobmenu = { 
           {x = -2391.34, y = -2466.87, z = 60.3},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'mcfarmer',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 28,
        containername = "mcfarmer Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        rguns       = {	   
        Pos = { 
            {x = 1324.36, y = -1321.26, z = 77.89},
        }, 
        jobmenu = { 
           {x = 1320.24, y = -1326.02, z = 77.88},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'rguns',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 31,
        containername = "rguns Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        wilsonco        = {	   
        Pos = { 
            {x = 719.12, y = -471.86, z = 78.73},
        }, 
        jobmenu = { 
           {x = 726.74, y = -472.41, z = 80.08},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'wilsonco',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 25,
        containername = "wilsonco Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

     

        annesburgcoal        = {	   
        Pos = { 
            {x = 2782.16, y = 1339.38, z = 71.19},
        }, 
        jobmenu = { 
           {x = 2799.58, y = 1350.11, z = 73.19},
        },
        showblip = true,
        blipsprite = 421058601,
		Name = 'annesburgcoal',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 41,
        containername = "annesburgcoal Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        horsetrainersai     = {	   
        Pos = { 
            {x = 2502.68, y = -1455.92, z = 46.31},
        }, 
        jobmenu = { 
           {x = 2515.05, y = -1462.38, z = 46.31},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'horsetrainersai',
        recruitmentrank = 0,
        bossrank = 4,
        containerid = 6,
        containername = "horsetrainersai Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        stdblacksmiths      = {	   
        Pos = { 
            {x = 2513.38, y = -1457.14, z = 46.31},
        }, 
        jobmenu = { 
           {x = 2514.4, y = -1452.15, z = 46.31},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'stdblacksmiths',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 17,
        containername = "stdblacksmiths Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        sdgunsmith      = {	   
        Pos = { 
            {x = 2715.53, y = -1285.48, z = 49.63},
        }, 
        jobmenu = { 
           {x = 2712.72, y = -1290.28, z = 49.63},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'sdgunsmith',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 32,
        containername = "sdgunsmith Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        stwblacksmiths      = {	   
        Pos = { 
            {x = -1817.87, y = -569.11, z = 155.98},
        }, 
        jobmenu = { 
           {x = -1822.79, y = -570.14, z = 156.01},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'stwblacksmiths',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 38,
        containername = "stwblacksmiths Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        horsetrainerstr       = {	   
        Pos = { 
            {x = -1819.6, y = -561.77, z = 156.06},
        }, 
        jobmenu = { 
           {x = -1822.68, y = -558.66, z = 156.18},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'horsetrainerstr',
        recruitmentrank = 0,
        bossrank = 4,
        containerid = 10,
        containername = "horsetrainerstr Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        strwgunsmith       = {	   
        Pos = { 
            {x = -1841.71, y = -417.02, z = 161.31},
        }, 
        jobmenu = { 
           {x = -1846.71, y = -421.1, z = 161.33},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'strwgunsmith',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 37,
        containername = "strwgunsmith Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },


        valblacksmiths       = {	   
        Pos = { 
            {x = -364.77, y = 797.23, z = 116.24},
        }, 
        jobmenu = { 
           {x = -373.92, y = 799.86, z = 116.05},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'valblacksmiths',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 18,
        containername = "valblacksmiths Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        vallumber       = {	   
        Pos = { 
            {x = -378.48, y = 830.19, z = 116.87},
        }, 
        jobmenu = { 
           {x = -381.69, y = 825.87, z = 116.84},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'vallumber',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 14,
        containername = "vallumber Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        farmer       = {	   
        Pos = { 
            {x = -389.41, y = 934.57, z = 118.43},
        }, 
        jobmenu = { 
           {x = -400.37, y = 937.86, z = 117.97},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'farmer',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 27,
        containername = "farmer Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        gunsmith       = {	   
        Pos = { 
            {x = -280.81, y = 781.61, z = 119.53},
        }, 
        jobmenu = { 
           {x = -283.35, y = 778.03, z = 119.5},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'gunsmith',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 29,
        containername = "gunsmith Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        railroader       = {	   
        Pos = { 
           {x = -883.67, y = -1241.45, z = 44.14},
        }, 
        jobmenu = { 
           {x = -880.03, y = -1242.61, z = 44.17},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'railroader',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 39,
        containername = "railroader Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        horsetraineremer       = {	   
        Pos = { 
           {x = 1405.12, y = 263.23, z = 89.68},
        }, 
        jobmenu = { 
           {x = 1403.08, y = 270.55, z = 89.48},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'horsetraineremer',
        recruitmentrank = 0,
        bossrank = 4,
        containerid = 8,
        containername = "horsetraineremer Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        annesburgcoal          = {	   
        Pos = { 
           vector3(2788.53, 1340.07, 71.37),
        }, 
        jobmenu = { 
           vector3(2787.93, 1336.74, 71.42),
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'annesburgcoal   ',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 41,
        containername = "annesburgcoal Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        armblacksmiths          = {	   
        Pos = { 
           {x = -2397.02, y = -2381.07, z = 61.29},
        }, 
        jobmenu = { 
           {x = -2400.52, y = -2380.95, z = 61.24},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'armblacksmiths   ',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 15,
        containername = "armblacksmiths Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        stdsaloon           = {	   
        Pos = { 
           {x = 2633.29, y = -1225.78, z = 53.43},
        }, 
        jobmenu = { 
           {x = 2639.86, y = -1227.81, z = 59.62},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'stdsaloon',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 22,
        containername = "stdsaloon  Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        stdblacksmiths1           = {	   
        Pos = { 
           {x = 1828.03, y = -1242.34, z = 42.5},
        }, 
        jobmenu = { 
           {x = 1829.33, y = -1244.33, z = 42.5},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'stdblacksmiths1',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 43,
        containername = "stdblacksmiths1 Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        valsaloon            = {	   
        Pos = { 
           {x = -314.3, y = 810.01, z = 119.03},
        }, 
        jobmenu = { 
           {x = -314.3, y = 810.01, z = 119.03},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'valsaloon',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 24,
        containername = "valsaloon Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,


    },

        strwlumber            = {	   
        Pos = { 
           {x = -1816.09, y = -428.18, z = 160.08},
        }, 
        jobmenu = { 
           {x = -1819.14, y = -431.62, z = 160.08},
        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'strwlumber',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 13,
        containername = "strwlumber Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },

        bwsweet            = {	   
        Pos = { 
           {x = -763.05, y = -1315.79, z = 43.77},
        }, 
        jobmenu = { 
           {x = -766.89, y = -1317.21, z = 43.76},

        },
        showblip = false,
        blipsprite = -643888085,
		Name = 'bwsweet',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 44,
        containername = "bwsweet Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,
        
    },

        MorrowsMiningCo            = {	   
        Pos = { 
           {x = 2339.81, y = 1401.6, z = 102.82},
        }, 
        jobmenu = { 
           {x = 2339.81, y = 1401.6, z = 102.82},

        },
        showblip = true,
        blipsprite = -643888085,
		Name = 'MorrowsMiningCo',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 45,
        containername = "MorrowsMiningCo Inv.",
        billing = true,
        webhook = false, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = false,

    },
    


    

}
-------------------
Config.alertsfunction = true 

Config.alerts = { 
    CCPolice = { -- job name
        command = "alertCCPolice",
        jobs = {"CCPolice","marshal"}, -- jobs the alert is sent to
        msg = "CCPolice help needed. check map for coords", -- alert sent to the players with the job name 
        isdoctor = false,
        blip = {
            blipsprite = 2119977580,
            Name = 'CCPolice Alert',
        }
    },
    doctor = {
        command = "alertdoctor",
        jobs = {"doctor"},
        msg = "doctor help needed. check map for coords",
        isdoctor = true,
        blip = {
            blipsprite = 2119977580,
            Name = 'Medic Alert',
        }
    },
    train = {
        command = "alerttrain",
        jobs = {"railroader"},
        msg = "Train needed. check map for coords",
        isdoctor = false,
        blip = {
            blipsprite = 2119977580,
            Name = 'Train Alert',
        }
    },
   
}
Config.medicresponse = "resp"
Config.cancelblipcommand = "calert" -- removes alert blips
Config.alertcooldown = 60 -- seconds
Config.viewonduty = "viewduty" -- allows admins or job boss rank to viw who is on duty. for boss rank players its just /viewduty, for admins its /viewduty jobname
Config.ondutycommand = "onduty"
Config.offdutycommad = "offduty"
Config.checkduty = "checkduty"
Config.nosalaryoffduty = true -- dont pay salary to off duty players for the jobs listed below 
Config.dutyjobs = {"CCPolice","doctor"}
Config.afkoffdutytimer = 5 -- go off duty if you are alerted and afk for 5 minutes
Config.ondutyinstant = true -- instantly go on duty when command is used 
Config.ondutytime = 2.5 -- minutes 


Config.dutystationsenabled = true -- 
Config.menuoption = false -- if set to true players can still use the onduty command but will be prompted to select their region
Config.dutystationjobs = {"CCPolice", "ValSheriff"}
Config.dutystationlocations = {
    ["Armadillo"] = {
        coords = {x = -3620.92, y = -2606.35, z = -13.33},
        job = {"CCPolice","marshal","ValSheriff"},
        showblip = true,
        blipname = "Armadillo Duty Station",
        blipsprite = -1656531561,
    },
    ["Blackwater"] = {
        coords = {x = -760.3990, y = -1234.1873, z = 48.5135},
        job = {"CCPolice","marshal","ValSheriff"},
        showblip = true,
        blipname = "Blackwater Duty Station",
        blipsprite = -1656531561,
    },
    ["Strawberry"] = {
        coords = {x = -1814.0, y = -354.8, z = 164.6},
        job = {"CCPolice","marshal","ValSheriff"},
        showblip = true,
        blipname = "Strawberry Duty Station",
        blipsprite = -1656531561,
    },
    ["Valentine"] = {
        coords = {x = -278.4, y = 805.3, z = 119.3},
        job = {"CCPolice","marshal","ValSheriff"},
        showblip = true,
        blipname = "Valentine Duty Station",
        blipsprite = -1656531561,
    },
    ["Annesburg"] = {
        coords = {x = 2908.3, y = 1308.9, z = 44.9},
        job = {"CCPolice","marshal","ValSheriff"},
        showblip = true,
        blipname = "Annesburg Duty Station",
        blipsprite = -1656531561,
    },
    ["Rhodes"] = {
        coords = {x = 1361.95, y = -1298.9, z = 77.76},
        job = {"CCPolice","marshal","ValSheriff"},
        showblip = true,
        blipname = "Rhodes Duty Station",
        blipsprite = -1656531561,
    },
    ["SaintDenis"] = {
        coords = {x = 2511.99, y = -1309.1, z = 48.95},
        job = {"CCPolice","marshal","ValSheriff"},
        showblip = true,
        blipname = "Saint Denis Duty Station",
        blipsprite = -1656531561,
    },
}

----------------
Config.Language = {
    usestation = "You Need To Use A Duty Station To Go On Duty", -- new language
    SelectedJob = "You have selected the job :", -- new language
    goonduty = "Press (G) To Go On Duty At: ", -- new language
    dutyregions = " Duty Regions", -- new language
    changingroom = "Changing Room",
    manageemployees = "Manage Employees",
    jobmenu = "Job Menu",
    nooutfits = "No saved outfits",
    outfits = "Outfits",
    yourjobis = "your job title is : ",
    hire = "Hire",
    fire = "Fire",
    setsalary = "Set Salary",
    setrank = "Set Rank",
    cantfire = "Cant Fire Yourself",
    canthire = "Cant Hire Yourself",
    youhired = "You Hired ",
    youfired = "You Fired ",
    hired = "You Were Hired as ",
    fired = "You Were Fired From ",
    changerank = "You Changed The Job Rank of ",
    rankchanged = "your Job Rank Was Changed To ",
    cantchangerank = "You Cant Change Your Own Rank",
    highestrank = "You Cant Rank Above Or Equal To The Highest Rank, Rank: ",
    Torank = " To Rank: ",
    listrank = " // Rank: ",
    confirm = "Confirm",
    playerid = "Player ID",
    rank = "Rank",
    salarys = "Salary",
    salary = "You Recieved A Salary Payment of: ",
    maxsalary = "Cannot exceed max salary of : ",
    salaryupdated = "You Updated The Salary Of Rank ",
    to = " To ",
    from = " From ",
    noledgercash = "Your Society Ledger Doesnt Have Enough Cash To Pay Salary",
    ledger = "Ledger",
    ledgercash = "Job Ledger Cash: ",
    depositcash = "Deposit Cash",
    withdrawcash = "Withdraw Cash",
    deposited = "You Deposited : ",
    invalidamount = "Invalid Amount",
    withdrew = "You Withdrew : ",
    inventory = "Inventory",
    qt = "Invalid quantity",
    carry = "You cant carry more items",
    limit = "You reached the limit for this item",
    someoneisclose = "Someone is too close to you",
    noplayer = "No Person Nearby",
    finesent = "You Sent A Bill Amount Of :",
    finerecieve = "You Recieved A Bill Amount Of :",
    bills = "Your Bills:",
    billpaid = "You Paid A Bill Amount Of: ",
    takena = " Has Taken A ",
    taken = " Has Taken ",
    put = " Deposited ",
    issuedbill = " Issued A Bill Amount Of ",
    paidbill = " Paid A Bill Amount Of",
    withdrews = " Withdrew An Amount Of ",
    deposits = " Deposited An Amount Of ",
    billss = "Bills:",
    viewbills = "View Bills",
    drawtextjobmenu = "Press G For Job Menu", 
    drawtextjobcenter = "Press G For Job Center", 
    nocash1 = "You Dont Have Enough Money", 
    maxslots = "cant store more items, slot limit is ", -- newline	
    dothis = "~e~do /",
    toremovenoti = " to remove notifications",
    needsyourhelp = "someone needs your help, check your map for a blip do ~e~(/",
    needsyourhelp2 = "~e~someone needs your help, check your map for a blip",
    torespond = ")~q~ to respond", 
    docontheway = "~e~Doctor is on the way",
    nodoc = "~e~ No Doctors Available",
    youonduty = "~e~ You Are on Duty",
    youoffduty = "~e~ You Are off Duty",
    duty = " On Duty",
    offD = " Off Duty",
    serverid = "Server ID: ",
    noneavailable = "None Available", 
    waitafew = "Cant Spam Wait a Few", 
    alertsent = "Alert Sent", 
    afkoffduty = "You were taken off duty for being AFK",
    wentonduty = "Is on Duty",
    wentoffduty = "Is off Duty",
    cantgoonduty = "cant go on duty if hogtied,dead or cuffed",
    issuedBillLogs = "Issued Bill",
    paidBillLogs = "Paid Bill",
    blacklistedItem = "Item Is Blacklisted", 
    
}
