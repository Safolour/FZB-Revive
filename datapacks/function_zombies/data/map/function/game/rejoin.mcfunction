
execute unless entity @a[scores={system.room=4..}] run return run tellraw @s [{translate:zb.mainlobby.npc.5}]
execute store result score online lobby.info run execute if entity @a
execute if score online lobby.info matches ..1 run return fail
scoreboard players set rejoin game.player 0
execute store result storage game root.uuid int 1 run scoreboard players get @s uuid
function map:game/rejoin0 with storage game root
function map:game/rejoin1 with storage game root.player
execute if score rejoin game.player matches 0 run return run tellraw @s [{translate:zb.mainlobby.npc.5}]
tellraw @a[scores={system.room=4..}] [{translate:zb.multiplayer.1,with:[{selector:"@s",color:gray}]}]

execute store result score online player_count run execute if entity @a
execute store result score in_game player_count run execute if entity @a[scores={system.room=3..}]
scoreboard players operation in_game0 player_count = in_game player_count
scoreboard players operation online0 player_count = online player_count

execute if score type map matches 4 positioned 300 92 168 rotated 180 0 run tp @s ~ ~ ~ facing ^ ^ ^1
execute if score type map matches 3 positioned 25 25 107 rotated 315 0 run tp @s ~ ~ ~ facing ^ ^ ^1
function player_stat:revive/death_0