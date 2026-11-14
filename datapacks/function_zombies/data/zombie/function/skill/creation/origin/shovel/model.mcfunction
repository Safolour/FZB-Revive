tag @s add origin.combat_fx
tag @s add origin.shovel_fx
tag @s add origin.shovel.model
scoreboard players operation @s origin.owner = #owner origin.owner
scoreboard players operation @s origin.fx_id = #fx origin.fx_id
# 直接写Rotation，不teleport骑乘显示体以免脱离载具。
$data merge entity @s {Rotation:[$(yaw)f,$(pitch)f]}
data merge entity @s {item:{id:"minecraft:diamond_shovel",count:1},transformation:{translation:[0f,0f,-0.25f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0.7068252f,0f,0.7073883f],scale:[1f,1f,1f]}}
