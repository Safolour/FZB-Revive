scoreboard players operation crimsonguardianrotation zombie.nether.guardian = crimsonguardianrotation0 zombie.nether.guardian

execute store result score crimsonguardianrotation0 zombie.nether.guardian run data get entity @n[type=armor_stand,tag=skill.crimsonguardian.match] Rotation[0]

execute unless score crimsonguardianrotation zombie.nether.guardian = crimsonguardianrotation0 zombie.nether.guardian run function zombie:skill/nether/guardian/crimson/0/skill/rotation/0
