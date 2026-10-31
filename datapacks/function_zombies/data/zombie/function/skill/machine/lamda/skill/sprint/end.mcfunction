scoreboard players reset @s zombie.lamda.skill_timer
tag @s remove skill.lamda.sprint
tag @s remove skill.lamda.sprint0

tag @s add skill.lamda.laser

effect clear @s slowness

scoreboard players set @s zombie.lamda.skill_cooldowntimer 100

execute if entity @a[scores={stat.player=1},gamemode=adventure,distance=..6] run return run function zombie:skill/machine/lamda/skill/attack/init
function zombie:skill/machine/lamda/skill/walk/start/init
