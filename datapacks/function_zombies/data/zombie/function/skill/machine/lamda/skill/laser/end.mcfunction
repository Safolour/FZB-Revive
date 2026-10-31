scoreboard players reset @s zombie.lamda.skill_timer
tag @s remove skill.lamda.laser
tag @s remove skill.lamda.laser0

tag @s add skill.lamda.shoot

effect clear @s slowness

data merge entity @s {NoAI:0b}


scoreboard players set @s zombie.lamda.skill_cooldowntimer 40
function zombie:skill/machine/lamda/skill/walk/start/init
