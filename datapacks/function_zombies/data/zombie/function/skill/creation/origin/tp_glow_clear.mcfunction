execute if entity @s[team=origin.red] run data merge entity @s {Glowing:0b}
execute if entity @s[team=origin.white] run data merge entity @s {Glowing:0b}
execute if entity @s[team=origin.red] run team join mob @s
execute if entity @s[team=origin.white] run team join mob @s
attribute @s minecraft:movement_speed modifier remove origin:arrival_slow
scoreboard players set @s origin.tp_glow 0
