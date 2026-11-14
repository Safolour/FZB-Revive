# One held-item upgrade path. The caller owns payment and persistent unlocks.
execute unless items entity @s weapon.mainhand *[custom_data~{tag:["upgradable","melee"]}] run return 0
data modify storage map:shop_upgrade context set value {}
data modify storage map:shop_upgrade context.item set from entity @s SelectedItem.components."minecraft:custom_data"
execute store result storage map:shop_upgrade context.item.slot int 1 run data get entity @s SelectedItemSlot
execute store result score level shop run data get entity @s SelectedItem.components."minecraft:custom_data".level
function map:shop/upgrade/melee_apply with storage map:shop_upgrade context.item
data remove storage map:shop_upgrade context
