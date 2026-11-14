tag @s add origin.combat_fx
tag @s add origin.sword_fx
tag @s add origin.sword.model
scoreboard players operation @s origin.owner = #owner origin.owner
data merge entity @s {item:{id:"minecraft:diamond_sword",count:1},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,-0.9238795f,-0.38268346f],scale:[0.3f,0.3f,0.3f],right_rotation:[0f,0f,0f,1f]},brightness:{block:15,sky:15},view_range:1f}
