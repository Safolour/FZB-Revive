scoreboard players add @s area.temperature 0
execute if score @s area.temperature matches 1.. run scoreboard players add @s area.temperature 1
execute if score @s area.temperature matches 16 run function zombie:skill/nether/firelord/p5/hazards/floor_break
execute if score @s area.temperature matches 76 run function zombie:skill/nether/firelord/p5/hazards/floor_restore
execute if score @s area.temperature matches 0 positioned ~ ~1 ~ if entity @a[dx=1,dy=0,dz=1,gamemode=adventure,scores={stat.player=1}] run scoreboard players set @s area.temperature 1
