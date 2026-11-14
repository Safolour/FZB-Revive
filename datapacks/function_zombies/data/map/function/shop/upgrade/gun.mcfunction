# One held-item upgrade path. The caller owns payment and persistent unlocks.
execute unless items entity @s weapon.mainhand *[custom_data~{tag:["upgradable","gun"]}] run return 0
data modify storage map:shop_upgrade context set value {}
data modify storage map:shop_upgrade context.item set from entity @s SelectedItem.components."minecraft:custom_data"
execute store result storage map:shop_upgrade context.item.slot int 1 run data get entity @s SelectedItemSlot
execute store result score level shop run data get entity @s SelectedItem.components."minecraft:custom_data".level
scoreboard players operation #upgrade_text_level shop = level shop
execute if data storage map:shop_upgrade context.item{gun:"rainbowrocketlauncher"} run scoreboard players add #upgrade_text_level shop 1
execute if data storage map:shop_upgrade context.item{gun:"ultimaterainbowrocketlauncher"} run scoreboard players add #upgrade_text_level shop 1
execute if data storage map:shop_upgrade context.item{gun:"ultimaterainbowrocketlauncherii"} run scoreboard players add #upgrade_text_level shop 1
execute if data storage map:shop_upgrade context.item{gun:"rainbowshotgun"} run scoreboard players add #upgrade_text_level shop 1
execute if data storage map:shop_upgrade context.item{gun:"ultimaterainbowshotgun"} run scoreboard players add #upgrade_text_level shop 1
execute if data storage map:shop_upgrade context.item{gun:"ultimaterainbowshotgunii"} run scoreboard players add #upgrade_text_level shop 1
function map:shop/upgrade/gun_apply with storage map:shop_upgrade context.item
data remove storage map:shop_upgrade context
