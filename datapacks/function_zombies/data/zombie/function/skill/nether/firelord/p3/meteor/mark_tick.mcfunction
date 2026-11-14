scoreboard players add @s zombie.skill_timer 1
execute if score @s zombie.skill_timer matches 1..33 run function zombie:skill/nether/firelord/p2/meteor/shadow_tick
execute if score @s zombie.skill_timer matches 20 at @s run function zombie:skill/nether/firelord/p3/meteor/create
execute if score @s zombie.skill_timer matches 35.. at @s run function zombie:skill/nether/firelord/p2/meteor/impact
execute if score @s zombie.skill_timer matches 35.. run kill @s
