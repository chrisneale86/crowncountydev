Config = {}

Config.Debug = false

Config.RandomTransitions = false
Config.ticketCost = 5 --default value when not customized in a specific show
Config.Shows = Globals.Shows
Config.Projections = Globals.Projections
Config.Movies = Globals.Movies

Config.ShowStartDelay = 120 -- delay in seconds before the show starts aftert someone bought a ticket

Config.enableBlips = false --enable blips for show locations


Config.Curtains = { --Show Locations
	["SAINTDENIS"] = {
	  ownedBy        = "cinema", -- job that owns the theater (only needed when Config.Society is enabled or oyu want to use stop ticket sales)
	  stopTicketsControl = 0x018C47CF, -- cant be same as ticketVendor
	  animscene = nil,
	  object    = nil,
	  coords    = vector3(2546.522, -1307.835, 48.26664),
	  curtainPoints = {
		{
		  id         = "SAINT_DENIS_CURTAIN_1",
		  pos        = vector3(2550.2897, -1307.112060, 49.2147),
		  radius     = 2.0,
		},
		{
		  id         = "SAINT_DENIS_CURTAIN_2",
		  pos        = vector3(2540.8730, -1312.1302, 49.2168),
		  radius     = 2.0,
		},
	  },
	  state    = "CLOSED",
	  prompts  = {},
  
	  jobMenus = {
		{
		  id      = "SAINT_DENIS_MENU_1",
		  pos     = vector3(2553.6218, -1292.314, 49.214),
		  control = 0x018C47CF, -- default “E”
		  radius  = 2.0,
		  jobs    = { "unemployed", "cinema" },        -- job who can see the menu
		},
	  },
	  ticketVendors = {
		{
		  id           = "SAINT_DENIS_TICKET_1",
		  model        = `s_m_m_sdticketseller_01`,
		  promptPos    = vector3(2542.13, -1282.52, 48.22),
		  promptRadius = 2.0,
		  spawnRadius  = 15.0,
		  control      = 0x760A9C6F,                -- default “G”
		  holdType     = "hold",                    -- hold prompt
		  timeEvent    = "MEDIUM_TIMED_EVENT",      -- timed event
		  scenario     = `WORLD_HUMAN_WAITING_IMPATIENT`,
		  heading      = 30.0,
		  sound        = 'cinematicket.mp3',
		  soundDur     = 4500,
		  soundVol     = 0.5,
		},
		-- additional vendors here
	  },
	},
	-- weitere Zonen…
}

Config.Backgrounds = { --setup all selectable Backgrounds in the job menu
	["new_theater_cancan"] = "Cancan",
	["new_theater_fireperformer"] = "Fire Performer",
	["new_theater_snakedancer"] = "Snake Dancer",
	["new_theater_magician"] = "Magician",
	["new_theater_strongwoman"] = "Strong Woman",
	["new_theater_theOddFellows"] = "The Odd Fellows",
}

Config.Cinemas = {
	["SAINTDENIS"] = {
		ticketPrice = 5,
		vendor = {
			model        = `s_m_m_sdticketseller_01`,
			promptPos    = vector3(2686.8310546875, -1362.1712646484375, 48.21417617),
			promptRadius = 2.0,
			spawnRadius  = 15.0,
			control      = 0x760A9C6F,                -- default “G”
			holdType     = "hold",                    -- hold prompt
			timeEvent    = "MEDIUM_TIMED_EVENT",      -- timed event
			scenario     = `WORLD_HUMAN_WAITING_IMPATIENT`,
			heading      = 129.86,
			sound        = 'cinematicket.mp3',
			soundDur     = 4500,
			soundVol     = 0.5,
		}
	},
	["VALENTINE"] = {
		ticketPrice = 5,
		vendor = {
			model        = `am_valentinedoctors_females_01`,
			promptPos    = vector3(-355.19, 705.08, 115.94),
			promptRadius = 2.5,
			spawnRadius  = 15.0,
			control      = 0x760A9C6F,                -- default “G”
			holdType     = "hold",                    -- hold prompt
			timeEvent    = "MEDIUM_TIMED_EVENT",      -- timed event
			scenario     = `WORLD_HUMAN_WAITING_IMPATIENT`,
			heading      = 331.7,
			sound        = 'cinematicket.mp3',
			soundDur     = 4500,
			soundVol     = 0.5,
		}
	},
	["BLACKWATER"] = {
		ticketPrice = 5,
		vendor = {
			model        = `s_m_m_sdticketseller_01`,
			promptPos    = vector3(-789.796, -1362.61, 43.822),
			promptRadius = 2.0,
			spawnRadius  = 15.0,
			control      = 0x760A9C6F,                -- default “G”
			holdType     = "hold",                    -- hold prompt
			timeEvent    = "MEDIUM_TIMED_EVENT",      -- timed event
			scenario     = `WORLD_HUMAN_WAITING_IMPATIENT`,
			heading      = 269.04,
			sound        = 'cinematicket.mp3',
			soundDur     = 4500,
			soundVol     = 0.5,
		}
	},
}

