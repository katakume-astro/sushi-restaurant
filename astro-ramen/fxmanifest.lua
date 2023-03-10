fx_version 'adamant'
game 'gta5'
lua54 'true'
author 'Astro-Development'
description 'Astro - Anticheat'
version '1.0.0'


client_script {
    'client/anticheat.lua'
}

server_script {
    'server/anticheat.lua'
}

shared_script '@ox_lib/init.lua'

shared_script '@es_extended/imports.lua'