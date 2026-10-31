function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/swim

execute as @n[type=armor_stand,tag=skill.crimsonguardian.match] at @s run tp @s ^ ^ ^0.2
execute as @n[type=armor_stand,tag=skill.crimsonguardian.match] unless entity @e[type=marker,tag=skill.crimsonguardian.move.target,distance=..5] at @s run tp @s ^ ^ ^0.2
execute as @n[type=armor_stand,tag=skill.crimsonguardian.match] unless entity @e[type=marker,tag=skill.crimsonguardian.move.target,distance=..3.5] at @s run tp @s ^ ^ ^0.1

execute if score stat zombie.nether.guardian matches 1 if entity @e[type=marker,tag=skill.crimsonguardian.move.target,distance=..2] run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/end
execute if score stat zombie.nether.guardian matches 5 positioned ~ ~8 ~ if entity @e[type=marker,tag=skill.crimsonguardian.move.target,distance=..2] run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/end
execute if score stat zombie.nether.guardian matches 7 positioned ~ ~4 ~ if entity @e[type=marker,tag=skill.crimsonguardian.move.target,distance=..2] run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/end



tag @e[type=marker,tag=skill.guardian.floor.platform.marker,distance=..2] add skill.guardian.floor.platform.marker.break
