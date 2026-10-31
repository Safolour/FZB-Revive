scoreboard players reset @s zombie.lamda.skill_timer
tag @s remove skill.lamda.hitground0
tag @s remove skill.lamda.hitground

tag @s add skill.lamda.shoot

effect clear @s slowness

scoreboard players set @s zombie.lamda.skill_cooldowntimer 80
function zombie:skill/machine/lamda/skill/walk/start/init
