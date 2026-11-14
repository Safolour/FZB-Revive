scoreboard players add @s origin.age 1
scoreboard players operation #titan.light.id origin.fx_id = @s origin.fx_id
execute as @e[type=item_display,tag=titan.lightning.circle] if score @s origin.fx_id = #titan.light.id origin.fx_id at @s run tp @s ~ ~ ~ ~20 0
particle minecraft:dust_color_transition{from_color:[0,0,0],to_color:[1,0,0],scale:1.5} ~ ~3.3 ~ 0 5 0 0 20 force @a[scores={system.room=4..,particle=0..1},distance=..80]
particle minecraft:squid_ink ~ ~0.3 ~ 0 0 0 0.3 2 force @a[scores={system.room=4..,particle=0..1},distance=..80]
scoreboard players operation #titan.light.left origin.tool_cfg = @s origin.light_cd
scoreboard players operation #titan.light.left origin.tool_cfg -= @s origin.age
execute if score #titan.light.left origin.tool_cfg matches 2 run function zombie:skill/creation/titan/lightning/spark
execute if score #titan.light.left origin.tool_cfg matches 1 run summon lightning_bolt ~ ~ ~ {Silent:1b,Tags:["origin.light.bolt","titan.lightning.bolt"]}
execute if score #titan.light.left origin.tool_cfg matches ..0 run function zombie:skill/creation/titan/lightning/strike
