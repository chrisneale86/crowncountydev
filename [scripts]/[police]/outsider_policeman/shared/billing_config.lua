Billing = {}

Billing.Command = "bill"                 -- command to open menu

Billing.UseSingleLocation = true         -- if true each place of billing players can choose where they want to pay the bill it will show all towns, if false only shows town they are in

Billing.DisableBillingPlayerName = false -- if you want to disable the player name in the bill

Billing.UseLocations = true              -- if you want to enable locations to pay, if false then players need to go to sheriff to pay bills

--ITEM NAME IS FOUND IN PENALCODE.CONFIG FOR BILL ITEM
Billing.NotesMessage = function(data)
    -- if you use my notes system, make a note on how you want the bill to look like then go to databse and copy here like in the example , \n this are new lines, spaces matter too, just copy from DB and paste here
    -- this is just an example, you must have the item in your outsider_notes script
    local description = "Bill to be paid to the Department Of Justice in the name of <br> %s Date: %s days" -- item description

    local message = "\n\n\n Bill issued by: " .. data.By .. " From: " .. data.Town .. " Police department" ..
        "\n\n Billing issued to: " .. data.Name .. " Amount of: $" .. data.Amount .. " Exp Date " .. data.DateToPay .. " \n For the Reason of: " .. data.Reason ..
        ".\n\n\n\n\n\n\n Find the Department Of Justice to Pay for the fine \nFines will acumulate and citizens will become wanted if not paid.\n\n\n\n Date Issued:" .. data.DateIssued .. " DOJ"
    return message, description --dont touch
end

-- translation of bill status ONE WORD ONLY
Billing.States = {
    ACTIVE = "ACTIVE",
    PAID = "PAID",
    ARCHIVED = "ARCHIVED",
    UNPAID = "UNPAID"
}

Billing.Config = {
    -- LOCATIONS MUST BE THE SAME AS THE LOCATIONS IN THE CONFIG FILE
    Valentine = {

        MenuPos = vector3(-279.37, 812.27, 122.55), -- menu npc blip position
        Heading = 106.52,                           --npc heading
        PromptName = "Billing Valentine",
        Blip = {
            Enable = false,
            Name = "Billing",
            Sprite = "blip_cash_arthur",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Modifier = "BLIP_MODIFIER_MP_WHITE_FLAG",
        },
        Npc = {
            Enable = true,
            Model = "CS_MARSHALL_THURWELL",
        },
    },
    Strawberry = {

        MenuPos = vector3(-1805.57, -356.06, 164.19),
        Heading = 301.12,
        PromptName = "Billing Strawberry",
        Blip = {
            Enable = false,
            Name = "Billing",
            Sprite = "blip_cash_arthur",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Modifier = "BLIP_MODIFIER_MP_WHITE_FLAG",
        },
        Npc = {
            Enable = true,
            Model = "CS_MARSHALL_THURWELL",
        },
    },

    Blackwater = {
        MenuPos = vector3(-768.14, -1238.04, 44.51),
        Heading = 324.92,
        PromptName = "Billing Blackwater",
        Blip = {
            Enable = false,
            Name = "Billing",
            Sprite = "blip_cash_arthur",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Modifier = "BLIP_MODIFIER_MP_WHITE_FLAG",
        },
        Npc = {
            Enable = true,
            Model = "CS_MARSHALL_THURWELL",
        },
    },

    Rhodes = {
        MenuPos = vector3(1355.88, -1298.24, 76.82),
        Heading = 9.42,
        PromptName = "Billing Rhodes",
        Blip = {
            Enable = false,
            Name = "Billing",
            Sprite = "blip_cash_arthur",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Modifier = "BLIP_MODIFIER_MP_WHITE_FLAG",
        },
        Npc = {
            Enable = true,
            Model = "CS_MARSHALL_THURWELL",
        },
    },

    SaintDenis = {
        MenuPos = vector3(2513.25, -1305.25, 49.0),
        Heading = 185.25,
        PromptName = "Billing Saint Denis",
        Blip = {
            Enable = false,
            Name = "Billing",
            Sprite = "blip_cash_arthur",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Modifier = "BLIP_MODIFIER_MP_WHITE_FLAG",
        },
        Npc = {
            Enable = true,
            Model = "CS_MARSHALL_THURWELL",
        },
    },
    Armadillo = {
        MenuPos = vector3(-3627.88, -2603.58, -13.29),
        Heading = 211.34,
        PromptName = "Billing Armadillo",
        Blip = {
            Enable = false,
            Name = "Billing",
            Sprite = "blip_cash_arthur",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Modifier = "BLIP_MODIFIER_MP_WHITE_FLAG",
        },
        Npc = {
            Enable = true,
            Model = "CS_MARSHALL_THURWELL",
        },
    },
    Tumbleweed = {
        MenuPos = vector3(-5531.19, -2935.2, -1.87),
        Heading = 262.77,
        PromptName = "Billing Tumbleweed",
        Blip = {
            Enable = false,
            Name = "Billing",
            Sprite = "blip_cash_arthur",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Modifier = "BLIP_MODIFIER_MP_WHITE_FLAG",
        },
        Npc = {
            Enable = true,
            Model = "CS_MARSHALL_THURWELL",
        },
    },
    Annesburg = {
        MenuPos = vector3(2912.6, 1314.71, 44.69),
        Heading = 293.64,
        PromptName = "Billing Annesburg",
        Blip = {
            Enable = false,
            Name = "Billing",
            Sprite = "blip_cash_arthur",
            Color = "COLOR_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Modifier = "BLIP_MODIFIER_MP_WHITE_FLAG",
        },
        Npc = {
            Enable = true,
            Model = "CS_MARSHALL_THURWELL",
        },
    }

    -- add more town

}
