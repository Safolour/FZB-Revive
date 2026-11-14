execute unless block ~ ~ ~ #minecraft:replaceable unless block ~ ~ ~ minecraft:water run return 0
execute positioned ~ ~-1.62 ~ if entity @s[distance=..0.35] at @s run return run function zombie:skill/creation/titan/melee/ordinary_hit
execute positioned ~ ~-1.27 ~ if entity @s[distance=..0.35] at @s run return run function zombie:skill/creation/titan/melee/ordinary_hit
execute positioned ~ ~-0.4 ~ if entity @s[distance=..0.35] at @s run return run function zombie:skill/creation/titan/melee/ordinary_hit
scoreboard players add #titan.basic.ray titan.cfg 1
execute if score #titan.basic.ray titan.cfg matches ..12 positioned ^ ^ ^0.25 run function zombie:skill/creation/titan/melee/ordinary_line
