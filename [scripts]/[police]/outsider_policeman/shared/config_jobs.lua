Config = Config or {}

-- config jobs this file is to make it easier for you but also to make it the way you want to do it.
-- you cant create your own table names and use them unique per locations
-- you can also use just one job as long you add all locations to the job and its permissions
-- this is just a guide to help you understand how to do it.

-- permissions for the basic things
-- this will be uses bellow in the jobs table
local permissions = {

    HighRanks = {        -- any name you want you can create custom name for this
        --  Valentine = { example if you want each location to have its own permissions add any name here for organisation and put it in the jobs table
        AllowAll = true, -- THIS ALLOWS ALL FOR PLAYER
        -- add more locations here if you want
        --}
    },

    MidiumRanks = {
        --  Valentine = { example if you want each location to have its own permissions add any name here for organisation and put it in the jobs table
        AllowAll = false,
        CanOpenSheriffMenu = false, -- can open sheriff menu, this enables hire fire take and put money THIS IS WHAT MAKES THIS PLAYER TO BE A SHERIFF
        SheriffMenuPermissions = {  --NEW PERMISSIONS FOR SHERIFF MENU
            EmployeeMenu = false,
            LedgerMenu = true,
            BillingMenu = false,
            WantedMenu = false,
        },
        CanUseBillingMenu = true,         -- can use bill menu and bill players
        CanNegotiateFines = true,         -- can negotiate fines
        CanHangPlayers = false,           -- if true this grade will be able to use commands to hang players using in Gallow.Config
        CanUseDutyStation = true,         -- can use duty
        DutyStationPermissions = {        -- NEW UPDATE 2025-10-22
            CanRequestBackup = false,     -- allows to use the button request back up from the duty system
            CanRequestToGoOnDuty = false, -- allows to use the button request the player go on duty from the duty system
            CanEditOrders = false,        -- allows to edit orders from the duty system
            CanUseDutyList = false,
        },
        CanUseStationMenu = true,
        CanUseWardrobe = true,
        CanUsePersonalLockers = true,
        CanUseRacks = true,   -- can use racks
        CanUseStables = true, -- can use stables
        --}
    },

    LowRanks = {
        AllowAll = false,
        CanOpenSheriffMenu = false, -- can open sheriff menu, this enables hire fire take and put money THIS IS WHAT MAKES THIS PLAYER TO BE A SHERIFF
        SheriffMenuPermissions = {  --NEW PERMISSIONS FOR SHERIFF MENU
            EmployeeMenu = false,
            LedgerMenu = false,
            BillingMenu = false,
            WantedMenu = false,
        },
        CanUseBillingMenu = true,         -- can use bill menu and bill players
        CanUseDutyStation = true,         -- can use duty
        DutyStationPermissions = {        -- NEW UPDATE 2025-10-22
            CanRequestBackup = false,     -- allows to use the button request back up from the duty system
            CanRequestToGoOnDuty = false, -- allows to use the button request the player go on duty from the duty system
            CanEditOrders = false,        -- allows to edit orders from the duty system
            CanUseDutyList = false,
        },
        CanNegotiateFines = false, -- can negotiate fines
        CanHangPlayers = false,    -- if true this grade will be able to use commands to hang players using in Gallow.Config
        CanUseStationMenu = true,
        CanUseWardrobe = true,
        CanUsePersonalLockers = true,
        CanUseRacks = false,   -- can use racks
        CanUseStables = false, -- can use stables
    }

}

