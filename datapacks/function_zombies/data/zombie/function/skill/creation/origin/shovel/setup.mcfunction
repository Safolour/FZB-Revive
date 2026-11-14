tag @s add origin.combat_fx
tag @s add origin.shovel_fx
tag @s add origin.shovel.anchor
scoreboard players operation @s origin.owner = #owner origin.owner
scoreboard players add #next origin.fx_id 1
scoreboard players operation @s origin.fx_id = #next origin.fx_id
scoreboard players operation #fx origin.fx_id = @s origin.fx_id
scoreboard players set @s origin.fx_age 0
data merge entity @s {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Silent:1b}
execute if entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] run tp @s ~ ~ ~ facing entity @p[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] feet
tag @s add origin.shovel.new
execute store result storage origin_tool shovel_rot.yaw float 0.01 run data get entity @s Rotation[0] 100
execute store result score #shovel.pitch origin.tool_cfg run data get entity @s Rotation[1] 100
scoreboard players add #shovel.pitch origin.tool_cfg 4500
execute store result storage origin_tool shovel_rot.pitch float 0.01 run scoreboard players get #shovel.pitch origin.tool_cfg
execute at @s summon item_display run function zombie:skill/creation/origin/shovel/model with storage origin_tool shovel_rot
execute as @e[type=item_display,tag=origin.shovel.model] if score @s origin.fx_id = #fx origin.fx_id run ride @s mount @e[type=armor_stand,tag=origin.shovel.new,limit=1]
tag @s remove origin.shovel.new
playsound minecraft:block.end_portal_frame.fill hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 0
particle minecraft:gust ~ ~ ~ 0 0 0 0 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
