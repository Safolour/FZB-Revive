
data modify entity @s data.shop.lv set value ""
$data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:custom_data".tag set value ["clear","minecart"]
$data modify entity @s data.shop.slot set value $(slot)
$data modify entity @s data.shop.replace set from entity @s Items[{Slot:$(slot)b}].components."minecraft:custom_data".perk
$data modify entity @s data.shop.lv set from entity @s Items[{Slot:$(slot)b}].components."minecraft:custom_data".lv
function map:shop/interact/perk/menu2_1 with entity @s data.shop