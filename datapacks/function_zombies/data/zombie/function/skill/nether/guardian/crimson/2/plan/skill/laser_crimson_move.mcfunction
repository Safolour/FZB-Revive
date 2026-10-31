scoreboard players add number1 zombie.nether.guardian.skill 1
scoreboard players set cooldown1 zombie.nether.guardian.skill 200

#scoreboard players set cooldown1_0 zombie.nether.guardian.skill -1
#scoreboard players set cooldown1_1 zombie.nether.guardian.skill -1

function zombie:skill/nether/guardian/crimson/2/skill/laser/init
execute as @n[type=elder_guardian,tag=skill.warpedguardian] at @s run function zombie:skill/nether/guardian/warped/2/skill/move/init
