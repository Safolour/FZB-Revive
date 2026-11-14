tag @s add mob.skill
tag @s add titan.lightning.circle
scoreboard players operation @s origin.owner = #titan.light.owner origin.owner
scoreboard players operation @s origin.fx_id = #titan.light.id origin.fx_id
data merge entity @s {item:{id:"minecraft:diamond",count:1,components:{"minecraft:item_model":"custom:origin_circle"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[6f,2f,6f],right_rotation:[0f,0f,0f,1f]}}
