# Keep only the NPC chunk loaded; release only a ticket added by this feature.
execute unless score #chunk_ticket setting.npc matches 0..1 run scoreboard players set #chunk_ticket setting.npc 0
execute in minecraft:overworld store success score #chunk_added setting.npc run forceload add 20 845
execute if score #chunk_added setting.npc matches 1 run scoreboard players set #chunk_ticket setting.npc 1
