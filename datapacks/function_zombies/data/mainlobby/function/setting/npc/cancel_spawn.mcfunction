# Compatibility entry for old saved schedules; there is no async player login.
execute if score #wanted setting.npc matches 0 in minecraft:overworld run kill @e[type=armor_stand,tag=setting.gear_npc]
