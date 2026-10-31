scoreboard players add @s zombie.lamda.skill_timer 1

execute if score @s zombie.lamda.skill_timer matches 1 run function zombie:skill/machine/lamda/skill/death/animation
execute if score @s zombie.lamda.skill_timer matches 1 run scoreboard players set @s zombie.health 1

execute if score @s zombie.lamda.skill_timer matches 42 run function zombie:skill/machine/lamda/skill/death/clear

execute if score @s zombie.lamda.skill_timer matches 42 run function system:death
