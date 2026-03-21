fx_version 'adamant'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'
lua54 'yes'
this_is_a_map 'yes'
use_experimental_fxv2_oal 'yes'

author 'Spooni'
description 'St. Denis Undertaker'

server_scripts {
  'server/*.lua',
}

client_scripts {
	'shared/int_undertaker.lua',
	'client/*.lua',
}

escrow_ignore {
  'stream/*.ydr',
  'shared/int_undertaker.lua',
}

files {
  'stream/sd_undertaker_props.ytyp'
}

data_file 'DLC_ITYP_REQUEST' 'stream/sd_undertaker_props.ytyp'
dependency '/assetpacks'