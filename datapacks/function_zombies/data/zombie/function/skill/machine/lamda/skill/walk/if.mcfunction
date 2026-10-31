execute if score @s zombie.lamda.skill_cooldowntimer matches 1.. if entity @a[scores={stat.player=1},distance=..4] run function zombie:skill/machine/lamda/skill/walk/next/attack
execute if score @s zombie.lamda.skill_cooldowntimer matches 1.. unless entity @a[scores={stat.player=1},distance=..4] run function zombie:skill/machine/lamda/skill/walk/loop/init

execute if score @s zombie.lamda.skill_cooldowntimer matches 0 if entity @s[tag=skill.lamda.shoot] run function zombie:skill/machine/lamda/skill/walk/next/shoot
#execute if score @s zombie.lamda.skill_cooldowntimer matches 0 if entity @s[tag=skill.lamda.hitground] run function zombie:skill/machine/lamda/skill/walk/next/hitground
execute if score @s zombie.lamda.skill_cooldowntimer matches 0 if entity @s[tag=skill.lamda.sprint] run function zombie:skill/machine/lamda/skill/walk/next/sprint
execute if score @s zombie.lamda.skill_cooldowntimer matches 0 if entity @s[tag=skill.lamda.laser] run function zombie:skill/machine/lamda/skill/walk/next/laser

