
scoreboard players set @s inventory 3
execute if entity @s[scores={system.room=3..}] run data modify block 1 -60 1 Items set from entity @s EnderItems[{Slot:26b}].components."minecraft:custom_data".root.player_item.list
execute unless entity @s[scores={system.room=3..}] run data modify block 1 -60 1 Items set from entity @s EnderItems[{Slot:25b}].components."minecraft:custom_data".root.player_item.list

function inventory:unnecessaryslot
item replace entity @s container.0 from block 1 -60 1 container.0
item replace entity @s container.1 from block 1 -60 1 container.1
item replace entity @s container.2 from block 1 -60 1 container.2
item replace entity @s container.3 from block 1 -60 1 container.3
item replace entity @s container.4 from block 1 -60 1 container.4
item replace entity @s container.5 from block 1 -60 1 container.5
item replace entity @s container.6 from block 1 -60 1 container.6
item replace entity @s container.7 from block 1 -60 1 container.7
item replace entity @s container.8 from block 1 -60 1 container.8

data modify block 1 -60 1 Items set value []

scoreboard players set @s inventory 1