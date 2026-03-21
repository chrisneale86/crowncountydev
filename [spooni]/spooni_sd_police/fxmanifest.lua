fx_version "adamant"
rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."
game "rdr3"
lua54 "yes"
this_is_a_map "yes"
use_experimental_fxv2_oal 'yes'

author "Spooni"
description "St. Denis Police"
version '1'

server_scripts {
	'server/*.lua',
}

client_scripts {
	'shared/int_sd_police.lua',
	"client/*.lua",
}

escrow_ignore {
	'stream/*.ydr',
	'stream/[props]/*.ydr',
	'shared/int_sd_police.lua',
}

files {
	'stream/[props]/*.ytyp'
}

data_file 'DLC_ITYP_REQUEST' 'stream/[props]/*.ytyp'

files {'timecycle_sd_police_1.xml'}

data_file "TIMECYCLEMOD_FILE" "timecycle_sd_police_1.xml"


dependency '/assetpacks'