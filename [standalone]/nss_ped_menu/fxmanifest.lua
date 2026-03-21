fx_version 'adamant'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

game 'rdr3'
lua54 'yes'
version '1.1.1'

author 'DerHobbs'
author 'systemNEO'

description 'Transforms you in any ped you want via simple menu.'

shared_script {
    'config.lua',
    'internal_cfg.lua',
    'shared/**/*',
    'languages/**/*'
}

server_scripts {
    'server/server.lua',
}

client_scripts {
    'client/modules/**/*',
    'client/client.lua'
}

dependencies {
    'nss_libs',
    'vorp_core',
}

escrow_ignore {
    'config.lua',
    'config.demo.lua',
    'shared/peds.lua',
    'languages/**/*'
}

dependency '/assetpacks'