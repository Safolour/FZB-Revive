tag @s remove skill.chaosgolem.spawn
tag @s remove skill.chaosgolem.spawn.jump

effect clear @s slowness

function zombie:skill/chaos/chaos_golem/skill/walk/start/init

tag @s add skill.chaosgolem.hitground
scoreboard players set @s zombie.chaos.chaos_golem.skill_cooldowntimer 80
