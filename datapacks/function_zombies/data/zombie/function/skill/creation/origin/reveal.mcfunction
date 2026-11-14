execute at @e[type=marker,tag=origin.destination,limit=1] run tp @s ~ ~ ~
data merge entity @s {NoAI:0b}
team join origin.red @s
data merge entity @s {Glowing:1b}
scoreboard players set @s origin.tp_glow 8
attribute @s minecraft:movement_speed modifier add origin:arrival_slow -0.15 add_multiplied_total
