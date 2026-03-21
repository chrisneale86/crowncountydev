fx_version "cerulean"
game "rdr3"
rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."
lua54 'yes'

client_scripts {
  'CONFIG/*.lua',
  'CLIENT/client.lua',
}

server_scripts {
  'CONFIG/*.lua',
  'SERVER/server.lua',
}

escrow_ignore {
  'CONFIG/*.lua',
}
dependency '/assetpacks'