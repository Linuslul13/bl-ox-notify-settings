fx_version 'cerulean'
games { 'gta5' }
author 'BL | Scripts'
version '1.0.0'
lua54 'yes'
client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua'
}

shared_scripts {
    'bl_config.lua',
    '@ox_lib/init.lua'
}

exports {
    'BL_Notify'
}

dependency 'ox_lib'