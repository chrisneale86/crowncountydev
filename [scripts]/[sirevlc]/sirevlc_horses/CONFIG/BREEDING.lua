Config = Config or {}
-------------------------------------
    -- BREEDING SETTINGS --
-------------------------------------
Config.AVERAGE_STATS                        = true                -- IF SET TO TRUE BREEDING STATS CALCULATION WILL BE AN AVERAGE OTHERWISE IT WILL BE EITHER PARENT A OR B STATS
Config.BREEDING_CHANCE_OF_FAILURE           = 25                  -- CHANCE OF FAILURE (0-100)

-- HORSE DATABASE CHECK

Config.BREEDING_SCALE_MULTIPLIER_PHASE_1    = 0.75                -- THIS IS THE PED SCALE MULTIPLIER APPLIED WHEN THE FOAL IS IN PHASE 1
Config.BREEDING_SCALE_MULTIPLIER_PHASE_2    = 0.80
Config.BREEDING_SCALE_MULTIPLIER_PHASE_3    = 0.90

-- V4.0 ADDITIONS
Config.MIN_SELLING_PHASE_STABLES            = 1                   -- MINIMUM BREEDING PHASE WHERE THE HORSE CAN BE SOLD OR DELETED AT THE STABLES (MIN 1)
Config.MIN_SELLING_PHASE_PLAYER             = 1                   -- MINIMUM BREEDING PHASE WHERE THE HORSE CAN BE SOLD TO A PLAYER (MIN 1)

Config.BREEDING_DB_RESULTS                  = true                -- IF SET TO TRUE, OWNED PLAYER HORSES COAT DATA CAN BE SELECTED AS LONG AS THE RESULTING BREEDING GENOTYPE MATCHES ONE OF THEIR HORSES. IF NOT CONFIG WILL BE USED.
Config.BREEDING_DB_CHANCE                   = 100                 -- CHANCE THAT THE SYSTEM WILL PRIORITZE THE DATABASE OVER THE CONFIG RESULTS

Config.BREEDING_DB_JOB_LOCK                 = true                -- ENABLE OR DISABLE JOB LOCK TO HAVE THE SYSTEM SELECTING HORSES COAT DATA THAT THE PLAYER OWNS FOR BREEDING RESULTS
Config.BREEDING_DB_JOB_LIST                 = {"horsetrainerval","horsetrainerblk","horsetrainermcf","horsetrainersai","horsetrainertum","horsetrainerdew","horsetrainerstr","horsetrainerpro",}

Config.BREEDING_DB_PLAYER_LOCK              = true               -- ENABLE OR DISABLE PLAYER LOCK TO HAVE THE SYSTEM SELECTING HORSES COAT DATA THAT THE PLAYER OWNS FOR BREEDING RESULTS
Config.BREEDING_DB_PLAYER_LIST              = { {IDENTIFIER = "steam:99", CHARID = 1}, }

Config.BREEDING_LIMIT_COUNT_ENABLED         = true               -- IF ENABLED IT WILL LIMIT THE NUMBER OF TIMES A MARE CAN BE PREGNANT
Config.BREEDING_LIMIT_COUNT                 = 2                   -- NUMBER OF TIMES A MARE CAN BE PREGNANT

Config.BREEDING_USE_PRICE_TABLE             = true                -- IF TRUE IT WILL USE THE TABLE BELOW TO ASSIGN A PRICE TO YOUR FOAL DEPENDING ON THE RESULTING BREED

Config.BREEDING_HIDE_FOAL_INFOS             = true                -- IF TRUE IT WILL HIDE FOAL COAT AND GENE INFOS WHEN IN "CHECK BREEDING COOLDOWN" MENU

