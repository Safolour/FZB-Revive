
scoreboard players add @s zombie.creation.quell 1
execute if score @s zombie.creation.quell matches ..30 run return fail
scoreboard players set @s zombie.creation.quell 0
execute on target if entity @s[type=player,scores={stat.player=1},distance=..3] run tag @s add target
execute unless entity @a[tag=target] run return fail
summon marker ~ ~ ~ {Tags:["skill.creation.quell.particle"]}
tp @n[type=marker,tag=skill.creation.quell.particle] ^ ^1.5 ^1 ~90 ~
execute store result entity @n[type=marker,tag=skill.creation.quell.particle] Rotation[1] int 1 run random value -90..90
execute as @n[type=marker,tag=skill.creation.quell.particle] at @s run function zombie:skill/creation/quell/particle
kill @e[type=marker,tag=skill.creation.quell.particle]
playsound entity.iron_golem.attack record @a ~ ~ ~ 1.5 1
playsound entity.zombie.break_wooden_door record @a ~ ~ ~ 1.5 2
playsound block.piston.extend record @a ~ ~ ~ 1.5 2
execute as @p[tag=target] at @s run function zombie:skill/creation/quell/damage
tag @a[tag=target] remove target
