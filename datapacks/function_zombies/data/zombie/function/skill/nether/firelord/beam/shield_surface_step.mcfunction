execute if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return 1
tp @s ~ ~-0.05 ~
execute at @s run function zombie:skill/nether/firelord/beam/shield_surface_step
