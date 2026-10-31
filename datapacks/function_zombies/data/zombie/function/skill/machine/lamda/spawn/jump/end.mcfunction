tag @s remove skill.lamda.spawn
tag @s remove skill.lamda.spawn.jump

effect clear @s slowness

function zombie:skill/machine/lamda/skill/walk/start/init

#tag @s add skill.lamda.hitground
tag @s add skill.lamda.shoot

scoreboard players set @s zombie.lamda.skill_cooldowntimer 80
