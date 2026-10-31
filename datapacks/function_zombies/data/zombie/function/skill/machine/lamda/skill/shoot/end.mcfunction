scoreboard players reset @s zombie.lamda.skill_timer
tag @s remove skill.lamda.shoot0
tag @s remove skill.lamda.shoot

#tag @s add skill.lamda.hitground
tag @s add skill.lamda.sprint


effect clear @s slowness

scoreboard players set @s zombie.lamda.skill_cooldowntimer 60
function zombie:skill/machine/lamda/skill/walk/start/init
