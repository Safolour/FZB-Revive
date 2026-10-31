scoreboard players set @s zombie.lamda.skill_timerdamage 0
tag @s add skill.lamda.damage

function zombie:skill/machine/lamda/skill/damage/model/red

particle explosion ~ ~1.2 ~ 0 0 0 0.2 1 force @a[scores={particle=0}]
particle lava ~ ~1.2 ~ 0.2 0.2 0.2 0 3 force @a[scores={particle=0}]

playsound entity.iron_golem.hurt record @a ~ ~ ~ 2 0.8
playsound entity.iron_golem.damage record @a ~ ~ ~ 2 1
