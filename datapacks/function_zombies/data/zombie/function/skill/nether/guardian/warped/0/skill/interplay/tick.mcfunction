
execute if entity @s[tag=bossbar] run tp @n[type=armor_stand,tag=skill.warpedguardian.interplay.display] ~ ~3 ~
execute unless entity @s[tag=bossbar] run tp @n[type=armor_stand,tag=skill.warpedguardian.interplay.display] 0 0 0

scoreboard players add @s zombie.nether.guardian.interplay 1
execute if score @s zombie.nether.guardian.interplay matches ..20 run return fail

execute if entity @e[type=guardian,tag=skill.crimsonguardian,distance=..15] unless entity @s[tag=skill.warpedguardian.interplay.weekness] run function zombie:skill/nether/guardian/warped/0/skill/interplay/1
execute unless entity @e[type=guardian,tag=skill.crimsonguardian,distance=..15] unless entity @s[tag=skill.warpedguardian.interplay.perseverant] run function zombie:skill/nether/guardian/warped/0/skill/interplay/0
