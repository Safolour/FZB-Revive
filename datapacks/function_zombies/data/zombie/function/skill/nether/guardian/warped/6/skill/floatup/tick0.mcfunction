tp @s ~ ~0.1 ~

execute store result score y zombie.nether.guardian run data get entity @s Pos[1] 10
execute if score y zombie.nether.guardian matches 915.. as @n[type=elder_guardian,tag=skill.warpedguardian] run function zombie:skill/nether/guardian/warped/6/skill/floatup/end
scoreboard players reset y zombie.nether.guardian
