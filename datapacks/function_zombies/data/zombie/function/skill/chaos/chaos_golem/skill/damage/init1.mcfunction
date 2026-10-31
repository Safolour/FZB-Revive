scoreboard players set @s zombie.chaos.chaos_golem.skill_timerdamage 0
tag @s add skill.chaosgolem.damage

function zombie:skill/chaos/chaos_golem/skill/damage/model/red

particle explosion ~ ~1.2 ~ 0 0 0 0.2 1 force @a[scores={particle=0}]
particle lava ~ ~1.2 ~ 0.2 0.2 0.2 0 3 force @a[scores={particle=0}]

playsound entity.iron_golem.hurt record @a ~ ~ ~ 2 0.8
playsound entity.iron_golem.damage record @a ~ ~ ~ 2 1
