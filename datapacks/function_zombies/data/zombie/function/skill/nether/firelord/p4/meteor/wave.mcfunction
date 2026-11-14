execute unless entity @e[type=zombie,tag=skill.firelord.shield,tag=firelord.p4] run return run kill @s
scoreboard players add @s zombie.skill_timer 1
execute if score @s zombie.skill_timer matches 62 run function zombie:skill/nether/firelord/p2/meteor/grid_init
execute if score @s zombie.skill_timer matches 62..83 run function zombie:skill/nether/firelord/p2/meteor/volley1
execute if score @s zombie.skill_timer matches 83.. run kill @e[type=marker,tag=firelord.p2.meteor.grid]
execute if score @s zombie.skill_timer matches 83.. run kill @s
