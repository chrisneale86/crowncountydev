Config = {}

Config.Locale = 'en'

Config.Bandage = 'Bandage'  --Can change to an equivalent item in your database or run the items.sql, icon in items folder, remember case sensitive
Config.Revive = 'Morphine' --Can change to an equivalent item in your database or run the items.sql, icon in items folder, remember case sensitive
Config.usewebhook = true
Config.Webhook = 'https://discord.com/api/webhooks/1476345213613113376/vnLHrrnFZ8fJnTU0Pz1weG7g4QMFZ3J_lsulx4pwQcTF4ng5S8l4xubko94OQAv5jPsa'
Config.Command = 'medic' -- Slash command to use in chat to open Medic Menu
Config.gonegative = true -- Can you go negative paying for NPC revival
Config.synsociety = true
Config.playerscantuseband = false -- set false if you want players to use bandages them self 

Config.helthcheck = 300


Doctoroffices = {
    }

MedicJobs = {
    "doctor" -- Jobs that count as Doctors
}


Config.doctors = {
    ped = 
    "cs_sddoctor_01", -- Model of NPC Doctor or choose other ped model below

  			--am_valentinedoctors_females_01
			--cs_sddoctor_01
			--cs_creoledoctor
			--u_m_m_rhddoctor_01
			--u_m_m_valdoctor_01
  
    command = "sendhelp", -- Command to Call for NPC Doctor

    amount = 45, -- Payment for Revive from NPC Doctor

    timer = 60000 * 1 -- put how many minutes you'd like ie 60000 * 5 for 5 minutes
	
}


-- =========================
-- Billing / Society Ledger
-- =========================
Config.TreatmentFee = 30 -- amount charged to the PATIENT when a player-doctor heals/revives them
Config.SocietyJobNameOverride = "doctor" -- must match `society_ledger.job` (your screenshot shows "doctor")
Config.DepositNPCDoctorFeesToSociety = false -- deposit NPC doctor revive fee into society_ledger as well