-- to avoid duplicated code
-- permissions for the records book
-- this will be uses bellow in the jobs table
local records = {

    HighRanks = {        -- any name you want you can create custom name for this

        AllowAll = true, -- allows everything

    },

    MidiumRanks = {
        --  Valentine = { example if you want each location to have its own permissions add any name here for organisation and put it in the jobs table
        CanOpenReportSystem = true, -- can open report system
        MainMenu = {
            -- can open these, remove or put false to dont allow this job and grade
            Occurrences = {
                CanOpen = true,
                CanCreateNewOccurrence = true,
                CanEditOccurrence = true,
                CanArchiveOccurrence = false
            },
            Records = {
                CanOpen = true,
                CanDelete = false,
                CanEdit = true
            },
            Wanted = {
                CanOpen = true,
                CanCreateNewReport = true,
                CanEditReport = true,
                CanReject = true,
                CanAccept = true,
                CanDelete = true
            },
            Archives = {
                CanOpen = true, CanDelete = false
            },
            PenalCode = {
                CanOpen = true
            },
            JailRecords = {
                CanOpen = true,
                CanEdit = true,
                CanReleasePlayer = true,
                CanAccept = true,
                CanDelete = true,
                SetWanted = true,
                AddBackToJail = true,
                ConfinePlayer = true
            },
            Investigation = {
                CanOpen = true,
                CanCreateNewInvestigation = true,
                CanEditInvestigation = true,
                CanDeleteInvestigation = true,
                CanReject = true,
                CanAccept = true,
                CanDelete = true
            }
            --}
        },
    },

    LowRanks = {
        -- no name here means you can use this one for all locations without having to repeat the code
        CanOpenReportSystem = true, -- can open report system
        MainMenu = {
            -- can open these, remove or put false to dont allow this job and grade
            Occurrences = { CanOpen = true, CanCreateNewOccurrence = true, CanEditOccurrence = true, CanArchiveOccurrence = false },
            Records = { CanOpen = true, CanDelete = false, CanEdit = true },
            Wanted = { CanOpen = true, CanCreateNewReport = true, CanEditReport = true, CanReject = false, CanAccept = false, CanDelete = false },
            Archives = { CanOpen = true, CanDelete = false },
            PenalCode = { CanOpen = true },
            JailRecords = { CanOpen = true, CanEdit = true, CanReleasePlayer = true, CanAccept = true, CanDelete = false, SetWanted = true, AddBackToJail = true, ConfinePlayer = true },
            Investigation = { CanOpen = true, CanCreateNewInvestigation = true, CanEditInvestigation = true, CanDeleteInvestigation = true, CanReject = true, CanAccept = true, CanDelete = true }
        },
    }


}

--[[
    --badge models you can use

    s_badgedeputy01x
    s_badgepinkerton01x
    s_badgesherif01x
    s_badgeusmarshal01x
    p_deputybadge01x
    s_badgepolice01x
 ]]

-- to avoid duplicated code
local badges = {

    HighRanks = { -- any name you want
        Male = { Model = "s_badgepolice01x", x = 0.0, y = 0.19, z = 0.0, rx = 0.0, ry = 0.0, rz = 0.0, Bone = 432 },
        Female = { Model = "s_badgepolice01x", x = 0.17, y = -0.19, z = -0.25, rx = -12.0, ry = 0.0, rz = 30.0, Bone = 432 }
    },
    MidiumRanks = {
        Male = { Model = "s_badgepolice01x", x = 0.06, y = 0.17, z = 0.12, rx = -24.0, ry = -71.0, rz = -98.0, Bone = 432 }, -- based on their outfits position the badge
        Female = { Model = "s_badgepolice01x", x = 0.06, y = 0.17, z = 0.12, rx = -24.0, ry = -71.0, rz = -98.0, Bone = 432 }
    },

    LowRanks = {
        Male = { Model = "s_badgepolice01x", x = 0.06, y = 0.17, z = 0.12, rx = -24.0, ry = -71.0, rz = -98.0, Bone = 432 }, -- based on their outfits position the badge
        Female = { Model = "s_badgepolice01x", x = 0.06, y = 0.17, z = 0.12, rx = -24.0, ry = -71.0, rz = -98.0, Bone = 432 }
    }

}

