
scoreboard players set hasplayer lobby.winter.tick 0
execute if entity @a[x=1124,y=100,z=660,distance=..50] run scoreboard players set hasplayer lobby.winter.tick 1

execute if score hasplayer0 lobby.winter.tick = hasplayer lobby.winter.tick run return fail
scoreboard players operation hasplayer0 lobby.winter.tick = hasplayer lobby.winter.tick

execute if score hasplayer lobby.winter.tick matches 1 run function decoration:lobby/winter/hasplayer
execute if score hasplayer lobby.winter.tick matches 0 run function decoration:lobby/winter/noplayer

