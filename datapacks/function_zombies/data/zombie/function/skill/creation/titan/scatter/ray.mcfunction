# Half-block samples and a second quarter-block layer for particle=0.
particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 100000 1 force @a[scores={system.room=4..,particle=0..1}]
execute positioned ^ ^ ^-0.25 run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 100000 1 force @a[scores={system.room=4..,particle=0}]
execute unless block ~ ~ ~ #zombie:p5_projectile_pass run return run function zombie:skill/creation/titan/scatter/impact
execute positioned ~ ~-0.9 ~ as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..1.2] at @s run function zombie:skill/creation/titan/scatter/hit
scoreboard players add #scatter.step titan.cfg 1
execute if score #scatter.step titan.cfg matches ..127 positioned ^ ^ ^0.5 run function zombie:skill/creation/titan/scatter/ray
