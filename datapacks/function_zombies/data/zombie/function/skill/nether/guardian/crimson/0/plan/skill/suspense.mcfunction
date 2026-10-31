scoreboard players add number zombie.nether.guardian.skill 1
scoreboard players set cooldown zombie.nether.guardian.skill 40

execute store result score suspenseguardiancount zombie.nether.guardian.skill if entity @e[type=guardian,tag=skill.crimsonguardian.suspense]

execute if score suspenseguardiancount zombie.nether.guardian.skill matches 4.. run function zombie:skill/nether/guardian/crimson/0/plan/skill/missile
execute unless score suspenseguardiancount zombie.nether.guardian.skill matches 4.. run function zombie:skill/nether/guardian/crimson/0/skill/suspense/init

scoreboard players reset suspenseguardiancount zombie.nether.guardian.skill
