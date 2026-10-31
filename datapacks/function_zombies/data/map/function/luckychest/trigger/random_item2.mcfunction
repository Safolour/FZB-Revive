
$data merge entity @n[type=item,tag=luckychest,tag=item] {Item:{id:$(item),components:{"minecraft:item_model":"$(model)"}}}
$data merge entity @n[type=armor_stand,tag=luckychest,tag=text2] {CustomName:[{translate:"zb.luckychest.item.$(id)"}]}

$data modify entity @s data.item.id set value $(id)
$data modify entity @s data.item.type set value $(type)