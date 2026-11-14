scoreboard players add @s zombie.skill_timer 1
execute if score @s zombie.skill_timer matches 20.. run scoreboard players set @s zombie.skill_timer 0
execute if score @s zombie.skill_timer matches 0 run function zombie:zombie/nether/firelord/spawn_north
