function zombie:skill/nether/guardian/crimson/0/reset

execute positioned ~ ~-5 ~ run function zombie:skill/nether/guardian/crimson/0/spawn/0

execute as @e[type=guardian,tag=skill.crimsonguardian] at @s run function zombie:skill/nether/guardian/crimson/0/skill/floatup/init

scoreboard players reset movecount zombie.nether.guardian
scoreboard players reset shockwavecount zombie.nether.guardian

scoreboard players set stat zombie.nether.guardian 1
