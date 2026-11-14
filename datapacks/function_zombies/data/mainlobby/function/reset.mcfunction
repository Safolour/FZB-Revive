
function mainlobby:setting/reset
scoreboard objectives remove lobby.hologram

scoreboard objectives remove lobby.menu_uuid
scoreboard objectives remove lobby.uuid
scoreboard objectives remove lobby.menu_page
scoreboard objectives remove lobby.menu_item
scoreboard objectives remove lobby.death

scoreboard objectives remove lobby.info

team remove mainlobby.player

data remove storage stat root

function mainlobby:scoreboard/reset

execute as @e[type=chest_minecart,tag=npc,tag=lobby,tag=minecart] run function mainlobby:npc/joingame/kill

forceload remove 4 832
forceload remove 161 670
forceload remove 482 660
forceload remove 800 660
forceload remove 1124 660

data remove storage time root
execute as @e[type=interaction,tag=lobby,tag=reload_capture] run function system:death
