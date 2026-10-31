


scoreboard players operation tick zombie.nether.guardian.laser = @s zombie.nether.guardian.laser

scoreboard players operation tick0 zombie.nether.guardian.laser = tick zombie.nether.guardian.laser
scoreboard players operation tick0 zombie.nether.guardian.laser %= 20 number
scoreboard players operation tick zombie.nether.guardian.laser %= 5 number
execute unless score tick zombie.nether.guardian.laser matches 0 run return fail

summon marker ~ ~ ~ {Tags:["mob.skill","skill.crimsonguardian.laser","chosen"]}
execute positioned ~ ~1.25 ~ run tp @n[type=marker,tag=chosen] ~ ~ ~ facing ^ ^ ^1
scoreboard players operation @n[type=marker,tag=chosen] zombie.nether.guardian.laser.reflection = reflection zombie.nether.guardian.laser.reflection
tag @e[type=marker,tag=chosen] add particle
tag @e[type=marker,tag=chosen] remove chosen