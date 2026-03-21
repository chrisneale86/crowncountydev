fx_version "adamant"
rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."
game "rdr3"
lua54 "yes"
this_is_a_map "yes"
use_experimental_fxv2_oal 'yes'

author "Spooni"
description "Caliga Hall"

server_scripts {
  "server/*.lua",
}

client_scripts {
	"shared/*.lua",
	"client/*.lua",
}

escrow_ignore {
  "stream/*.ydr",  -- Ignore all .ydr
"shared/*.lua",
}

files {
  'stream/cal_01.ytyp';
}

data_file 'DLC_ITYP_REQUEST' 'stream/cal_01.ytyp' ;

files {'timecycle_cal_houses.xml'}

data_file "TIMECYCLEMOD_FILE" "timecycle_cal_houses.xml"

dependency '/assetpacks'
dependency '/assetpacks-redm'