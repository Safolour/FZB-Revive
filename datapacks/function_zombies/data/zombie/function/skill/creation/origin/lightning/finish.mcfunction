# P1 also has a floor change after the first large strike, before the Titan transition.
execute if entity @s[tag=!origin.p3,tag=origin.large75,tag=!origin.p1.floor] if score @s origin.big matches 1 run function zombie:skill/creation/origin/lightning/floor_75
execute if entity @s[tag=!origin.p3,tag=origin.large75,tag=!origin.p1.floor] if score @s origin.big matches 1 run tag @s add origin.p1.floor
# P3 restores its floor in the final death sequence, never at a health threshold.
scoreboard players set @s origin.cast 0
scoreboard players set @s origin.big 0
scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=item_display,tag=origin.light.circle] if score @s origin.owner = #owner origin.owner run kill @s
team join mob @s
data merge entity @s {NoAI:0b,Glowing:0b}
execute store result score @s origin.light_cd run random value 120..180
