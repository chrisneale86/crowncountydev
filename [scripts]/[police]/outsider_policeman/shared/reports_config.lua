Reports        = {}
-- some translation needs to be done in the html file outsider_policeman/web/index.html
--Tranlation

Reports.Config = {
    Buttons                = {
        MainMenu = {
            Occurences = { label = 'Criminal Occurrences ', Img = "folder_recipe_pamphlets.png", desc = "press to view criminal occurrences files" },
            Records = { label = 'Criminal Records', Img = "document_wild_man_journal.png", desc = "press to view criminal record files" },
            Jail = { label = 'Jail Records', Img = "weapon_kit_camera_advanced.png", desc = " press to view Jail department" },
            Wanted = { label = 'Criminal Requests', Img = "document_bounty_poster.png", desc = "press to view current wanted criminals files" },
            Archives = { label = 'Archived Reports', Img = "kit_role_naturalist_compendium.png", desc = "press to view archived report files" },
            PenalCode = { label = 'Penal Code', Img = "generic_book.png", desc = "press to view Penal Code card" },
            Investigation = { label = 'Investigation', Img = "kit_role_naturalist_compendium.png", desc = "press to view Investigation files" },
        }
    },
    PenalContainer         = {
        Time = "Time to be jailed: {days} Days",
        Fine = "Fine: {amount} | Exp Date: {days} ",
        Penal = "Penal Code: {code}",
        PC = "PC "
    },
    Headears               = {
        Container = "LAW DEPT",
        NewInvestigation = 'New Investigation',
        UpdateInvestigation = 'Update Investigation',
        NewRequest = 'New Request', -- NEW
        CreateCase = 'Create Case', -- NEW

    },
    ArchivesContainer      = {
        Delete = "Delete",
        Evidence = "Evidence",

    },
    OccurrenceContainer    = {
        Case = "Case: #{case}",
        ReportedBy = "Reported By: ",
        Location = "Location: {location} ",
        Officers = "Officers Involved",
        Witnesses = "Witnesses",
        Suspects = "Suspects",
        Charges = "Charges",
        Desc = "Report Description",
        NoOccurrences = "No occurrences to display.",
        NewOccurrence = "New Occurrence",
        EditedBy = "Occurrence has been edited by: {name}",
        Archive = "Archive",
        Edit = "Edit",
        Evidence = "Evidence",
        Locker = "Locker",
        Types = { -- these are found in html file if you add or change you also must do it here
            JAIL = "JAIL",
            ARREST = "ARREST",
            INCIDENT = "INCIDENT",
            GENERAL = "GENERAL",
        }
    },
    RequestContainer       = {
        AcceptedBy = "Accepted By: ",
        RejectedBy = "Rejected By: ",
    },
    WantedContainer        = {
        Awaiting = "Awaiting Approval",
        Edit = "Edit",
        Delete = "Delete",
        Accept = "Accept",
        Reject = "Reject",
        Types = {
            WARRANT = "WARRANT",
            ARREST = "ARREST",
            BOLO = "BOLO",
            BOUNTY = "BOUNTY",
        }
    },
    RecordsContainer       = {
        Forename = "Forename: ",
        Surname = "Surname: ",
        NickName = "NickName: ",
        Gender = "Gender: ",
        Age = "Age: ",
        Wanted = "Wanted: ",
        TimesJailed = "Times Jailed: ",
        IsWanted = "This Person is wanted",
        UpdateImage = "Update Image",
        ImagePlaceHolder = "URL images must be 400x400px and must be https://...",
        InvalidImage = "images must be 400x400px",
        InvalidUrl = "Invalid URL",
        UpdateNotes = "Update Notes",
        SaveNotes = "Save Notes",
        Title = "Criminal history",
        Delete = "Delete",
        ChargeTitle = "Charge Title",
        ChargeType = "Charge Type",
        ChargeDate = "Charge Date",
        ChargeDesc = "Charge Description",
        ChargeCharge = "PC Charges",
        NoNotes = "there is no notes about this player",
        Close = 'close', --NEW
        Text = "Search for a character name to view their records.",
        Occurrence = "Occurrence",
        Types = { -- these are found in html file if you add or change you also must do it here
            JAIL = "JAIL",
            ARREST = "ARREST",
            INCIDENT = "INCIDENT",
            GENERAL = "GENERAL",
        }


    },
    JailContainer          = {
        Delete         = "Delete",
        Accept         = "Accept",
        SetWanted      = "Set Wanted",
        AddRemove      = "Add/Remove",
        Release        = "Release",
        Reject         = "Reject",
        Jail           = "Jail",
        Edit           = "Edit",
        Confine        = "Confine",
        UnConfine      = "UnConfine",
        Currently      = "currently in Sisika",
        HasBeen        = "This player has been released from Sisika",
        Awaiting       = "Awaiting for Acceptance into the facilities",
        Escaped        = "This player has escaped from Sisika",
        Placed         = "and have been place on the wanted board acorss towns",
        SetWantedBoard = " set it to wanted to place on the wanted board across towns",
        PlaceHolder    = "Increase/Decrease hours EX: 1 or -1",
        ReleaseDate    = "Release Date",
        TimeToServe    = "Time to serve",
        TimesUp        = "Time is up for release",
        Name           = "Name ",
        TimeFacing     = "Time Facing ",
        Cell           = "Cell Assigned",
        TimeServed     = "Time Served",
        JailedBy       = "Jailed By ",
        JailedDate     = "Jailed Date",
        InSolitary     = "In Confinement ",
        Yes            = "Yes",
        No             = "No",
        Image          = "Image ", --NEW
        Types          = {         --NEW
            JAILED = "JAILED",
            RELEASED = "RELEASED",
            AWAIT = "AWAITING",
            ESCAPED = "ESCAPED",
        }
    },
    InvestigationContainer = {
        Delete = "Delete",
        Edit = "Edit",
        Accept = "Accept",
        Reject = "Reject",
        Awaiting = "Awaiting Approval",
        SaveCase = "Save Case",
        Types = { -- these are found in html file if you add or change you also must do it here
            KIDNAPPING = "KIDNAPPING",
            HOMICIDE = "HOMICIDE",
            ROBBERY = "ROBBERY",
        }
    },
    WantedBoard            = {
        Name = "Name ",
        Gender = "Gender ",
        Date = "Date ",
    },
    --IMPORTANT HERE IS WHERE YOU EXPLAIN HOW TO USE REPORTS AND HOW YOU WANT PLAYERS TO USE THEM, LIKE DO THEY NEED TO DO SOMETHING FIRST ? ETC
    Tutorial               = {
        Occurences = { -- this is title translate it
            {
                SubTitle = "Archive Occurrences",
                Desc = " **Ocurrences** may be archived when they are no *longer relevant*, this aliviates the amount of data in the system. To archive an occurrence, press the button below, it requires permissions",
            },
            {
                SubTitle = "New Occurences",
                Desc = "To create a new occurrence, you must first gather some important information. players ids , names ,officers involve, witnesses, and charges. Once you have all the information, press the button below to create a new occurrence. note: Players must be in game to create an occurence",
            }

        },
        Records = {
            {
                SubTitle = "Records Searching",
                Desc = "Records can only be searched using the exact player name",
            },
            {
                SubTitle = "Records functionality",
                Desc = "Records are automatically added to each player when you file an occurrence against them.",
            },
            {
                SubTitle = "Records Image update",
                Desc = "You can update the image profile of a player by pressing the button next to the profile",
            }
        },
        -- here there will be more
    }
}


Reports.Options = {
    UseCommand = true,                                -- if you want to use command to open the menu
    CommandName = "reports",                          -- command name
    UseLocation = false,                              -- if you want to open the menu with location
    Locations = {
        Valentine = vector3(-276.64, 806.21, 119.38), -- location where the menu will be opened
        SaintDenis = vector3(250.0, -1000.0, -100.0), -- location where the menu will be opened
    },
    Radius = 20.0,                                    -- location where the menu will be opened
    UseItem = true,                                   -- if you want to use item to open the menu
    ItemName = "lawbook",                             -- item can allow transport the menu this means you can loose it
}
