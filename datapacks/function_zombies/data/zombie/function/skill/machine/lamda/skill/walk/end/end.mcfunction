scoreboard players reset @s zombie.lamda.skill_timer
tag @s remove skill.lamda.walk.end

tag @s remove skill.lamda.walk.next
execute if entity @s[tag=skill.lamda.attack] run return run function zombie:skill/machine/lamda/skill/attack/init
#execute if entity @s[tag=skill.lamda.hitground] run function zombie:skill/machine/lamda/skill/hit_ground/init
execute if entity @s[tag=skill.lamda.shoot] run function zombie:skill/machine/lamda/skill/shoot/init
execute if entity @s[tag=skill.lamda.sprint] run function zombie:skill/machine/lamda/skill/sprint/init
execute if entity @s[tag=skill.lamda.laser] run function zombie:skill/machine/lamda/skill/laser/init
