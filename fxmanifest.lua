fx_version 'cerulean'
game 'gta5'
lua54 'yes'
version '1.0.4'
author 'OffSey | Elite Store'
description 'Elite Vehicle Menu'

shared_script {
  'config.lua',
  'locales.lua'
}

client_scripts { 
  'locales.lua',
  'client/cl_utils.lua',
  'client/client.lua'
}

server_scripts { 
  'server/server.lua',
  'server/bridge/*.lua'
}

ui_page 'web/index.html'

files {
  'web/index.html',
  'web/style.css',
  'web/scripts.js',
  'web/img/*.png',
  'web/img/**/*.png'
}

escrow_ignore {
  'config.lua',
  'locales.lua',
  'client/cl_utils.lua',
  'server/bridge/*.lua'
}
dependency '/assetpacks'