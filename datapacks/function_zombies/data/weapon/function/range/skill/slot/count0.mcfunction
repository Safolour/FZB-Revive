
$item replace block 1 -60 1 container.26 from entity @s container.$(slot)
$data modify block 1 -60 1 Items[{Slot:26b}].count set value $(count)
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:damage" set value 0
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:item_model" set value "gray_dye"
$data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:lore"[-1] set value [{translate:zb.item.skill.0_0,with:[{text:"§c$(count)§r"}]}]
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air