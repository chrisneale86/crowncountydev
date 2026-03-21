---@type NssPinboardConfig
Config = {}

-- See folder languages for available locales
Config.language = "en"

-- New since 1.3.5: Where is the discord webhook config?
--
-- Config.DiscordWebhook was moved to file secure.lua to hide webhook URLs from public view.
-- Pleas ensure to copy your previous Config.DiscordWebhook settings from config.lua to secure.lua.

-- Optional: If you want to block images from specific servers.
-- E.g. Discord images have an expiration time (sine end of 2023) and are not usefully for a bulletin board.
-- New since 1.3.1
Config.ImageServerBlacklist = {
    --"cdn.discordapp.com",
    --"www.example.com",
}

-- If true the bulletin board will be hidden on combat or damage, set to false or nil to disable
-- Note: If a player writes a long notice and the board will be closed on combat or damage than the notice will be lost.
Config.HideOnCombatOrDamage = false -- New since 1.3.0

-- "newest_first" or "latest_first" (default)
Config.NoticeOrder = "latest_first"

-- 1000 = 1 second
Config.NotificationDurationInMs = 4000

-- Recommended radius is 1.0
Config.OpenPromptRadius = 1.0

-- New since 1.3.2
--
-- If true the z axis will be used for the open prompt radius, e.g. for a bulletin board on a wall in a house with
-- multiple floors. Ensure that the boards are at least the double metres of the Config.OpenPromptRadius away from each
-- other.
--
-- Note: The z axis needs more performance than the 2D radius and is deactivated by default.
Config.UseZAxisForOpenPromptRadius = false

-- If not set then no blips will be shown on map
Config.BlipHash = 1735233562

-- If not set then the command will be disabled
Config.ConsoleRemoveCommand = "clear_bulletin_board"

-- Set to 0 if no automatic expiration is desired
Config.AutomaticExpirationAfterDays = 7

-- If true the bulletin board tips are used instead of the vorp ones.
-- The bulletin tips currently are better because they are appearing in the top of all instead behind the bulletin board like vorp.
Config.UseCustomTips = false

-- See https://github.com/mja00/redm-shit/blob/master/nuiweaponspawner/config.lua for key hashes
Config.OpenKey = 0x760A9C6F -- G