-- to avoid duplicated code
-- clothes predefined, you can find the hashes in the vorp_characters script and in game look for the index number to find them in characters script where the clothes is
-- if you use outsider outfits you dont need this just give them the items in their personal locker
local clothes = {

    HighRanks = { -- any name you want
        Male = { pants = 463442381, shirt = -1903158708, gloves = 745251899, boots = -499919396, hat = -1540686209, coat = 543785797, vest = -304997362, holster = 1997008874 },
        Female = { pants = 463442381, shirt = -1903158708, gloves = 745251899, boots = -499919396, hat = -1540686209, coat = 543785797, vest = -304997362, holster = 1997008874 }
    },

    MidiumRanks = {
        Male = { pants = 463442381, shirt = -1903158708, gloves = 745251899, boots = -499919396, hat = -1540686209, coat = 543785797, vest = -304997362, holster = 1997008874 },
        Female = { pants = 463442381, shirt = -1903158708, gloves = 745251899, boots = -499919396, hat = -1540686209, coat = 543785797, vest = -304997362, holster = 1997008874 }
    },

    LowRanks = {
        Male = { pants = 463442381, shirt = -1903158708, gloves = 745251899, boots = -499919396, hat = -1540686209, coat = 543785797, vest = -304997362, holster = 1997008874 },
        Female = { pants = 463442381, shirt = -1903158708, gloves = 745251899, boots = -499919396, hat = -1540686209, coat = 543785797, vest = -304997362, holster = 1997008874 }
    }
}

-- these jobs can be hired on these locations NEW
Config.JobsHire = {
    Valentine = {
        CCPolice = true,
        CCPolice = true,
        -- add more jobs here like black water etc if you want this town to be able to hire these jobs
    },
    Blackwater = {
        CCPolice = true,
        CCPolice = true,
    },
    Strawberry = {
        CCPolice = true,
        CCPolice = true,
    },
    Armadillo = {
        CCPolice = true,
        ArmDeputy = true,
    },
    Rhodes = {
        CCPolice = true,
        CCPolice = true,
    },
    SaintDenis = {
        CCPolice = true,
        CCPolice = true,
    },
    Tumbleweed = {
        CCPolice = true,
        CCPolice = true,
    },
    Annesburg = {
        CCPolice = true,
        CCPolice = true,
    },
    Sisika = {
        CCPolice = true,
        CCPolice = true,
    },

}

