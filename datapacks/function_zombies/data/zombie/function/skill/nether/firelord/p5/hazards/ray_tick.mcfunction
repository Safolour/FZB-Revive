scoreboard players add @s area.temperature 1
execute if score @s area.temperature matches 80.. run function zombie:skill/nether/firelord/p5/hazards/ray_expire
execute unless entity @s[tag=p5.raybullet] run return 0
particle minecraft:dust_color_transition{from_color:16712194,to_color:0,scale:1} ~ ~ ~ 0 0 0 0 1 force
particle minecraft:wax_on ~ ~ ~ 0 0 0 0 1 force

execute positioned ~ ~-0.9 ~ if entity @a[gamemode=adventure,scores={stat.player=1},distance=..1.1] run return run function zombie:skill/nether/firelord/p5/hazards/ray_hit
execute unless block ~ ~ ~ #zombie:p5_projectile_pass run return run function zombie:skill/nether/firelord/p5/hazards/ray_end
tp @s ^ ^ ^0.5