-- Below some examples. All options are combinable.
--
-- New since 1.3.5: Where are the custom webhook configs?
-- The webhook configs for each board are moved to file secure.lua for security reasons.
Config.Posters = {

    -- Example with blip
    {
        city = "Valentine", -- Required: Unique (!!!) name of the board
        group = "Valentine", -- Required: Name of board group (used for "post at all boards" option with same group)
        coords = { -269.07, 764.85, 117.65 }, -- Required: Coordinates of the board (x, y, z). Ensure that the boards are at least 10 metres away from each other.
    },

    {
        city = "Saint Denis",
        group = "Saint Denis",
        coords = {2608.92, -1270.91, 52.79},
    },
    {
        city = "Rhodes",
        group = "Rhodes",
        coords = { 1272.67, -1281.89, 75.35 },
    },
    {
        city = "Blackwater",
        group = "Blackwater",
        coords = { -831.54, -1345.35, 43.72 },
    },
    {
        city = "Strawberry",
        group = "Strawberry",
        coords = { -1828.18, -409.57, 161.19 },
    },
    {
        city = "Annesburg",
        group = "Annesburg",
        coords = { 2956.32, 1361.37, 44.84 },
    },
    {
        city = "Armadillo",
        group = "Armadillo",
        coords = { -3712.34, -2568.21, -13.65 },
    },
    {
        city = "Tumbeleweed",
        group = "Tumbeleweed",
        coords = { -5506.21, -2915.06, -2.41 },
    },
    {
        city = "Van Horn",
        group = "Van Horn",
        coords = { 2955.46, 530.62, 44.68 },
    },

    -- Example without blip
    {
        city = "Heavytown",
        group = "Public",
        coords = { -269.07, 764.85, 117.65 },
        hide_blip = true,
    },

    -- Example with alternative style
    -- Best use is for in house bulletin boards.
    {
        city = "Heavytown",
        group = "Public",
        coords = { -269.07, 764.85, 117.65 },
        alternative_style = true, -- New since 1.3.0
    },

    -- Example to restrict creation of posters only to one or more specific jobs (incl. minimum rank)
    {
        city = "Goverment Board",
        group = "Public Goverment",
        coords = { -269.07, 764.85, 117.65 },
        restrict_create_by_jobs = {
            ["Sheriff"] = 1,
            ["Doctor"] = 1,
        },
    },

    -- Example to restrict creation of posters and hiding blip
    {
        city = "Secret Goverment Board",
        group = "Private Goverment",
        coords = { -269.07, 764.85, 117.65 },
        hide_blip = true,
        restrict_create_by_jobs = {
            ["Sheriff"] = 1
        },
    },

    -- Example to restrict view access of board
    {
        city = "Secret Goverment Board",
        group = "Private Goverment",
        coords = { -269.07, 764.85, 117.65 },
        restrict_view_by_jobs = {
            ["Sheriff"] = 1
        },
    },

    -- Example to restrict view & creation access of board
    {
        city = "Secret Sheriffs Doctor Board",
        group = "Private Sheriffs Doctor Boards",
        coords = { -269.07, 764.85, 117.65 },

        -- Sheriffs (min. rank 1) can create
        restrict_create_by_jobs = {
            ["Sheriff"] = 1,
        },

        -- Doktors (min. rank 1) and Sheriffs (min. rank 1) can view
        restrict_view_by_jobs = {
            ["Sheriff"] = 1,
            ["Doctor"] = 1,
        },
    },

    -- New since 1.4.0
    -- Example to restrict view access by callback
    {
        city = "Secret Goverment Toilet Board",
        group = "Private Goverment",
        coords = { -269.07, 764.85, 117.65 },

        -- Client side callback to restrict view access
        --
        -- Logic:
        -- If `restrict_view_by_jobs` and callback are given then callback or restrictions has to be true for view access.
        -- If only callback is given then callback result decides about view access.
        -- If only `restrict_view_by_jobs` is given then job restrictions decides about view access.
        -- If neither is given then everyone has view access.
        -- IMPORTANT: The callback does not overwrite job restrictions!
        -- IMPORTANT: Admins can always create posters independent of restrictions.
        --
        -- This callback will only be called on starting the resource or if a user gets a new job. You can trigger
        -- a recheck by calling the client event `nss_pinboard:reInitialize`. Do not use this callback for frequently
        -- changing conditions.
        ---@param player_ped_id number
        ---@param char_id number
        ---@param char_name string
        ---@param group string
        ---@param job string
        ---@param job_grade number
        ---@param is_admin boolean
        restrict_view_by_callback = function(
                player_ped_id,
                char_id,
                char_name,
                group,
                job,
                job_grade,
                is_admin
        )

            -- Your custom logic here, e.g. has the user a specific item or subscription?

            return true -- return true if user is allowed to view the board otherwise false
        end,
    },

    -- New since 1.4.0
    -- Example to restrict creation access by callback
    {
        city = "Secret Goverment Graveyard Board",
        group = "Private Goverment",
        coords = { -269.07, 764.85, 117.65 },

        -- Client side callback to restrict creation access
        --
        -- Logic:
        -- If `restrict_create_by_jobs` and callback are given then callback or restrictions has to be true for creation access.
        -- If only callback is given then callback result decides about creation access.
        -- If only `restrict_create_by_jobs` is given then job restrictions decides about creation access.
        -- If neither is given then everyone has creation access.
        -- IMPORTANT: The callback does not overwrite job restrictions!
        -- IMPORTANT: Admins can always create posters independent of restrictions.
        --
        -- This callback will be called every time a user opens a pinboard.
        ---@param player_ped_id number
        ---@param char_id number
        ---@param char_name string
        ---@param group string
        ---@param job string
        ---@param job_grade number
        ---@param is_admin boolean
        restrict_create_by_callback = function(
                player_ped_id,
                char_id,
                char_name,
                group,
                job,
                job_grade,
                is_admin
        )

            -- Your custom logic here, e.g. has the user a specific item or subscription?

            return true -- return true if user is allowed to create posts on the board otherwise false
        end,
    },

    -- Example 2 only image posters allowed
    {
        city = "My Personal Board 2",
        group = "Public",
        coords = { -269.07, 764.85, 117.65 },

        prevent_text_posters = true,
    },

    -- Example 3 only text posters allowed
    {
        city = "My Personal Board 3",
        group = "Public",
        coords = { -269.07, 764.85, 117.65 },

        prevent_image_posters = true,
    },
}

-- Defines which user group is admin group. If you do not want an admin group, set this to 'i-want-no-admin-group'.
-- Important: Admins can do everything (removing posts, post everywhere, see all job boards, etc.)
Config.NameOfAdminGroup = 'admin'

-- true = group can remove notes from the bulletin board
-- Note: Admins can always remove notes
Config.GroupRemovePermissions = {
    ["admin"] = true
}

-- true = all grades of the job can remove notes from the bulletin board
-- number = only job grade equal or higher can remove notes from the bulletin board
-- Note: Admins have all permissions.
Config.JobRemovePermissions = {
    --["Sheriff"] = 1
}

-- true = group/character name can add notes to all bulletin boards at same time.
-- Note: Overwrites Config.NotePiningGroupServices.
-- Note: Admins can always post notes everywhere
Config.PostEverywhereAtOncePermissions = {
   {
    group = "admin",
   }
}

Config.PostEverywhereAtOncePermissions.Groups = {
    --["support"] = true
}

Config.PostEverywhereAtOncePermissions.Names = {
    --["Jules Brown"] = true
}

-- Globally disable creating text posters (can be overwritten for each pinboard config via `prevent_text_posters`)
-- Admins can always create text posters
Config.PreventCreateTextPosters = false

-- Globally disable creating image posters (can be overwritten for each pinboard config via `prevent_image_posters`)
-- Admins can always create image posters
Config.PreventCreateImagePosters = false

-- Allow users to pin notes to all boards of a group for a fee, set to nil to disable
-- Note: Admins can post notes everywhere for free
Config.NotePiningGroupServices = {

    -- Example for a group with a cost of 0.5
    {
        group = "admin", -- Required: Name of board group (used for "post at all boards" option with same group)
        cost = 0.5, -- Required: Cost for pinning a note to all boards of this group
    }
}