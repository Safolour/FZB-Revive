
execute if entity @s[tag=bossbar] run tp @n[type=armor_stand,tag=skill.crimsonguardian.interplay.display] ~ ~3 ~
execute unless entity @s[tag=bossbar] run tp @n[type=armor_stand,tag=skill.crimsonguardian.interplay.display] 0 0 0

scoreboard players add @s zombie.nether.guardian.interplay 1
execute if score @s zombie.nether.guardian.interplay matches ..20 run return fail

execute if entity @e[type=elder_guardian,tag=skill.warpedguardian,distance=..12] unless entity @s[tag=skill.crimsonguardian.interplay.perseverant] run function zombie:skill/nether/guardian/crimson/0/skill/interplay/0
execute unless entity @e[type=elder_guardian,tag=skill.warpedguardian,distance=..12] unless entity @s[tag=skill.crimsonguardian.interplay.weekness] run function zombie:skill/nether/guardian/crimson/0/skill/interplay/1
