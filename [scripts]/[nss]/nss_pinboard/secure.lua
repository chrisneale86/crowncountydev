-- New since 1.3.5:
-- This config is only readable by server and contains sensitive information like webhooks.
-- Discord webhooks are sensitive and should not be shared publicly because they can be used to remove the complete
-- webhook from Discord or post unwanted messages.

Config = Config or {}

-- Set to nil to disable all webhooks
Config.DiscordWebhook = {
    active = true,
    webhook_url = "", -- If set, this webhook will be used for all pinboard actions and ignores anonymous setting.
    webhook_url_new = "https://discord.com/api/webhooks/1474506430013898935/IsjlSuD-qd92g9cjITmk5ijae9OcVxSdOYpkVsaI5dYR-JGNN5Jph3s4LrCkdqnKNXVr", -- If you want new and removed items in one discord channel set this to the same as webhook_url_remove
    webhook_url_removed = "https://discord.com/api/webhooks/1471921148596981913/9N_xtVQRe8Yk0C4owPZWBDFl9Jy1iSBrTV1m5EUhW2XBqd9fhqEiR2snNk3QgOjWkheP",
    anonymous_new = false,
    anonymous_remover = false,
    avatar_url = "https://media.discordapp.net/attachments/1468664423077117963/1470022743708795153/Untitled_design.png?ex=6990605d&is=698f0edd&hm=802d2c7dcdf070c87d24468e9e7903254fd5be5aa38443dca2f2bcaeee1281c5&=&format=webp&quality=lossless&width=1536&height=864", -- Required if webhook is used.
    server_icon_url = "https://media.discordapp.net/attachments/1468664423077117963/1470022743708795153/Untitled_design.png?ex=6990605d&is=698f0edd&hm=802d2c7dcdf070c87d24468e9e7903254fd5be5aa38443dca2f2bcaeee1281c5&=&format=webp&quality=lossless&width=1536&height=864", -- Required if webhook is used.
    new_text_poster_color_hex = "#00c500",
    new_image_poster_color_hex = "#00c500",
    remove_text_poster_color_hex = "#990000",
    remove_image_poster_color_hex = "#990000",
    system_user_alias = "NssPinboard",
}

-- You can use all options from 'Config.DiscordWebhook' (excluding 'active' and 'system_user_alias') to
-- overwrite the default settings for the related board only. If an option is not set the default from
-- 'Config.DiscordWebhook' will be used.
--
-- Set too nil to disable individual webhooks.
Config.PosterIndividualDiscordWebhooks = {

    -- "Valentine" is the "city" name from the Config.Posters configuration.
    -- In this example all defaults from Config.DiscordWebhook for "Valentine" are overwritten.
    ['Valentine'] = {
        webhook = {
            webhook_url = 'https://discord.com/api/webhooks/1471608507467038722/m_KqeeAQdQ-PzVBFdG5GcRJT7rawQFlH7BjW4unjh2LOpxS--w280D2V3XGjrx6tmp9R',
            avatar_url = 'YOUR CUSTOM AVATAR URL FOR THIS BOARD ONLY',
            server_icon_url = 'https://media.discordapp.net/attachments/1468664423077117963/1470022743708795153/Untitled_design.png?ex=6990605d&is=698f0edd&hm=802d2c7dcdf070c87d24468e9e7903254fd5be5aa38443dca2f2bcaeee1281c5&=&format=webp&quality=lossless&width=1536&height=864',
            new_text_poster_color_hex = "#00ff00", -- Custom color for this board only
            new_image_poster_color_hex = "#00ff00", -- Custom color for this board only
            remove_text_poster_color_hex = "#ff0000", -- Custom color for this board only
            remove_image_poster_color_hex = "#ff0000", -- Custom color for this board only
        },
    },

    -- "Heavytown" is the "city" name from the Config.Posters configuration.
    -- In this example only the webhooks for new and removed items for "Heavytown" are overwritten.
    ['Heavytown'] = {
        webhook = {
            webhook_url_new = 'YOUR CUSTOM WEBHOOK URL FOR NEW ITEMS FOR THIS BOARD ONLY',
            webhook_url_removed = 'YOUR CUSTOM WEBHOOK URL FOR REMOVED ITEMS FOR THIS BOARD ONLY',
        },
    },

    -- "Goverment Board" is the "city" name from the Config.Posters configuration.
    -- In this example only the global webhook URL for "Goverment Board" is overwritten.
    ['Goverment Board'] = {
        webhook = {
            webhook_url = 'https://discord.com/api/webhooks/1471608507467038722/m_KqeeAQdQ-PzVBFdG5GcRJT7rawQFlH7BjW4unjh2LOpxS--w280D2V3XGjrx6tmp9R',
        },
    },
}