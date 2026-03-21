fx_version "adamant"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author 'Amary'
game "rdr3"

  files {
   'stream/*.ytyp'

  }  
 
file 'amary_heartlands_ranch.xml'
objectloader_map 'amary_heartlands_ranch.xml'  
  
data_file 'DLC_ITYP_REQUEST' 'stream/*.ytyp'
    
dependency '/assetpacks'
dependency '/assetpacks-redm'