
scoreboard objectives remove window
scoreboard objectives remove window0
scoreboard objectives remove window.timer
scoreboard objectives remove window.piece
scoreboard objectives remove window.piece0

scoreboard players set @e[type=marker,tag=window] window.piece 6
execute as @e[type=marker,tag=window] at @s run function map:window/repair1 with entity @s data.slab