-- THIS BASE PRICE WILL BE ASSIGNED TO YOUR FOAL WHEN BREEDING HORSES INSTEAD OF THE PURCHASED / ADOPTED / RESCUED PRICES OF PARENT A OR B
Config.BREEDING_BASE_FOAL_PRICE = {
    {LABEL = "Mule",                       DOLLARS = 15.0,   GOLD = 0.0},
    {LABEL = "American Mammoth Jackstock", DOLLARS = 2400.0, GOLD = 0.0},
    {LABEL = "Ardennes",                   DOLLARS = 750.0,  GOLD = 0.0},
    {LABEL = "Belgian",                    DOLLARS = 172.5,  GOLD = 0.0},
    {LABEL = "Shire",                      DOLLARS = 172.5,  GOLD = 0.0},
    {LABEL = "Suffolk Punch",              DOLLARS = 202.5,  GOLD = 0.0},
    {LABEL = "Breton",                     DOLLARS = 900.0,  GOLD = 0.0},
    {LABEL = "Friesian",                   DOLLARS = 1845.0, GOLD = 0.0},
    {LABEL = "Clydesdale",                 DOLLARS = 352.5,  GOLD = 0.0},
    {LABEL = "Black Forest",               DOLLARS = 322.5,  GOLD = 0.0},
    {LABEL = "Haflinger",                  DOLLARS = 322.5,  GOLD = 0.0},
    {LABEL = "Canadian Horse",             DOLLARS = 195.0,  GOLD = 0.0},
    {LABEL = "Irish Cob",                  DOLLARS = 3750.0, GOLD = 0.0},
    {LABEL = "Sugarbush Harlequin",        DOLLARS = 502.5,  GOLD = 0.0},
    {LABEL = "American Paint",             DOLLARS = 562.5,  GOLD = 0.0},
    {LABEL = "American Standardbred",      DOLLARS = 150.0,  GOLD = 0.0},
    {LABEL = "Andalusian",                 DOLLARS = 420.0,  GOLD = 0.0},
    {LABEL = "Appaloosa",                  DOLLARS = 240.0,  GOLD = 0.0},
    {LABEL = "Arabian",                    DOLLARS = 7500.0, GOLD = 0.0},
    {LABEL = "Ardennais",                  DOLLARS = 750.0,  GOLD = 0.0},
    {LABEL = "Bay Breton",                 DOLLARS = 900.0,  GOLD = 0.0},
   --{LABEL = "Brabant",                    DOLLARS = 1000.0, GOLD = 0.0},
    {LABEL = "Criollo",                    DOLLARS = 750.0,  GOLD = 0.0},
    {LABEL = "Dutch Warmblood",            DOLLARS = 375.0,  GOLD = 0.0},
   --{LABEL = "Falabella",                  DOLLARS = 1000.0, GOLD = 0.0},
    {LABEL = "Fjord",                      DOLLARS = 750.0,  GOLD = 0.0},
   --{LABEL = "Gypsy Vanner",               DOLLARS = 1000.0, GOLD = 0.0},
   --{LABEL = "Hanoverian",                 DOLLARS = 1000.0, GOLD = 0.0},
    {LABEL = "Holsteiner",                 DOLLARS = 1012.5, GOLD = 0.0},
    {LABEL = "Lipizzaner",                 DOLLARS = 1275.0, GOLD = 0.0},
    {LABEL = "Missouri Fox Trotter",       DOLLARS = 2250.0, GOLD = 0.0},
    {LABEL = "Morgan",                     DOLLARS = 30.0,   GOLD = 0.0},
    {LABEL = "Mustang",                    DOLLARS = 3562.5, GOLD = 0.0},
    {LABEL = "Nokota",                     DOLLARS = 562.5,  GOLD = 0.0},
    --{LABEL = "Noriker",                    DOLLARS = 1000.0, GOLD = 0.0},
    {LABEL = "Oldenburg",                  DOLLARS = 900.0,  GOLD = 0.0},
    --{LABEL = "Percheron",                  DOLLARS = 1000.0, GOLD = 0.0},
    --{LABEL = "Quarter Horse",              DOLLARS = 1000.0, GOLD = 0.0},
    {LABEL = "Rocky Mountain Horse",       DOLLARS = 202.5,  GOLD = 0.0},
    {LABEL = "Selle Français",             DOLLARS = 1455.0, GOLD = 0.0},
    {LABEL = "Shetland Pony",              DOLLARS = 58.5,   GOLD = 0.0},
    {LABEL = "Standardbred",               DOLLARS = 150.0,  GOLD = 0.0},
    {LABEL = "Tennessee Walker",           DOLLARS = 150.0,  GOLD = 0.0},
    {LABEL = "Thoroughbred",               DOLLARS = 7500.0, GOLD = 0.0},
    --{LABEL = "Trakehner",                  DOLLARS = 1000.0, GOLD = 0.0},
    --{LABEL = "Westphalian",                DOLLARS = 1000.0, GOLD = 0.0},
    --{LABEL = "Zebra",                      DOLLARS = 1000.0, GOLD = 0.0},
    {LABEL = "Przewalski",                 DOLLARS = 2250.0, GOLD = 0.0},
    {LABEL = "Merens",                     DOLLARS = 900.0,  GOLD = 0.0},
    {LABEL = "Exmoor",                     DOLLARS = 150.0,  GOLD = 0.0},
    {LABEL = "Murgese",                    DOLLARS = 562.5,  GOLD = 0.0},
    {LABEL = "Trotteur Français",          DOLLARS = 4875.0, GOLD = 0.0},
    {LABEL = "Comtois",                    DOLLARS = 262.5,  GOLD = 0.0},
    {LABEL = "Icelandic",                  DOLLARS = 2250.0, GOLD = 0.0},
    {LABEL = "Lusitano",                   DOLLARS = 825.0,  GOLD = 0.0},
    {LABEL = "Paso Fino",                  DOLLARS = 2175.0, GOLD = 0.0},
    {LABEL = "Camargue",                   DOLLARS = 600.0,  GOLD = 0.0},
    {LABEL = "Warlander",                  DOLLARS = 1875.0, GOLD = 0.0},
    {LABEL = "Connemara",                  DOLLARS = 1875.0, GOLD = 0.0},
    {LABEL = "Akhal Teke",                 DOLLARS = 7500.0, GOLD = 0.0},
    {LABEL = "Welsh Cob",                  DOLLARS = 3750.0, GOLD = 0.0},
    {LABEL = "American Saddlebred",        DOLLARS = 150.0,  GOLD = 0.0},
}