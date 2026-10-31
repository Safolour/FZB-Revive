
$execute if score @p[tag=target] gold < price shop.price run data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:custom_name" set value [{translate:zb.shop.item.$(perk)$(lv),color:red,italic:false}]
