scoreboard players add @s area.temperature 0
execute if score @s area.temperature matches 1.. run scoreboard players remove @s area.temperature 1
execute if score @s area.temperature matches 0 if entity @a[gamemode=adventure,scores={stat.player=1},distance=..32] run function zombie:skill/nether/firelord/p5/hazards/ray_fire
