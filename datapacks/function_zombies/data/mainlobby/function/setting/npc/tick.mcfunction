execute unless score tick system.stat matches 1 run return fail
execute if score #wanted setting.npc matches 0 run return 0
execute in minecraft:overworld as @e[type=armor_stand,tag=setting.gear_npc] at @s run function mainlobby:setting/npc/ready
execute in minecraft:overworld unless entity @e[type=armor_stand,tag=setting.gear_npc] run function mainlobby:setting/npc/spawn
