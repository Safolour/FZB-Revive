tag @s add origin.combat_fx
tag @s add origin.light.circle
tag @s add origin.light.new
scoreboard players operation @s origin.owner = #owner origin.owner
data merge entity @s {item:{id:"minecraft:diamond",count:1,components:{"minecraft:item_model":"custom:origin_circle"}},transformation:{translation:[0f,1.6f,0f],left_rotation:[0f,0f,0f,1f],scale:[12f,3f,12f],right_rotation:[0f,0f,0f,1f]},brightness:{block:15,sky:15},view_range:1f}
