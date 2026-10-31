
execute if function map:game/rejoin_0 run return fail

title @s reset
scoreboard players set @s system.room 4
scoreboard players set @s stat.player 10
gamemode spectator @s
xp set @s 447010 levels
xp set @s 4022931 points
xp set @s 0 levels
team leave @s
team join game.player @s
scoreboard players set @s interaction.state 1
scoreboard players set @s inventory 1
scoreboard players set @s inventory.lock 1
execute if score type map matches 3 run tp @s 25 25 107 315 0
execute if score type map matches 4 run tp @s 300 92 168 180 0
