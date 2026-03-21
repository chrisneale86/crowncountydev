fx_version "adamant"
game "rdr3"
rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."
this_is_a_map "yes"

lua54 'yes'

client_scripts {
    'config.lua',
    'client.lua'
  }

files {
    'stream/*.ytyp',
    'conf_light_mlo_gk_8kh9027.xml'
}



data_file 'GTXD_PARENTING_DATA' 'gktxd.meta'
file 'gktxd.meta'


data_file 'DLC_ITYP_REQUEST' 'stream/mlo_gk_99ey72h.ytyp'
data_file 'TIMECYCLEMOD_FILE' 'conf_light_mlo_gk_8kh9027.xml'

escrow_ignore {
    'stream/*/*/*.ydr',
    'config.lua'
}


version '1.0'
author 'GamerKim'
description 'MLO: mlo_witch_house'
dependency '/assetpacks'