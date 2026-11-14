scoreboard players add @s area.temperature 1
execute if score @s area.temperature matches 30.. run function zombie:skill/nether/firelord/p5/hazards/arrow_expire
execute unless entity @s[tag=p5.arrowbullet] run return 0
execute at @s run function zombie:skill/nether/firelord/p5/hazards/arrow_step
execute if entity @s[tag=p5.arrowbullet] at @s run function zombie:skill/nether/firelord/p5/hazards/arrow_step
execute if entity @s[tag=p5.arrowbullet] at @s run function zombie:skill/nether/firelord/p5/hazards/arrow_step
execute if entity @s[tag=p5.arrowbullet] at @s run function zombie:skill/nether/firelord/p5/hazards/arrow_step
