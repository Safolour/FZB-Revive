# 临时碰撞：玩家脚底上方0.8格取1.2半径；每把撞一次即消失。
scoreboard players set #shovel.hit origin.tool_cfg 0
execute positioned ~ ~-0.8 ~ as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..1.2,sort=nearest,limit=1] run function zombie:skill/creation/origin/shovel/hit
execute if score #shovel.hit origin.tool_cfg matches 1 run return run function zombie:skill/creation/origin/shovel/impact
execute unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless block ~ ~ ~ minecraft:void_air run function zombie:skill/creation/origin/shovel/impact
