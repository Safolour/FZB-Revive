scoreboard players add @s zombie.lamda.skill_timer 1

execute if score @s zombie.lamda.skill_timer matches 5 run playsound entity.iron_golem.step record @a ~ ~ ~ 2 1

execute if score @s zombie.lamda.skill_timer matches 5 run function zombie:skill/machine/lamda/skill/walk/start/end
