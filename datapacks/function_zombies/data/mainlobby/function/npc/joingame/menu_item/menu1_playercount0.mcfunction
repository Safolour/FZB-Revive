
$execute unless score type map matches 1.. run data modify entity @s Items[{Slot:12b}].components."minecraft:lore"[-1] set value [{translate:"zb.mainlobby.npc.lore7",with:[{text:"§7$(player_count)§r"}]}]
$execute unless score type map matches 1.. run data modify entity @s Items[{Slot:14b}].components."minecraft:lore"[-1] set value [{translate:"zb.mainlobby.npc.lore7",with:[{text:"§7$(player_count)§r"}]}]
execute unless score type map matches 1.. run return fail

execute unless score type map matches 3 run data modify entity @s Items[{Slot:12b}].components."minecraft:lore"[-1] set value [{translate:"zb.mainlobby.npc.lore6"}]
execute unless score type map matches 4 run data modify entity @s Items[{Slot:14b}].components."minecraft:lore"[-1] set value [{translate:"zb.mainlobby.npc.lore6"}]

$execute if score type map matches 3 if entity @a[scores={system.room=3}] run data modify entity @s Items[{Slot:12b}].components."minecraft:lore"[-1] set value [{translate:"zb.mainlobby.npc.lore7",with:[{text:"§7$(player_count)§r"}]}]
$execute if score type map matches 4 if entity @a[scores={system.room=3}] run data modify entity @s Items[{Slot:14b}].components."minecraft:lore"[-1] set value [{translate:"zb.mainlobby.npc.lore7",with:[{text:"§7$(player_count)§r"}]}]

$execute if score type map matches 3 if entity @a[scores={system.room=4}] run data modify entity @s Items[{Slot:12b}].components."minecraft:lore"[-1] set value [{translate:"zb.mainlobby.npc.lore8",with:[{text:"§7$(player_count)§r"}]}]
$execute if score type map matches 4 if entity @a[scores={system.room=4}] run data modify entity @s Items[{Slot:14b}].components."minecraft:lore"[-1] set value [{translate:"zb.mainlobby.npc.lore8",with:[{text:"§7$(player_count)§r"}]}]

execute unless score type map matches 3 run data remove entity @s Items[{Slot:12b}].components."minecraft:lore"[-2]
execute unless score type map matches 4 run data remove entity @s Items[{Slot:14b}].components."minecraft:lore"[-2]