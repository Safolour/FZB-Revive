scoreboard players add number1 zombie.nether.guardian.skill 1
scoreboard players set cooldown1 zombie.nether.guardian.skill 80

#scoreboard players set cooldown1_0 zombie.nether.guardian.skill -1
#scoreboard players set cooldown1_1 zombie.nether.guardian.skill -1

execute store result score suspenseguardiancount zombie.nether.guardian.skill if entity @e[type=guardian,tag=skill.crimsonguardian.suspense]
execute if score suspenseguardiancount zombie.nether.guardian.skill matches 6.. run function zombie:skill/nether/guardian/crimson/2/plan/skill/missile
execute unless score suspenseguardiancount zombie.nether.guardian.skill matches 6.. run function zombie:skill/nether/guardian/crimson/2/skill/suspense/init
scoreboard players reset suspenseguardiancount zombie.nether.guardian.skill

#function zombie:skill/nether/guardian/crimson/2/skill/suspense/init
execute as @n[type=elder_guardian,tag=skill.warpedguardian] at @s run function zombie:skill/nether/guardian/warped/2/skill/labyrinth/init
execute as @n[type=elder_guardian,tag=skill.warpedguardian] at @s run function zombie:skill/nether/guardian/warped/2/skill/twilight/init
execute as @n[type=elder_guardian,tag=skill.warpedguardian] at @s run function zombie:skill/nether/guardian/warped/0/skill/curse/init
