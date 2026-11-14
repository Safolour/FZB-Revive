tag @s add origin.combat_fx
tag @s add origin.sword_fx
tag @s add origin.sword.shadow
scoreboard players operation @s origin.owner = #owner origin.owner
data merge entity @s {item:{id:"minecraft:diamond",count:1,components:{"minecraft:item_model":"custom:shadow"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[4f,0f,4f],right_rotation:[0f,0f,0f,1f]},brightness:{block:15,sky:15},view_range:1f,teleport_duration:1}
