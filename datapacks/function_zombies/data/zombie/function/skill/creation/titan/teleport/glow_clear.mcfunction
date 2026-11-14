execute if entity @s[team=titan.red] run data merge entity @s {Glowing:0b}
execute if entity @s[team=titan.red] run team join mob @s
attribute @s minecraft:movement_speed modifier remove titan:arrival_slow
scoreboard players set @s titan.tp_glow 0
