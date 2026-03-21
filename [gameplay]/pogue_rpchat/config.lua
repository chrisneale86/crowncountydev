Config = {}

Config.UseDiscord = true

Config.ServerName = 'Crown & County RP'
Config.WebHook = 'https://discord.com/api/webhooks/1471943998120923173/mmtWtXXZlIcWXupoSb9bDmzyLbLgOlIOvbaz-lLiYla4JrUnXGifhJSv2a6ZRe1iLnvJ' -- Reports
Config.logEnabled = true -- change to false if u dont want combat logging to be recorded
Config.webhook1 = 'https://discord.com/api/webhooks/1471943560931705021/mB_CwgpRRRUbDbwfdFUXmwxEFBw19z2qKUetfpfhjpj3P0CE03otH5TA4kmIX9_GssUz' -- Log ME
Config.webhook2 = 'https://discord.com/api/webhooks/1471943643739980065/CQ5TYnnUX4t-gIDc3Xamy11sUlMMCwcyhAMvmH_Kfbc5sb4Y2KS8MFFryO1-GYwj2PIi' -- Log DO



 -- 🔹 Local chat suggestion settings
Config.ChatSuggestions = {
    {
        name  = "/clear",
        help  = "Clears only your own chat window.",
        params = nil
    },
    {
        name  = "/emotemenu",
        help  = "Opens the emote menu.",
        params = nil
    },
}

Config.RPChat = {

    InputPlaceholder = "Write a message or /command...",
    ------------------------------------------------------------------
    -- COMMAND NAMES
    ------------------------------------------------------------------
    TryCommand        = "try",
    ReportCommand     = "report",
    GlobalSayCommand  = "say",
    AdminChatCommand  = "adminchat",
    PmCommand         = "pm",
    DocCommand        = "doccount",
    DiceCommand       = "dice",
    MeCommand         = "me",
    DoCommand         = "do",
    OocCommand        = "ooc",   -- 🔹 NEW: /ooc

    ------------------------------------------------------------------
    -- /TRY SETTINGS
    ------------------------------------------------------------------
    TrySuccess        = "Yes",
    TryFail           = "No",

    ------------------------------------------------------------------
    -- MASKED /me /do & NAMES
    ------------------------------------------------------------------
    MaskedPrefix      = "Masked Person : ",
    MaskedName        = "Masked Person",

    ------------------------------------------------------------------
    -- REPORT CHAT & /REPORT MESSAGES
    ------------------------------------------------------------------
    ReportPrefix          = "^*^1[Report]",
    ReportArrow           = " ^r^0 ➝ ",
    ReportFeedbackText    = "Administrators have been notified",

    ReportNoMessageText   = "Please enter a valid message!",
    ReportUserNotFoundText= "User not found!",
    ReportCharNotFoundText= "Character not found!",

    ------------------------------------------------------------------
    -- DISCORD WEBHOOK (REPORT EMBED)
    ------------------------------------------------------------------
    ReportWebhookTitle    = "📛 Report 📛",
    ReportWebhookFooter   = "📛 Report 📛",

    ReportWebhookOOCLabel = "OOC Name ➝",
    ReportWebhookICLabel  = "IC Name ➝",
    ReportWebhookHexLabel = "HEX ➝",
    ReportWebhookSeparator= " | ",

    ------------------------------------------------------------------
    -- 3D TEXT (BACKGROUND)
    ------------------------------------------------------------------
    BgCharWidth           = 0.006,
    BgTexture             = "feeds",
    BgSprite              = "toast_bg",

    ------------------------------------------------------------------
    -- PERMISSION & GENERIC ERROR TEXTS
    ------------------------------------------------------------------
    AdminGroup            = "admin",

    ErrorUserNotFoundText = "User not found!",
    ErrorCharNotFoundText = "Character not found!",
    ErrorNoPermissionText = "You do not have permission!",
    ErrorOnlyNumberText   = "Only numbers are allowed!",
    ErrorInvalidText      = "Please enter a valid text!",

    ------------------------------------------------------------------
    -- GLOBAL /SAY
    ------------------------------------------------------------------
    GlobalSayPrefix       = "⚠️🔊 [GLOBAL ANNOUNCEMENT] 🌍⚠️",
    GlobalSayColor        = { 255, 200, 80 },

    ------------------------------------------------------------------
    -- /ADMINCHAT
    ------------------------------------------------------------------
    AdminChatPrefix       = "^*^6[⚡ ADMIN CHAT ⚡] ^*^3",

    ------------------------------------------------------------------
    -- /PM
    ------------------------------------------------------------------
    PmUsageText           = "Usage: /pm [id] [message]",
    PmInvalidIdText       = "Please enter a valid player ID!",
    PmNoPlayerText        = "There is no active player with this ID!",
    PmNoPermissionText    = "You do not have permission to use this command!",
    PmEmptyMessageText    = "You cannot send an empty message!",
    PmPlayerPrefix        = "^*^6[ADMIN MESSAGE]^r^0 ➝ ",
    PmPlayerSuffix        = " ^7(↺ You can reply via /report.)",
    PmAdminEchoPattern    = "^*^6[ADMIN PM -> ID:%d (%s)]^r^0 ➝ %s",

    ------------------------------------------------------------------
    -- /SAYISAY (DOC COUNTER)
    ------------------------------------------------------------------
    DocPrefix             = "^*^2DOC | ",

    ------------------------------------------------------------------
    -- /DICE
    ------------------------------------------------------------------
    DicePrefix            = "^*^2DICE | ",
    DiceCountdownPattern  = "^*^2DICE | %s ^r is rolling the dice... %d",
    DiceResultPattern     = "🎲 %d + %d = %d",

    ------------------------------------------------------------------
    -- /OOC
    ------------------------------------------------------------------
    -- solda sadece "Firstname Lastname" çıkacak; bu prefix OOC tag’i için
    OocPrefix             = "^*^5[OOC] ",         -- [OOC] John Doe
    OocColor              = { 180, 200, 255 },    -- me/do’dan farklı, açık mavi

    ------------------------------------------------------------------
    -- /ME AND /DO
    ------------------------------------------------------------------
    MePrefix              = "^*^4ME | ",
    MeWebhookLabel        = "ME ➝ ",

    DoPrefix              = "^*^3DO | ",
    DoWebhookLabel        = "DO ➝ ",
}


