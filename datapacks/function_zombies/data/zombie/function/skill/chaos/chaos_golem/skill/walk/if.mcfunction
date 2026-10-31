execute if score @s zombie.chaos.chaos_golem.skill_cooldowntimer matches 1.. if entity @a[scores={stat.player=1},distance=..4] run function zombie:skill/chaos/chaos_golem/skill/walk/next/attack
execute if score @s zombie.chaos.chaos_golem.skill_cooldowntimer matches 1.. unless entity @a[scores={stat.player=1},distance=..4] run function zombie:skill/chaos/chaos_golem/skill/walk/loop/init

execute if score @s zombie.chaos.chaos_golem.skill_cooldowntimer matches 0 if entity @s[tag=skill.chaosgolem.hitground] run function zombie:skill/chaos/chaos_golem/skill/walk/next/hitground
execute if score @s zombie.chaos.chaos_golem.skill_cooldowntimer matches 0 if entity @s[tag=skill.chaosgolem.shoot] run function zombie:skill/chaos/chaos_golem/skill/walk/next/shoot
