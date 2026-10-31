
execute if entity @s[tag=skill.warpedguardian.eclipse.0] run tp @s ~ ~ ~ ~2 ~2
execute if entity @s[tag=skill.warpedguardian.eclipse.1] run tp @s ~ ~ ~ ~3 ~-3
execute if entity @s[tag=skill.warpedguardian.eclipse.2] run tp @s ~ ~ ~ ~4 ~5
execute if entity @s[tag=skill.warpedguardian.eclipse.3] run tp @s ~ ~ ~ ~5 ~-6

execute store result score rotation zombie.nether.guardian.eclipse run data get entity @s Rotation[1]
execute if score rotation zombie.nether.guardian.eclipse matches 90 run data modify entity @s Rotation[1] set value -90
execute if score rotation zombie.nether.guardian.eclipse matches -90 run data modify entity @s Rotation[1] set value 90
scoreboard players reset rotation zombie.nether.guardian.eclipse
