fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'

version '2.2.1'
author 'BLN Studio <bln-studio.com>'

client_scripts {
    'c/_misc.c.lua',
    'c/ammo.lua',
    'c/api.controller.c.lua',
    'c/buffs.lua',
    'c/anims/main.lua',
    'c/anims/smoking.lua',
    'c/anims/alcohol.lua',
    'c/dataview.lua',
    'c/dirt.lua',
    'c/drunk.lua',
    'c/hunger-thirst.lua',
    'c/urine.lua',
    'c/native.c.lua',
    'c/snake-poison.lua',
    'c/population.c.lua',
    'c/pvp.lua',
    'c/status-persistence.lua',
    'c/stress.lua',
    'c/temperature.c.lua',
    'c/usables.c.lua',
    'c/voice.c.lua',
    'c/main.c.lua',
}

shared_scripts {
    'config/*.lua',
    'sh/*.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    's/debug-helper.lua',
    's/storage.lua',
    's/memory-manager.lua',
    's/main.s.lua',
    's/usables.s.lua',
    's/vcheck.lua',
}

ui_page('ui/index.html')

files({
	"ui/index.html",
	"ui/assets/*.*",
    'ui/notify_icons/*.*',
})

dependencies {
    'bln_notify',
    'bln_lib',
    'oxmysql',
}

escrow_ignore {
    'config/*.lua',
}
dependency '/assetpacks'