Config = {}

-- Currency type (0 = cash in most VORP setups)
Config.CurrencyType = 0

-- Interaction distance at stations
Config.StationInteractDistance = 2.0

-- Show-ticket behavior
Config.ShowTicketDistance = 4.0
Config.TicketDisplayMs = 10000

-- Railroader job access (who can SEE tickets)
Config.RailroaderJob = "railroader"
Config.AllowedRailroaderGrades = { [0]=true, [1]=true, [2]=true, [3]=true }

-- Destination -> item name
Config.TicketItems = {
  saintdenis = "train_ticket_saintdenis",
  valentine  = "train_ticket_valentine",
  tumbleweed = "train_ticket_tumbleweed",
  rhodes     = "train_ticket_rhodes",
  annesburg  = "train_ticket_annesburg",
  vanhorne   = "train_ticket_vanhorne",
  riggs      = "train_ticket_riggs",
}

-- Stations (add more easily)
-- NOTE: If you want the exact interaction point, stand where you want it and replace coords.
Config.Stations = {
  valentine  = { label = "Valentine",      coords = vector3(-174.31, 633.28, 114.14) },
  rhodes     = { label = "Rhodes",         coords = vector3(1231.48, -1299.63, 76.95) },
  saintdenis = { label = "Saint Denis",    coords = vector3(2730.39, -1427.21, 46.26) },
  annesburg  = { label = "Annesburg",      coords = vector3(2931.099, 1283.42, 44.652) },
  riggs      = { label = "Riggs Station",  coords = vector3(-1095.475, -575.222, 82.410) },
  benidict   = { label = "Benedict Post",  coords = vector3(-5227.46, -3470.62, -20.52) },

  -- Common server locations (replace with your preferred station interaction spots)
  blackwater = { label = "Blackwater",     coords = vector3(-880.75, -1244.71, 44.22) },
  vanhorne   = { label = "Van Horn",       coords = vector3(2894.07, 624.59, 57.76) },
  tumbleweed = { label = "Tumbleweed",     coords = vector3(-3728.89, -2602.98, -12.8) },
}

-- Routes + Prices (origin -> destination -> price)
-- Add as many as you want.
Config.Routes = {
  blackwater = {
    saintdenis = 15,
    valentine  = 8,
    tumbleweed = 15,
    benedictpost = 15,
  },
  valentine = {
    saintdenis = 10,
    rhodes     = 7,
    annesburg  = 12,
    riggs      = 6,
    blackwater = 8,
  },
  saintdenis = {
    valentine  = 10,
    rhodes     = 6,
    annesburg  = 9,
    blackwater = 15,
  },
  rhodes = {
    saintdenis = 6,
    valentine  = 7,
  },
  annesburg = {
    saintdenis = 9,
    valentine  = 12,
    vanhorne   = 4,
  },
  vanhorne = {
    annesburg  = 4,
    saintdenis = 8,
  },
  riggs = {
    valentine  = 6,
    blackwater = 7,
  },
  tumbleweed = {
    blackwater = 15,
    benedictpost = 8,
  }
}

-- ========= Syn Ledger (DB) Deposit via oxmysql =========
-- Your screenshot shows a table: society_ledger(job, ledger)
-- Ticket purchases will add to the row where job = 'railroader'
Config.SynLedger = {
  enabled = true,
  table = "society_ledger",
  jobColumn = "job",
  moneyColumn = "ledger",
  jobName = "railroader",
}


-- Debug prints in server console
Config.Debug = false

-- Some VORP inventory forks fail when adding metadata. Set true to add ticket without metadata.
Config.DisableMetadata = false

-- If your inventory fork has a broken/changed canCarryItem export, set this false.
Config.UseCarryCheck = false

-- Remove ticket item after it has been shown to a conductor
Config.ConsumeTicketAfterShow = true

-- Delay before removing ticket (ms). Set to 0 to remove instantly.
Config.ConsumeDelayMs = 0

-- Your VORP inventory's subItemById requires a callback; keep this false unless you customize it.
Config.UseRemoveById = false
