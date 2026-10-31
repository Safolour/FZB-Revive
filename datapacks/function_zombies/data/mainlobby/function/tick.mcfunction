
scoreboard players operation player_count lobby.info = online player_count
scoreboard players set in_game lobby.info 0
execute store result score in_game lobby.info run execute if entity @a[scores={system.room=3..}]
function mainlobby:scoreboard/tick

execute as @e[type=chest_minecart,tag=npc,tag=lobby,tag=minecart] run function mainlobby:npc/joingame/tick
execute as @e[type=zombie,tag=npc,tag=lobby] run function mainlobby:npc/joingame/tick0

scoreboard players operation player_count0 lobby.info = player_count lobby.info
scoreboard players operation in_game0 lobby.info = in_game lobby.info