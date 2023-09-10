
description 'TT_HitIndicator'

version '1.0.0'

author 'Made by TijmenT#0001/TT Scripts'

fx_version 'adamant'
games { 'gta5' }


client_scripts {
    'client/main.lua',
    'client/storage.lua'
} 

server_script 'server/main.lua'


shared_script 'config.lua'


ui_page "client/html/index.html"
    

files {
    'client/html/style.css',
    'client/html/reset.css',
    'client/html/listener.js',
    'client/html/index.html',
    'client/html/sounds/demo.ogg',
    'client/html/sounds/skeet.ogg',
    'client/html/sounds/cod.ogg',
    'client/html/sounds/codheadshot.ogg',
    'client/html/sounds/csgo.ogg',
    'client/html/sounds/csgoheadshot.ogg',
    'client/html/sounds/fortnite.ogg',
    'client/html/sounds/fortniteheadshot.ogg',
    'client/html/sounds/minecraft.ogg',
    'client/html/sounds/rust.ogg',
    'client/html/sounds/rustheadshot.ogg',
    'client/html/sounds/tf2_crit.ogg'
}
