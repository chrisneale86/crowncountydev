author 'Xakra <Discord:Xakra#8145:https://discord.gg/kmsqB6xQjH>'
version '2.2'

fx_version "adamant"
lua54 "on"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

game "rdr3"

shared_scripts {
    'config.lua',
    'locale.lua',
    'languages/*.lua',
	'client/functions.lua',
}

client_scripts {
	'framework/client.lua',
	'client/client.lua',
	'client/delivery/corn.lua',
	'client/delivery/supplies.lua',
	'client/delivery/liqueur.lua',
	'client/delivery/explosives.lua',
	'client/contract/train.lua',
	'client/contract/prisioner.lua',
	'client/contract/escort.lua',
	'client/contract/kidnapping.lua',
}

server_scripts {
	'framework/server.lua',
	'server/server.lua',
}

files {
	'client/img/*.png',
}

escrow_ignore {
	'config.lua',
	'languages/*.lua',
	'framework/client.lua',
	'framework/server.lua',
}
dependency '/assetpacks'