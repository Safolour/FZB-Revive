execute unless entity @s[tag=origin.shovel.anchor] run return 0
scoreboard players add @s origin.fx_age 1
scoreboard players operation #fx origin.fx_id = @s origin.fx_id
execute if score @s origin.fx_age >= #shovel.life origin.tool_cfg run return run function zombie:skill/creation/origin/shovel/fx_finish
# 关键帧轴距0/3/6/12tick=0/-1.5/-2/.75；7..11为临时插值。
execute if score @s origin.fx_age matches 1..4 at @s run tp @s ^ ^ ^-0.5
execute if score @s origin.fx_age matches 7..11 at @s run tp @s ^ ^ ^0.35
execute if score @s origin.fx_age matches 12.. at @s run tp @s ^ ^ ^1
execute if score @s origin.fx_age matches 15 at @s run playsound minecraft:entity.puffer_fish.blow_out hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 1.5 1
execute if score @s origin.fx_age matches 4.. at @s positioned ^ ^ ^-2.35 run function zombie:skill/creation/origin/shovel/trail
execute if score @s origin.fx_age matches 12.. at @s run function zombie:skill/creation/origin/shovel/collide
