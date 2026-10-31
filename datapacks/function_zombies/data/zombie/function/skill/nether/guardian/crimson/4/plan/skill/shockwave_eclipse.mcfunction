scoreboard players add number1 zombie.nether.guardian.skill 1
scoreboard players set cooldown1 zombie.nether.guardian.skill 200

function zombie:skill/nether/guardian/crimson/4/skill/shockwave/init
execute as @n[type=elder_guardian,tag=skill.warpedguardian] at @s run function zombie:skill/nether/guardian/warped/4/skill/eclipse/init
