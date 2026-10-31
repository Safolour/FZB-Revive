
tag @s add skill.crimsonguardian.laser
scoreboard players reset @s zombie.nether.guardian.laser
team join zombie.crimsonguardian @s

effect give @s glowing infinite 0 true

execute as @a[scores={system.room=4..}] at @s run function zombie:skill/nether/guardian/crimson/0/skill/laser/tellraw
