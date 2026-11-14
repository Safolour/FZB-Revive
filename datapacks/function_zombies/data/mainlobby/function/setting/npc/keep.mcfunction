# This NPC has no player connection, inventory, room score, or lifecycle hooks.
execute unless entity @s[type=armor_stand,tag=setting.gear_npc] run return fail
execute if score #wanted setting.npc matches 0 run return run kill @s
execute unless entity @s[team=setting_gear_npc] run team join setting_gear_npc @s
execute unless entity @s[x=20.5,y=-59,z=845.5,distance=..0.01] run tp @s 20.5 -59 845.5 90 0
