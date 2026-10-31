scoreboard players reset @s zombie.chaos.chaos_golem.skill_timer
tag @s remove skill.chaosgolem.walk.end

tag @s remove skill.chaosgolem.walk.next
execute if entity @s[tag=skill.chaosgolem.attack] run return run function zombie:skill/chaos/chaos_golem/skill/attack/init
execute if entity @s[tag=skill.chaosgolem.hitground] run function zombie:skill/chaos/chaos_golem/skill/hit_ground/init
execute if entity @s[tag=skill.chaosgolem.shoot] run function zombie:skill/chaos/chaos_golem/skill/shoot/init
