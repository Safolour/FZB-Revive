scoreboard players add @s zombie.lamda.skill_timer 1

execute if score @s zombie.lamda.skill_timer matches 2 run data merge entity @s {NoAI:1b}
execute if score @s zombie.lamda.skill_timer matches 60 run data merge entity @s {NoAI:0b}

execute if score @s zombie.lamda.skill_timer matches 2..30 run function zombie:skill/machine/lamda/skill/hit_ground/line/init


execute if score @s zombie.lamda.skill_timer matches 30 run function zombie:skill/machine/lamda/skill/hit_ground/ground

execute if score @s zombie.lamda.skill_timer matches 60 run function zombie:skill/machine/lamda/skill/hit_ground/end
