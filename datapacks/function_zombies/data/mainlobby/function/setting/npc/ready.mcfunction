function mainlobby:setting/npc/keep
execute unless entity @s[type=armor_stand,tag=setting.gear_npc] run return fail
execute if score #wanted setting.npc matches 0 run return fail
data modify storage mainlobby:setting_npc status set value "ready"
execute in minecraft:overworld unless entity @e[type=text_display,tag=setting.gear.label] run function mainlobby:setting/npc/text
# Build the enclosing left-click entity before the right-click minecarts, once per repair.
execute in minecraft:overworld unless entity @e[type=interaction,tag=setting.gear_capture] positioned 20.5 -59 845.5 run function mainlobby:setting/npc/menu
execute in minecraft:overworld unless entity @e[type=chest_minecart,tag=setting_gear,tag=!opened] positioned 20.5 -59 845.5 run function mainlobby:setting/npc/menu
