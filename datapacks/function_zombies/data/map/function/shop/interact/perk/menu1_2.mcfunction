
$data modify storage shop root.state.lv set value $(lv)
$scoreboard players operation price shop.price = $(perk)$(lv) shop.price
$data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:lore"[0] set value {translate:zb.shop.item.$(perk)$(lv).lore0,color:red,italic:false}
$execute unless score price shop.price matches 1.. run return run function map:shop/interact/perk/menu1_1 {slot:$(slot),perk:$(perk)$(lv)}
$data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:custom_name" set value [{translate:zb.shop.item.$(perk)$(lv),color:yellow,italic:false}]
