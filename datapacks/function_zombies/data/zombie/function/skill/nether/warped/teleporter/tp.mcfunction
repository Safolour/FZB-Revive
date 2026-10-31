scoreboard players set @s zombie.nether.warped.teleporter.skill_timer 0
execute on target if entity @s[type=player,scores={stat.player=1}] run tag @s add target
execute as @a[tag=target] at @s run tag @n[type=marker,tag=magma,tag=spawner] add tp

execute if entity @a[tag=target,distance=..3] run tag @e[type=marker,tag=tp] remove tp
execute if entity @a[tag=target,distance=..3] run tag @s add target
execute if entity @a[tag=target,distance=..3] run execute as @a[tag=target,distance=..3] at @s run tp @e[type=zombie,tag=target] ~ ~ ~
execute if entity @a[tag=target,distance=..3] run tag @s remove target
execute if entity @a[tag=target,distance=..3] run return run tag @a[tag=target] remove target

tag @a[tag=target] remove target

function zombie:skill/nether/warped/teleporter/particle/0

playsound entity.illusioner.mirror_move record @a ~ ~ ~ 2 0
playsound entity.illusioner.mirror_move record @a ~ ~ ~ 2 0

tag @s add target
execute as @e[type=marker,tag=tp,limit=1] at @s run tp @e[type=zombie,tag=skill.teleporter,tag=target] ~ ~ ~
tag @s remove target

execute at @s run playsound entity.illusioner.mirror_move record @a ~ ~ ~ 2 2
execute at @s run playsound entity.illusioner.mirror_move record @a ~ ~ ~ 2 2
execute at @s run function zombie:skill/nether/warped/teleporter/particle/1

tag @e[type=marker,tag=tp] remove tp
