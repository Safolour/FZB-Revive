
$item replace block 1 -60 1 container.26 from entity @s container.$(slot)
$data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:item_model" set value $(item)
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:lore"[-1] set value [{translate:zb.item.skill.0}]
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air