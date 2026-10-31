tp @s ~ ~0.1 ~

execute store result score y zombie.nether.guardian run data get entity @s Pos[1] 10
execute if score y zombie.nether.guardian matches 835.. as @n[type=guardian,tag=skill.crimsonguardian] run function zombie:skill/nether/guardian/crimson/2/skill/floatup/end
scoreboard players reset y zombie.nether.guardian
