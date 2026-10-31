
data remove storage shop root
$execute if items entity @p[tag=target] container.* *[custom_data~{tag:["$(perk)"]}] unless items entity @p[tag=target] container.* *[custom_data~{tag:["$(perk)","upgradable"]}] run return run function map:shop/interact/perk/menu1_1 {perk:$(perk),slot:$(slot)}

$data modify storage shop root.state.perk set value $(perk)
$data modify storage shop root.state.slot set value $(slot)
$execute unless items entity @p[tag=target] container.* *[custom_data~{tag:["$(perk)","upgradable"]}] run scoreboard players operation price shop.price = $(perk) shop.price
$execute as @p[tag=target] if items entity @s container.* *[custom_data~{tag:["$(perk)","upgradable"]}] run data modify storage shop root.state.lv set from entity @s Inventory[{components:{"minecraft:custom_data":{tag:["$(perk)","upgradable"]}}}].components."minecraft:custom_data".lv
function map:shop/interact/perk/menu1_2 with storage shop root.state

$execute unless items entity @p[tag=target] container.* *[custom_data~{tag:["$(perk)","upgradable"]}] run data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:custom_name" set value [{translate:zb.shop.item.$(perk),color:yellow,italic:false}]

$execute unless score price shop.price matches 1.. unless items entity @p[tag=target] container.* *[custom_data~{tag:["$(perk)","upgradable"]}] run data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:custom_name" set value [{translate:zb.shop.item.$(perk),color:green,italic:false}]
execute unless score price shop.price matches 1.. run return run data remove storage shop root
function map:shop/interact/perk/set_price/0
$execute if score @p[tag=target] gold < price shop.price run data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:custom_name" set value [{translate:zb.shop.item.$(perk),color:red,italic:false}]
$execute if score @p[tag=target] gold < price shop.price run data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:lore"[-1] set value {translate:zb.shop.item.lore2}
$execute if score @p[tag=target] gold >= price shop.price run data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:lore"[-1] set value {translate:zb.shop.item.lore3}
function map:shop/interact/perk/menu1_3 with storage shop root.state

data remove storage shop root
tag @s remove chosen