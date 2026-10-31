
tag @s add skill.warpedguardian.laser
scoreboard players reset @s zombie.nether.guardian.laser
team join zombie.warpedguardian @s

effect give @s glowing infinite 0 true

execute as @a[scores={system.room=4..}] at @s run function zombie:skill/nether/guardian/warped/0/skill/laser/tellraw
