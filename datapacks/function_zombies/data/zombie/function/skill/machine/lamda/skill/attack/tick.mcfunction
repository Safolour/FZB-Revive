scoreboard players add @s zombie.lamda.skill_timer 1

execute if score @s zombie.lamda.skill_timer matches 20 run function zombie:skill/machine/lamda/skill/attack/0
execute if score @s zombie.lamda.skill_timer matches 25 run function zombie:skill/machine/lamda/skill/attack/0

execute if score @s zombie.lamda.skill_timer matches 17 run playsound item.trident.throw record @a ~ ~ ~ 2 0

execute if score @s zombie.lamda.skill_timer matches 50 run function zombie:skill/machine/lamda/skill/attack/end
