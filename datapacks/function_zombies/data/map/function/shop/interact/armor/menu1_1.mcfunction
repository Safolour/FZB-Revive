
$execute if score armor shop matches 1 run data modify entity @s Items[{Slot:$(slot)b}].id set value "leather_chestplate"
$execute if score armor shop matches 2 run data modify entity @s Items[{Slot:$(slot)b}].id set value "golden_chestplate"
$execute if score armor shop matches 3 run data modify entity @s Items[{Slot:$(slot)b}].id set value "iron_chestplate"
$execute if score armor shop matches 4 run data modify entity @s Items[{Slot:$(slot)b}].id set value "diamond_boots"
$execute if score armor shop matches 5 run data modify entity @s Items[{Slot:$(slot)b}].id set value "diamond_helmet"
$execute if score armor shop matches 6 run data modify entity @s Items[{Slot:$(slot)b}].id set value "diamond_leggings"
$execute if score armor shop matches 7 run data modify entity @s Items[{Slot:$(slot)b}].id set value "diamond_chestplate"
# 8 = 满级（合金套已删除），显示钻石胸甲
$execute if score armor shop matches 8 run data modify entity @s Items[{Slot:$(slot)b}].id set value "diamond_chestplate"

$data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:custom_name" set value [{translate:zb.shop.armor_shop.armor.name.$(armor),color:yellow,italic:false}]