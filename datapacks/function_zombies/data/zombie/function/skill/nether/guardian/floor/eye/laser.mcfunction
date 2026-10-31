scoreboard players set loop zombie.nether.guardian.eye 0

summon marker ~ ~ ~ {Tags:["mob.skill","skill.guardian.eye.laser"]}
tp @n[type=marker,tag=skill.guardian.eye.laser] ~ ~ ~ facing entity @p[tag=target]
execute as @n[type=marker,tag=skill.guardian.eye.laser] at @s run tp @s ~ ~1.5 ~

execute as @n[type=marker,tag=skill.guardian.eye.laser] at @s run function zombie:skill/nether/guardian/floor/eye/loop

kill @e[type=marker,tag=skill.guardian.eye.laser]

tag @p[tag=target] remove target
scoreboard players reset loop zombie.nether.guardian.eye
execute if entity @a[tag=target] run function zombie:skill/nether/guardian/floor/eye/laser
