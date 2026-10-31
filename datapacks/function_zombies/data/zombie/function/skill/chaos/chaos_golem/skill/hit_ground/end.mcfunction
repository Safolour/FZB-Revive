scoreboard players reset @s zombie.chaos.chaos_golem.skill_timer
tag @s remove skill.chaosgolem.hitground0
tag @s remove skill.chaosgolem.hitground

tag @s add skill.chaosgolem.shoot

effect clear @s slowness

scoreboard players set @s zombie.chaos.chaos_golem.skill_cooldowntimer 80
function zombie:skill/chaos/chaos_golem/skill/walk/start/init