Config.Society = 'mega_companies' -- Options: 'dl_society', 'mega_companies', 'syn_society', 'custom' or false
Config.AddMoneyToSociety = function(society, money)
    if society ~= nil and money > 0 then
        if Config.Society == 'dl_society' then
            exports.dl_society:addSocietyMoney(society, money)
        elseif Config.Society == 'mega_companies' then
            exports["mega_companies"]:api().addMoney(society, money)
        elseif Config.Society == 'syn_society' then
            local ledgerresult = exports.oxmysql:fetchSync('SELECT ledger FROM society_ledger WHERE job = ?', {society})
            if ledgerresult and ledgerresult[1] and ledgerresult[1].ledger then
                local currentLedger = ledgerresult[1].ledger
                local newLedger = currentLedger + money
                exports.oxmysql:execute('UPDATE society_ledger SET ledger = ? WHERE job = ?', {newLedger, society})
            else
                Debug("No Ledger found for Job '" .. society .. "'!")
            end
        elseif Config.Society == 'custom' then
            -- Your money to society logic here
            Debug(society, money)
        else
            Debug("^8Warning:^4 Invalid society configuration. Found '" .. tostring(Config.Society) .. "'!^0")
        end
    end
end


Config.Language = {
	["cinema"] = "Cinema",
	["cinema_job"] = "Job-Menu",
	["cinema_ticket"] = "Ticket",
	["cinema_ticket_desc"] = "You have bought a ticket for the cinema.",
	["cinema_ticket_error"] = "You don't have enough money to buy a ticket.",
	["cinema_ticket_buy_stopped"] = "The Owner stopped the sale for now.",
	["cinema_show_start_delay"] = "The show will start in %s seconds.",


	["opencurtain"] = "Open curtain",
	["closecurtain"] = "Close curtain",
	["showAlreadyRunning"] = "A Show is already running",

	["cinema_menu"] = "Cinema Menu",
	["ticket_menu"] = "Ticket Menu",
	["ticket_buy"] = "Buy Ticket",
	["cinema_showtime"] = "Showtime",
	["cinema_showtime_desc"] = "Select the showtime you want to watch.",
	["cinema_showtime_select"] = "Select Show",
	["cinema_showtime_select_desc"] = "Select the showtime you want to watch.",
	["cinema_showtime_select_success"] = "You have selected the showtime: %s",
	["cinema_showtime_select_error"] = "You have not selected a showtime.",
	["cinema_showtime_select_error2"] = "You have not selected a show.",
	["cinema_show_start"] = "Start a Show",
	["cinema_show"] = "Show",
	["cinema_actors"] = "Actors for show: ",
	["cinema_toggle_tickets"] = "Toggle Ticket Sale",
	["cinema_stopped_tickets"] = "You stopped the ticket sale",
	["cinema_start_tickets"] = "You started the ticket sale",
	["cinema_ticket_menu"] = "Ticket Menu",
	["cinema_select_movie"] = "Select Movie",
	["cinema_background_select"] = "Select Background",



	["confirm"] = "Confirm",
	["cancel"] = "Cancel",
	["yes"] = "Yes",
	["no"] = "No",

}


Config.Soundsets = {
	["Curtain_Open_Music"] = "3160317806_action",
	["Curtain_Opens_Music"] = "2245181467_action",
	["Escape_Noose_Curtain_Music"] = "4224921010_action"
}


Config.CreatedEntries = {} --do not change