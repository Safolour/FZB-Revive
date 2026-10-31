
$data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:custom_name" set value [{translate:zb.shop.item.$(perk),color:blue,italic:false}]
$data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:lore" set from entity @s data.shop.lore

$data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:lore" insert -4 value {translate:zb.shop.item.lore4,with:[{translate:zb.shop.tellraw.$(replace)$(lv).0}]}
$data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:lore"[-1] set value {translate:zb.shop.item.lore5}