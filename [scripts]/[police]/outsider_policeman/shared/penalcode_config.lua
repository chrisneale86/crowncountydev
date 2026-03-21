-- PENAL CODE SYSTEM

-- WHAT IS PENAL CODE FOR?
-- EACH PENAL CODE IS A CRIME THAT A PLAYER CAN COMMIT, THIS IS A LIST OF CRIMES THAT CAN BE COMMITTED IN THE GAME AND THE PUNISHMENT FOR THEM
-- THE PENAL CODE IS USED BY POLICE TO CHARGE PLAYERS WITH CRIMES, THE PENAL CODE IS USED TO DETERMINE THE PUNISHMENT FOR THE CRIME
-- THE PENAL CODE IS USED TO DETERMINE THE FINE OR JAIL TIME FOR THE CRIME AS WELL
-- EVRY LAW ACTION MUST FOLLOW THE PENAL CODE IN ORDER TO HAVE ORDER IN THE COUNTY

-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>--
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  [ THIS IS JUST AN EXAMPLE YOU MUST MAKE YOUR OWN DO NOT USE MINE THIS IS JUST AN EXAMPLE ] <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<--
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>--

PenalCode = {}

PenalCode.Config = {
    -- class     name whatever you want, just make sure it's unique
    -- all the text supports markdown you can do things like *hello*
    ["High Level Crimes"] = {                                                                                                                                                                      -- MUST BE UNIQUE NAME
        {
            PenalCode = 101,                                                                                                                                                                       -- penal code number must be unique
            Title = "Murder",                                                                                                                                                                      -- title of penal code
            Description = "* The killing of another person unlawfully and unjustifiably where the  Medical *Department/Native*  Healer could not bring them back to life.",                        -- description of penal code number
            Notes = "Charges require detention until can be seen by Judge in court. If accused pleads guilty pre-trial, penalty is death. Includes confiscation of weapons until proven innocent", -- notes to officers
            Time = {
                -- only one can be true
                Jail = {
                    Jail = true, -- does player need to be jailed for this crime?
                    information = "Penal Code sates that Player is to be sent to Jail <br> Jail Time: 2 hours"
                },
                Minutes = 2 -- JAIL TIME IS IN MINUTES NOW -----NEW CHANGE

            },
            Fine = {                         -- FINES ARE ONLY APPLIED IF JAIL = FALSE , YOU CANT JAIL AND FINE AT THE SAME TIME, FOR THAT USE THE BILLING TO FINE THEM.
                Amount = 100,                -- amount of money to be fined
                DaysToPay = 3,               -- days to pay the fine THERES LOCATIONS WHERE THEY GO TO PAY, IF THEY DONT THEY ARE SET AS WANTED
                information = "❗ The penal code states that the player is to be fined",
                BillItemName = "policebill", -- item name to give players, if you use my system of notes put the name of the item paper from the book of bills you have created
            },                               --  player will be charged after 3 days, they need to go somehwere to pay, if not they become wanted, giving jobs to bounty hunters
        },
        {
            PenalCode = 102,
            Title = "Torture",
            Description = "To inflict severe physical or mental pain or suffering upon another person within their custody or physical control.",
            Notes = "Charges require detention until can be seen by Judge in court. If accused pleads guilty pre-trial, penalty is death. Includes confiscation of weapons until proven innocent",
            Time = {
                Jail = {
                    Jail = false,
                    information = "Penal Code sates that Player is to be sent to Jail <br> Jail Time: 2 hours"
                },
                Minutes = 2 -- JAIL TIME IS IN MINUTES NOW -----NEW CHANGE
            },
            Fine = {
                Amount = 100,
                DaysToPay = 3,
                information = "❗ The penal code states that the player is to be fined",
                BillItemName = "policebill", -- item name to give players, if you use my system of notes put the name of the item paper from the book of bills you have created
            },
        }
    },
    --YOU CAN USE MARKDOWN IN THE DESCRIPTIONS
    ["Medium Level Crimes"] = {
        {
            PenalCode = 103,
            Title = "Property Thef",
            Description = "The killing of another person unlawfully and unjustifiably where the  Medical Department/Native Healer could not bring them back to life.",
            Notes = "Charges require detention until can be seen by Judge in court. If accused pleads guilty pre-trial, penalty is death. Includes confiscation of weapons until proven innocent",
            Time = {

                Jail = {
                    Jail = false,
                    information = "Penal Code sates that Player is to be sent to Jail <br> Jail Time: 2 hours"
                },
                Minutes = 2 -- JAIL TIME IS IN MINUTES NOW -----NEW CHANGE
            },
            Fine = {
                Amount = 100,
                DaysToPay = 3,
                information = "❗ The penal code states that the player is to be fined",
                BillItemName = "policebill",
            },
        },
        {
            PenalCode = 104,
            Title = "Persona Theft",
            Description =
            "To inflict severe physical or mental pain or suffering upon another person within their custody or physical control.",
            Notes =
            "Charges require detention until can be seen by Judge in court. If accused pleads guilty pre-trial, penalty is death. Includes confiscation of weapons until proven innocent",
            Time = {
                Jail = {
                    Jail = true,
                    information = "The penal code states that the player is to be sent to jail"
                },
                Hours = 2 -- JAIL TIME IS IN MINUTES NOW -----NEW CHANGE
            },
            Fine = {
                Amount = 100,
                DaysToPay = 3,
                information = "❗ The penal code states that the player is to be fined"
            },
        }
    },

    ["Low Level Crimes"] = {

        {
            PenalCode = 105,
            Title = "Assault",
            Description =
            "The killing of another person unlawfully and unjustifiably where the  Medical Department/Native Healer could not bring them back to life.",
            Notes =
            "Charges require detention until can be seen by Judge in court. If accused pleads guilty pre-trial, penalty is death. Includes confiscation of weapons until proven innocent",
            Time = {

                Jail = {
                    Jail = false,
                    information = "Penal Code sates that Player is to be sent to Jail <br> Jail Time: 2 hours"
                },
                Minutes = 2 -- JAIL TIME IS IN MINUTES NOW -----NEW CHANGE
            },
            Fine = {
                Amount = 100,
                DaysToPay = 3,
                information = "The penal code states that the player is to be fined",
                BillItemName = "policebill",
            },
        },
        {
            PenalCode = 106,
            Title = "Public Intoxication",
            Description =
            "To inflict severe physical or mental pain or suffering upon another person within their custody or physical control.",
            Notes =
            "Charges require detention until can be seen by Judge in court. If accused pleads guilty pre-trial, penalty is death. Includes confiscation of weapons until proven innocent",
            Time = {
                Jail = {
                    Jail = true,
                    information = "❗ The penal code states that the player is to be sent to jail"
                },
                Minutes = 2 -- JAIL TIME IS IN MINUTES NOW -----NEW CHANGE
            },
            Fine = {
                Amount = 100,
                DaysToPay = 3,
                information = "The penal code states that the player is to be fined",
                BillItemName = "policebill", -- item name to give players, if you use my system of notes put the name of the item paper from the book of bills you have created
            },

        }

    },

    ["Bodly Harm Crimes"] = {

        {
            PenalCode = 107,
            Title = "Bodly Harm",
            Description =
            "The killing of another person unlawfully and unjustifiably where the  Medical Department/Native Healer could not bring them back to life.",
            Notes =
            "Charges require detention until can be seen by Judge in court. If accused pleads guilty pre-trial, penalty is death. Includes confiscation of weapons until proven innocent",
            Time = {

                Jail = {
                    Jail = false,
                    information = "Penal Code sates that Player is to be sent to Jail <br> Jail Time: 2 hours"
                },
                Minutes = 2 -- JAIL TIME IS IN MINUTES NOW -----NEW CHANGE
            },
            Fine = {
                Amount = 100,
                DaysToPay = 3,
                information = "❗ The penal code states that the player is to be fined",
                BillItemName = "policebill",
            },
        },
        {
            PenalCode = 108,
            Title = "Public Intoxication",
            Description = "To inflict severe physical or mental pain or suffering upon another person within their custody or physical control.",
            Notes = "Charges require detention until can be seen by Judge in court. If accused pleads guilty pre-trial, penalty is death. Includes confiscation of weapons until proven innocent",
            Time = {
                Jail = {
                    Jail = true,
                    information = "Penal Code sates that Player is to be sent to Jail <br> Jail Time: 2 hours",
                },
                Minutes = 2 -- JAIL TIME IS IN MINUTES NOW -----NEW CHANGE
            },
            Fine = {
                Amount = 100,
                DaysToPay = 3,
                information = "The penal code states that the player is to be fined",
                BillItemName = "policebill", -- item name to give players, if you use my system of notes put the name of the item paper from the book of bills you have created
            },
        }
    }
}


--DONT TOUCH
local NewTable = {}
CreateThread(function()
    for key, value in pairs(PenalCode.Config) do
        for k, v in ipairs(value) do
            local NewData = { code = v.PenalCode, desc = v.Description, fine = v.Fine, time = v.Time, title = v.Title, notes = v.Notes, type = key }
            table.insert(NewTable, NewData)
        end
    end
end)

function GetPenalCode()
    return NewTable
end