-- to avoid duplicated code
-- jobs for the police department
Config.Jobs = {

    CCPolice = {                                       -- sheriffs dont need to be hired, just use /addJob any other job must be hired in the boss menu
     [0] = {                                          -- rank
            Label = "CCPolice",                           -- job label
            Name = "CCPolice",                         -- job name
            JobSalary = 0.25,                            -- salary per minute
            Img = "provision_sheriff_star",              -- badge image
            BadgeData = badges.HighRanks,                -- badge data
            Clothes = clothes.HighRanks,                 -- clothes
            IsBoss = true,                               -- if true this player will be the boss meaning they dont need to be hired you can use /addJob to give them the job anyone else must be hired. they still need permssions added
            DefaultLocation = "Blackwater",               -- ONLY FOR ISBOSS == TRUE others will default to where they were hired
              Locations = {                                -- this rank can access all this locations
                Valentine = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here

                },
                Blackwater = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },

                Annesburg = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },

                  Tumbleweed = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },

                  Armadillo = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },

                  Strawberry = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },

                  SaintDenis = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },

                  Rhodes = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },

                  Sisika = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },
                -- can add more locations here with permissions, this will give this rank to have permissions in other places without having to go on duty there or block it
            },
        },     
    [1] = {                                          -- rank
            Label = "Police",                           -- job label
            Name = "CCPolice",                         -- job name
            JobSalary = 0.25,                            -- salary per minute
            Img = "provision_sheriff_star",              -- badge image
            BadgeData = badges.HighRanks,                -- badge data
            Clothes = clothes.HighRanks,                 -- clothes
            IsBoss = true,                               -- if true this player will be the boss meaning they dont need to be hired you can use /addJob to give them the job anyone else must be hired. they still need permssions added
            DefaultLocation = "Blackwater",               -- ONLY FOR ISBOSS == TRUE others will default to where they were hired
                 Locations = {                                -- this rank can access all this locations
                Valentine = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here

                },
                Blackwater = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },

                Annesburg = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },

                  Tumbleweed = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },

                  Armadillo = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },

                  Strawberry = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },

                  SaintDenis = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },

                  Rhodes = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },

                  Sisika = {
                    permissions = permissions.LowRanks, -- edit permissions in here
                    records = records.LowRanks,         -- edit permissions for records here
                },
                -- can add more locations here with permissions, this will give this rank to have permissions in other places without having to go on duty there or block it
            },
        },     
    [2] = {                                          -- rank
            Label = "Police",                           -- job label
            Name = "CCPolice",                         -- job name
            JobSalary = 0.25,                            -- salary per minute
            Img = "provision_sheriff_star",              -- badge image
            BadgeData = badges.HighRanks,                -- badge data
            Clothes = clothes.HighRanks,                 -- clothes
            IsBoss = true,                               -- if true this player will be the boss meaning they dont need to be hired you can use /addJob to give them the job anyone else must be hired. they still need permssions added
            DefaultLocation = "Blackwater",               -- ONLY FOR ISBOSS == TRUE others will default to where they were hired
            Locations = {                                -- this rank can access all this locations
                Valentine = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here

                },
                Blackwater = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                Annesburg = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  Tumbleweed = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  Armadillo = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  Strawberry = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  SaintDenis = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  Rhodes = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  Sisika = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },
            },
        },            
    
    [3] = {                                          -- rank
            Label = "Police",                           -- job label
            Name = "CCPolice",                         -- job name
            JobSalary = 0.25,                            -- salary per minute
            Img = "provision_sheriff_star",              -- badge image
            BadgeData = badges.HighRanks,                -- badge data
            Clothes = clothes.HighRanks,                 -- clothes
            IsBoss = true,                               -- if true this player will be the boss meaning they dont need to be hired you can use /addJob to give them the job anyone else must be hired. they still need permssions added
            DefaultLocation = "Blackwater",               -- ONLY FOR ISBOSS == TRUE others will default to where they were hired
           Locations = {                                -- this rank can access all this locations
                Valentine = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here

                },
                Blackwater = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                Annesburg = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  Tumbleweed = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  Armadillo = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  Strawberry = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  SaintDenis = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  Rhodes = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  Sisika = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },
            },
        },          
    [4] = {                                          -- rank
            Label = "Police",                           -- job label
            Name = "CCPolice",                         -- job name
            JobSalary = 0.25,                            -- salary per minute
            Img = "provision_sheriff_star",              -- badge image
            BadgeData = badges.MidiumRanks,                -- badge data
            Clothes = clothes.MidiumRanks,                 -- clothes
            IsBoss = true,                               -- if true this player will be the boss meaning they dont need to be hired you can use /addJob to give them the job anyone else must be hired. they still need permssions added
            DefaultLocation = "Blackwater",               -- ONLY FOR ISBOSS == TRUE others will default to where they were hired
              Locations = {                                -- this rank can access all this locations
                Valentine = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here

                },
                Blackwater = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                Annesburg = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  Tumbleweed = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  Armadillo = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  Strawberry = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  SaintDenis = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  Rhodes = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },

                  Sisika = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here
                    records = records.MidiumRanks,         -- edit permissions for records here
                },
            },
        },       
    
    
    
    [5] = {                                          -- rank
            Label = "Police",                           -- job label
            Name = "CCPolice",                         -- job name
            JobSalary = 0.25,                            -- salary per minute
            Img = "provision_sheriff_star",              -- badge image
            BadgeData = badges.HighRanks,                -- badge data
            Clothes = clothes.HighRanks,                 -- clothes
            IsBoss = true,                               -- if true this player will be the boss meaning they dont need to be hired you can use /addJob to give them the job anyone else must be hired. they still need permssions added
            DefaultLocation = "Blackwater",               -- ONLY FOR ISBOSS == TRUE others will default to where they were hired
               Locations = {                                -- this rank can access all this locations
                Valentine = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here

                },
                Blackwater = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },

                Annesburg = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },

                  Tumbleweed = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },

                  Armadillo = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },

                  Strawberry = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },

                  SaintDenis = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },

                  Rhodes = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },

                  Sisika = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },
                -- can add more locations here with permissions, this will give this rank to have permissions in other places without having to go on duty there or block it
            },
        },    
    
    [6] = {                                          -- rank
            Label = "Police",                           -- job label
            Name = "CCPolice",                         -- job name
            JobSalary = 0.25,                            -- salary per minute
            Img = "provision_sheriff_star",              -- badge image
            BadgeData = badges.HighRanks,                -- badge data
            Clothes = clothes.HighRanks,                 -- clothes
            IsBoss = true,                               -- if true this player will be the boss meaning they dont need to be hired you can use /addJob to give them the job anyone else must be hired. they still need permssions added
            DefaultLocation = "Blackwater",               -- ONLY FOR ISBOSS == TRUE others will default to where they were hired
            Locations = {                                -- this rank can access all this locations
                Valentine = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here

                },
                Blackwater = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },

                Annesburg = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },

                  Tumbleweed = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },

                  Armadillo = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },

                  Strawberry = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },

                  SaintDenis = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },

                  Rhodes = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },

                  Sisika = {
                    permissions = permissions.HighRanks, -- edit permissions in here
                    records = records.HighRanks,         -- edit permissions for records here
                },
                -- can add more locations here with permissions, this will give this rank to have permissions in other places without having to go on duty there or block it
            },
        },
         -- add more ranks if you want
    },


   --[[ValDeputy = {
        [0] = {
            Label = "Deputy",
            Name = "ValDeputy",
            JobSalary = 0.5,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Valentine = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks,         -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [1] = {
            Label = "Deputy",
            Name = "ValDeputy",
            JobSalary = 0.5,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Valentine = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
                Blackwater = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
                Annesburg = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [2] = {
            Label = "Deputy",
            Name = "ValDeputy",
            JobSalary = 0.5,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Valentine = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [3] = {
            Label = "Deputy",
            Name = "ValDeputy",
            JobSalary = 0.5,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Valentine = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [4] = {
            Label = "Deputy",
            Name = "ValDeputy",
            JobSalary = 0.5,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Valentine = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [5] = {
            Label = "Deputy",
            Name = "ValDeputy",
            JobSalary = 0.5,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Valentine = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [6] = {
            Label = "Deputy",
            Name = "ValDeputy",
            JobSalary = 0.5,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Valentine = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
                Blackwater = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
                Annesburg = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [7] = {
            Label = "Deputy",
            Name = "ValDeputy",
            JobSalary = 0.5,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Valentine = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [8] = {
            Label = "Deputy",
            Name = "ValDeputy",
            JobSalary = 0.5,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Valentine = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
    },

    --[[StrSheriff = {
        [2] = {
            Label = "Sheriff",
            Name = "StrSheriff",
            JobSalary = 10,
            Img = "provision_sheriff_star",
            BadgeData = badges.HighRanks,
            Clothes = clothes.HighRanks,
            IsBoss = true,                  -- if true this player will be the boss meaning they dont need to be hired you can use /addJob to give them the job anyone else must be hired
            DefaultLocation = "Strawberry", -- ONLY FOR ISBOSS == TRUE others will default to where they were hired
            Locations = {
                Strawberry = {
                    permissions = permissions.HighRanks, -- edit permissions in here or if it has custom name then its permissions.HighRanks.CustomName
                    records = records.HighRanks          -- edit permissions for records here or if it has custom name then its records.HighRanks.CustomName
                },
            },
        },
    },

    StrDeputy = {
        [0] = {
            Label = "Deputy",
            Name = "StrDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Strawberry = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [1] = {
            Label = "Deputy",
            Name = "StrDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Strawberry = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
    },

    BlwSheriff = {
        [2] = {
            Label = "Sheriff",
            Name = "BlwSheriff",
            JobSalary = 10,
            Img = "provision_sheriff_star",
            BadgeData = badges.HighRanks,
            Clothes = clothes.HighRanks,
            IsBoss = true,                  -- if true this player will be the boss meaning they dont need to be hired you can use /addJob to give them the job anyone else must be hired
            DefaultLocation = "Blackwater", -- ONLY FOR ISBOSS == TRUE others will default to where they were hired
            Locations = {
                Blackwater = {
                    permissions = permissions.HighRanks, -- edit permissions in here or if it has custom name then its permissions.HighRanks.CustomName
                    records = records.HighRanks          -- edit permissions for records here or if it has custom name then its records.HighRanks.CustomName
                },
            },
        },
    },

    BlwDeputy = {
        [0] = {
            Label = "Deputy",
            Name = "BlwDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Blackwater = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [1] = {
            Label = "Deputy",
            Name = "BlwDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Blackwater = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
    },

    RhoSheriff = {
        [2] = {
            Label = "Sheriff",
            Name = "RhoSheriff",
            JobSalary = 10,
            Img = "provision_sheriff_star",
            BadgeData = badges.HighRanks,
            Clothes = clothes.HighRanks,
            IsBoss = true,              -- if true this player will be the boss meaning they dont need to be hired you can use /addJob to give them the job anyone else must be hired
            DefaultLocation = "Rhodes", -- ONLY FOR ISBOSS == TRUE others will default to where they were hired
            Locations = {
                Rhodes = {
                    permissions = permissions.HighRanks, -- edit permissions in here or if it has custom name then its permissions.HighRanks.CustomName
                    records = records.HighRanks          -- edit permissions for records here or if it has custom name then its records.HighRanks.CustomName
                },
            },
        },
    },

    RhoDeputy = {
        [0] = {
            Label = "Deputy",
            Name = "RhoDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Rhodes = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [1] = {
            Label = "Deputy",
            Name = "RnDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Rhodes = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
    },

    StdSheriff = {
        [2] = {
            Label = "Sheriff",
            Name = "StdSheriff",
            JobSalary = 10,
            Img = "provision_sheriff_star",
            BadgeData = badges.HighRanks,
            Clothes = clothes.HighRanks,
            IsBoss = true,                  -- if true this player will be the boss meaning they dont need to be hired you can use /addJob to give them the job anyone else must be hired
            DefaultLocation = "SaintDenis", -- ONLY FOR ISBOSS == TRUE others will default to where they were hired
            Locations = {
                SaintDenis = {
                    permissions = permissions.HighRanks, -- edit permissions in here or if it has custom name then its permissions.HighRanks.CustomName
                    records = records.HighRanks          -- edit permissions for records here or if it has custom name then its records.HighRanks.CustomName
                },
            },
        },
    },

    StdDeputy = {
        [0] = {
            Label = "Deputy",
            Name = "StdDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                SaintDenis = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [1] = {
            Label = "Deputy",
            Name = "StdDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                SaintDenis = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
    },

    ArmSheriff = {
        [2] = {
            Label = "Sheriff",
            Name = "ArmSheriff",
            JobSalary = 10,
            Img = "provision_sheriff_star",
            BadgeData = badges.HighRanks,
            Clothes = clothes.HighRanks,
            IsBoss = true,                 -- if true this player will be the boss meaning they dont need to be hired you can use /addJob to give them the job anyone else must be hired
            DefaultLocation = "Armadillo", -- ONLY FOR ISBOSS == TRUE others will default to where they were hired
            Locations = {
                Armadillo = {
                    permissions = permissions.HighRanks, -- edit permissions in here or if it has custom name then its permissions.HighRanks.CustomName
                    records = records.HighRanks          -- edit permissions for records here or if it has custom name then its records.HighRanks.CustomName
                },
            },
        },
    },

    ArmDeputy = {
        [0] = {
            Label = "Deputy",
            Name = "ArmDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Armadillo = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [1] = {
            Label = "Deputy",
            Name = "ArmDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Armadillo = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
    },

    TblSheriff = {
        [2] = {
            Label = "Sheriff",
            Name = "TblSheriff",
            JobSalary = 10,
            Img = "provision_sheriff_star",
            BadgeData = badges.HighRanks,
            Clothes = clothes.HighRanks,
            IsBoss = true,                  -- if true this player will be the boss meaning they dont need to be hired you can use /addJob to give them the job anyone else must be hired
            DefaultLocation = "Tumbleweed", -- ONLY FOR ISBOSS == TRUE others will default to where they were hired
            Locations = {
                Tumbleweed = {
                    permissions = permissions.HighRanks, -- edit permissions in here or if it has custom name then its permissions.HighRanks.CustomName
                    records = records.HighRanks          -- edit permissions for records here or if it has custom name then its records.HighRanks.CustomName
                },
            },
        },
    },

    TblDeputy = {
        [0] = {
            Label = "Deputy",
            Name = "TblDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Tumbleweed = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [1] = {
            Label = "Deputy",
            Name = "TblDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Tumbleweed = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
    },

    AnnSheriff = {
        [2] = {
            Label = "Sheriff",
            Name = "AnnSheriff",
            JobSalary = 10,
            Img = "provision_sheriff_star",
            BadgeData = badges.HighRanks,
            Clothes = clothes.HighRanks,
            IsBoss = true,                 -- if true this player will be the boss meaning they dont need to be hired you can use /addJob to give them the job anyone else must be hired
            DefaultLocation = "Annesburg", -- ONLY FOR ISBOSS == TRUE others will default to where they were hired
            Locations = {
                Annesburg = {
                    permissions = permissions.HighRanks, -- edit permissions in here or if it has custom name then its permissions.HighRanks.CustomName
                    records = records.HighRanks          -- edit permissions for records here or if it has custom name then its records.HighRanks.CustomName
                },
            },
        },
    },

    AnnDeputy = {
        [0] = {
            Label = "Deputy",
            Name = "AnnDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Annesburg = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [1] = {
            Label = "Deputy",
            Name = "AnnDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Annesburg = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
    },

    SskSheriff = {
        [2] = {
            Label = "Sheriff",
            Name = "SskSheriff",
            JobSalary = 10,
            Img = "provision_sheriff_star",
            BadgeData = badges.HighRanks,
            Clothes = clothes.HighRanks,
            IsBoss = true,              -- if true this player will be the boss meaning they dont need to be hired you can use /addJob to give them the job anyone else must be hired
            DefaultLocation = "Sisika", -- ONLY FOR ISBOSS == TRUE others will default to where they were hired
            Locations = {
                Sisika = {
                    permissions = permissions.HighRanks, -- edit permissions in here or if it has custom name then its permissions.HighRanks.CustomName
                    records = records.HighRanks          -- edit permissions for records here or if it has custom name then its records.HighRanks.CustomName
                },
            },
        },
    },

    SskDeputy = {
        [0] = {
            Label = "Deputy",
            Name = "SskDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Sisika = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
        [1] = {
            Label = "Deputy",
            Name = "SskDeputy",
            JobSalary = 10,
            Img = "provision_trinket_deputy_star",
            BadgeData = badges.MidiumRanks,
            Clothes = clothes.MidiumRanks,
            Locations = {
                Sisika = {
                    permissions = permissions.MidiumRanks, -- edit permissions in here or if it has custom name then its permissions.MidiumRanks.CustomName
                    records = records.MidiumRanks          -- edit permissions for records here or if it has custom name then its records.MidiumRanks.CustomName
                },
            },
        },
    },]]--
}


