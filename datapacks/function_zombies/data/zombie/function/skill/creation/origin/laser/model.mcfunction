tag @s add origin.combat_fx
tag @s add origin.laser_fx
tag @s add origin.laser.model
scoreboard players operation @s origin.owner = #owner origin.owner
scoreboard players operation @s origin.fx_id = #fx origin.fx_id
$scoreboard players set @s origin.stage $(layer)
$data merge entity @s {item:{id:"minecraft:diamond",count:1,components:{"minecraft:item_model":"custom:laser"}},transformation:{translation:[6f,0f,0f],scale:[100f,$(scale)f,$(scale)f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},brightness:{block:15,sky:0}}
tp @s ~ ~ ~ ~90 0
