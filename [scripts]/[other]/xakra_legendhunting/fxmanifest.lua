author 'Xakra <Discord:Xakra#8145:https://discord.gg/kmsqB6xQjH>'
version '2.0'
description 'xakra_legendhunting'

fx_version "adamant"
lua54 "on"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

game "rdr3"

shared_scripts {
    'locale.lua',
    'languages/*.lua',
	'client/functions.lua',
	'config/**/*.lua',
}

client_scripts {
	'framework/client.lua',
	'client/client.lua',
	'client/animals/*.lua',
}

server_scripts {
	'framework/server.lua',
	'server/server.lua',
}

files {
	'client/img/*.png',
}

escrow_ignore {
	'config/**/*.lua',
	'languages/*.lua',
	'framework/*.lua',
}
dependency '/assetpacks'