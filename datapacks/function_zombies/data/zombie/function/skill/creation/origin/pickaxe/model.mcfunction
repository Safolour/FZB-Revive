tag @s add origin.combat_fx
tag @s add origin.pickaxe_fx
tag @s add origin.pickaxe.model
scoreboard players operation @s origin.owner = #owner origin.owner
scoreboard players operation @s origin.fx_id = #fx origin.fx_id
data merge entity @s {item:{id:"minecraft:diamond_pickaxe",count:1},Rotation:[0f,-90f]}
