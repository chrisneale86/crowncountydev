fx_version "adamant"

game "rdr3"

this_is_a_map "yes"

lua54 "yes"

rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."

author "YourMAPS"

version "1.0 - May 2023"


data_file 'DLC_ITYP_REQUEST' 'heavy_furnace.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/bar_counter01.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/bar_counter02.ytyp'

client_scripts {
	'config.lua',
	'client.lua',
}




dependency '/assetpacks'
dependency '/assetpacks-redm'