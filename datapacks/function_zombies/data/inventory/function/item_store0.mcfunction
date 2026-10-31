tag @s remove inventory.changed
execute unless items entity @s enderchest.26 * run item replace entity @s enderchest.26 with paper[custom_data={root:{player_item:{list:[]}}}]
execute unless items entity @s enderchest.25 * run item replace entity @s enderchest.25 with paper[custom_data={root:{player_item:{list:[]}}}]

execute if entity @s[scores={system.room=3..}] run execute unless data entity @s EnderItems[{Slot:26b}] run item replace block 1 -60 1 container.26 with paper
execute if entity @s[scores={system.room=3..}] run execute if data entity @s EnderItems[{Slot:26b}] run item replace block 1 -60 1 container.26 from entity @s enderchest.26
execute if entity @s[scores={system.room=3..}] run data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".root.player_item.list set from entity @s Inventory
execute if entity @s[scores={system.room=3..}] run item replace entity @s enderchest.26 from block 1 -60 1 container.26
execute if entity @s[scores={system.room=3..}] run item replace block 1 -60 1 container.26 with air
execute if entity @s[scores={system.room=3..}] run return fail

execute unless data entity @s EnderItems[{Slot:25b}] run item replace block 1 -60 1 container.25 with paper
execute if data entity @s EnderItems[{Slot:25b}] run item replace block 1 -60 1 container.25 from entity @s enderchest.25
data modify block 1 -60 1 Items[{Slot:25b}].components."minecraft:custom_data".root.player_item.list set from entity @s Inventory
item replace entity @s enderchest.25 from block 1 -60 1 container.25
item replace block 1 -60 1 container.25 with air

#tellraw @a [{"nbt":"EnderItems","entity":"@s"}]