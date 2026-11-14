execute if score @s zombie.skill_timer matches 1 run function zombie:skill/nether/firelord/p2/warn
execute if score @s zombie.skill_timer matches 151 run function zombie:skill/nether/firelord/p2/warn
execute if score @s zombie.skill_timer matches 300 positioned 300.5 100.5 126.5 run function zombie:skill/nether/firelord/p2/ghast/spawn
execute if score @s zombie.skill_timer matches 301 run function zombie:skill/nether/firelord/p2/warn
# 每波首批陨石落地时升温一次
execute if score @s zombie.skill_timer matches 97 run function zombie:skill/nether/firelord/p2/meteor/heat
execute if score @s zombie.skill_timer matches 247 run function zombie:skill/nether/firelord/p2/meteor/heat
execute if score @s zombie.skill_timer matches 397 run function zombie:skill/nether/firelord/p2/meteor/heat
execute if score @s zombie.skill_timer matches 62 run function zombie:skill/nether/firelord/p2/meteor/grid_init
execute if score @s zombie.skill_timer matches 212 run function zombie:skill/nether/firelord/p2/meteor/grid_init
execute if score @s zombie.skill_timer matches 362 run function zombie:skill/nether/firelord/p2/meteor/grid_init
execute if score @s zombie.skill_timer matches 1..150 run function zombie:skill/nether/firelord/p2/meteor/volley1
execute if score @s zombie.skill_timer matches 151..300 run function zombie:skill/nether/firelord/p2/meteor/second
execute if score @s zombie.skill_timer matches 301..450 run function zombie:skill/nether/firelord/p2/meteor/third
execute if score @s zombie.skill_timer matches 450.. run kill @e[type=marker,tag=firelord.p2.meteor.grid]
execute if score @s zombie.skill_timer matches 450.. run function zombie:skill/nether/firelord/p2/wave1
