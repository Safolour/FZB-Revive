tp @s ^ ^ ^0.3
execute at @s positioned ~ ~-1 ~ if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/firelord/fire/safe_absorb
execute at @s positioned ~ ~-1 ~ if entity @a[scores={stat.player=1},gamemode=adventure,distance=..0.9] run function zombie:skill/nether/firelord/fire/hit
execute at @s unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless block ~ ~ ~ minecraft:void_air unless block ~ ~ ~ minecraft:fire positioned ^ ^ ^-0.4 run function zombie:skill/nether/firelord/fire/big_split
