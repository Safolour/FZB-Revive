scoreboard players set #wanted setting.npc 0
schedule clear mainlobby:setting/npc/finish_spawn
schedule clear mainlobby:setting/npc/cancel_spawn
execute in minecraft:overworld run kill @e[type=text_display,tag=setting.gear.label]
execute in minecraft:overworld run kill @e[type=armor_stand,tag=setting.gear_npc]
execute in minecraft:overworld as @e[type=interaction,tag=setting.gear_capture] run function system:death
execute if entity @a[name=fzb_gearnpc] run player fzb_gearnpc kill
execute if score #chunk_ticket setting.npc matches 1 in minecraft:overworld run forceload remove 20 845
scoreboard players set #chunk_ticket setting.npc 0
