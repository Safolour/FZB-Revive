execute as @e[type=armor_stand,tag=skill.guardian.eye] at @s positioned ~ ~1.8 ~ run function zombie:skill/nether/guardian/floor/eye/clear0
kill @e[type=armor_stand,tag=skill.guardian.eye]
scoreboard players reset cooldown zombie.nether.guardian.eye
