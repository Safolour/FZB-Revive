# @s is the selected player; only the ray's execution position advances.
execute unless block ~ ~ ~ #minecraft:replaceable unless block ~ ~ ~ minecraft:water run return 0
# Endpoint checks cover standing/crouching/swimming eye heights; facing uses actual eyes.
execute positioned ~ ~-1.62 ~ if entity @s[distance=..0.35] at @s run return run function zombie:skill/creation/origin/melee/hit
execute positioned ~ ~-1.27 ~ if entity @s[distance=..0.35] at @s run return run function zombie:skill/creation/origin/melee/hit
execute positioned ~ ~-0.4 ~ if entity @s[distance=..0.35] at @s run return run function zombie:skill/creation/origin/melee/hit
scoreboard players add #origin.melee.ray origin.tool_cfg 1
execute if score #origin.melee.ray origin.tool_cfg matches ..12 positioned ^ ^ ^0.25 run function zombie:skill/creation/origin/melee/line
