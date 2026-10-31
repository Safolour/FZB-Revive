

title @s reset
scoreboard players set @s system.room 3
team leave @s
team join waitlobby.player @s
scoreboard players set @s interaction.state 1
scoreboard players set @s inventory 1
scoreboard players set @s inventory.lock 1
scoreboard objectives setdisplay sidebar waitlobby.scoreboard

#xp set @s 447010 levels
#xp set @s 4022931 points
xp set @s 0 levels
xp set @s 0 points

execute store result score in_game player_count run execute if entity @a[scores={system.room=3..}]

function map:waitlobby/title
function map:waitlobby/scoreboard/player_count

function inventory:inventory/wait_lobby
function weapon:range/gun/allammo

tellraw @a[scores={system.room=3..}] [{translate:zb.waitlobby.tellraw.2,with:[{selector:"@s",color:white},{score:{name:in_game,objective:player_count},color:aqua},{score:{name:max_player,objective:map},color:aqua}]}]

team modify waitlobby.scoreboard_line1 suffix [{translate:zb.game.scoreboard.map.N_A}]
execute if score type map matches 3 run tp @s 25 25 107 315 0
execute if score type map matches 3 run team modify waitlobby.scoreboard_line1 suffix [{translate:zb.game.scoreboard.map.ee}]
execute if score type map matches 4 run tp @s 300 92 168 180 0
execute if score type map matches 4 run team modify waitlobby.scoreboard_line1 suffix [{translate:zb.game.scoreboard.map.lab}]
execute if score type map matches 4 positioned 300 92 158 rotated 0 0 unless entity @e[type=zombie,tag=train,distance=..2] run function zombie:zombie/train/0