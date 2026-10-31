scoreboard players operation warpedguardianrotation zombie.nether.guardian = warpedguardianrotation0 zombie.nether.guardian

execute store result score warpedguardianrotation0 zombie.nether.guardian run data get entity @n[type=armor_stand,tag=skill.warpedguardian.match] Rotation[0]

execute unless score warpedguardianrotation zombie.nether.guardian = warpedguardianrotation0 zombie.nether.guardian run function zombie:skill/nether/guardian/warped/0/skill/rotation/0
