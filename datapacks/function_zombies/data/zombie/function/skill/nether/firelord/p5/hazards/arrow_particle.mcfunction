particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0.02 2 force

execute positioned ~ ~-0.9 ~ if entity @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] run return run function zombie:skill/nether/firelord/p5/hazards/arrow_hit
execute unless block ~ ~ ~ #zombie:p5_projectile_pass run function zombie:skill/nether/firelord/p5/hazards/arrow_end
