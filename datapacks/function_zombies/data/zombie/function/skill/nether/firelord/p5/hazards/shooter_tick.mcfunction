scoreboard players add @s area.temperature 0
execute if score @s area.temperature matches 1.. run scoreboard players remove @s area.temperature 1
execute unless score @s area.temperature matches 0 run return 0
# Follow the facing direction; stop when either block in the two-high lane is obstructed.
execute positioned ^ ^0.5 ^1 unless block ~ ~ ~ #zombie:p5_projectile_pass run return 0
execute positioned ^ ^1.5 ^1 unless block ~ ~ ~ #zombie:p5_projectile_pass run return 0
execute positioned ^ ^ ^1 positioned ~-0.5 ~ ~-0.5 if entity @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=1,dz=0] positioned as @s run return run function zombie:skill/nether/firelord/p5/hazards/arrow_fire
execute positioned ^ ^0.5 ^2 unless block ~ ~ ~ #zombie:p5_projectile_pass run return 0
execute positioned ^ ^1.5 ^2 unless block ~ ~ ~ #zombie:p5_projectile_pass run return 0
execute positioned ^ ^ ^2 positioned ~-0.5 ~ ~-0.5 if entity @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=1,dz=0] positioned as @s run return run function zombie:skill/nether/firelord/p5/hazards/arrow_fire
execute positioned ^ ^0.5 ^3 unless block ~ ~ ~ #zombie:p5_projectile_pass run return 0
execute positioned ^ ^1.5 ^3 unless block ~ ~ ~ #zombie:p5_projectile_pass run return 0
execute positioned ^ ^ ^3 positioned ~-0.5 ~ ~-0.5 if entity @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=1,dz=0] positioned as @s run return run function zombie:skill/nether/firelord/p5/hazards/arrow_fire
execute positioned ^ ^0.5 ^4 unless block ~ ~ ~ #zombie:p5_projectile_pass run return 0
execute positioned ^ ^1.5 ^4 unless block ~ ~ ~ #zombie:p5_projectile_pass run return 0
execute positioned ^ ^ ^4 positioned ~-0.5 ~ ~-0.5 if entity @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=1,dz=0] positioned as @s run return run function zombie:skill/nether/firelord/p5/hazards/arrow_fire
execute positioned ^ ^0.5 ^5 unless block ~ ~ ~ #zombie:p5_projectile_pass run return 0
execute positioned ^ ^1.5 ^5 unless block ~ ~ ~ #zombie:p5_projectile_pass run return 0
execute positioned ^ ^ ^5 positioned ~-0.5 ~ ~-0.5 if entity @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=1,dz=0] positioned as @s run return run function zombie:skill/nether/firelord/p5/hazards/arrow_fire
execute positioned ^ ^0.5 ^6 unless block ~ ~ ~ #zombie:p5_projectile_pass run return 0
execute positioned ^ ^1.5 ^6 unless block ~ ~ ~ #zombie:p5_projectile_pass run return 0
execute positioned ^ ^ ^6 positioned ~-0.5 ~ ~-0.5 if entity @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=1,dz=0] positioned as @s run return run function zombie:skill/nether/firelord/p5/hazards/arrow_fire
