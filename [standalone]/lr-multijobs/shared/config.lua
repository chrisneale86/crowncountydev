Config = {}

Config.locale = 'en'
Config.Debug = false         -- set to false in productions

-- Syn Society Integration
Config.UseSynSociety = true
Config.AlwaysShowUnemployed = true

-- Job switching cooldown (seconds)
Config.JobSwitchCooldown = 300

-- Jobs configuration (only label is used by multijob system)
-- The job key must match exactly with syn_society job names
Config.jobs = {
    -- police = { label = 'Police' },
    -- doctor = { label = 'Doctor' },
    val_gunsmith = { label = 'Valentine Gunsmith' },
    val_saloon = { label = 'Valentine Saloon' },
horsetrainerval = { label = 'Valentine horsetrainer' },
horsetrainerblk = { label = 'black water horsetrainer' },
horsetrainersai = { label = 'saint denis horsetrainer' },
horsetrainertum = { label = 'tumbleweed horsetrainer' },
horsetrainerstr = { label = 'sterwberry horsetrainer' },
horsetrainermcf = { label = 'macfarlmes  horsetrainer' },
strwgunsmith = { label = 'sterwberry gunsmith' },
sdgunsmith = { label = 'saint denis gunsmith' },
annesburggunsmith = { label = 'annerburg gunsmith' },
bwgunsmith = { label = 'black water  gunsmith' },
twgunsmith = { label = 'tumbleweed gunsmith' },
    -- Add more jobs as needed, jobname = { label = 'Display Name' },
}

-- Group-based access (limits how many jobs can be shown in menu)
Config.GroupMaxJobs = {
    ['user'] = 2,
    ['vip'] = 3,
    ['admin'] = 5
}

Config.DefaultMaxJobs = 2