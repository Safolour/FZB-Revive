# 1.2格临时采样半径；从射线高度向下1.2选择玩家脚底。
execute positioned ~ ~-1.2 ~ as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..1.2] run function zombie:skill/creation/origin/laser/check_hit
scoreboard players add #laser.step origin.tool_cfg 1
execute if score #laser.step origin.tool_cfg < #laser.steps origin.tool_cfg positioned ^ ^ ^0.5 run function zombie:skill/creation/origin/laser/ray
