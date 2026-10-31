
$function weapon:range/gun/gun/$(item)/allammo
$function weapon:range/gun/gun/ultimate$(item)/allammo
$function weapon:range/gun/gun/ultimate$(item)ii/allammo
$function weapon:range/gun/gun/ultimate$(item)iii/allammo
$function weapon:range/gun/gun/ultimate$(item)iv/allammo
$function weapon:range/gun/gun/ultimate$(item)v/allammo


$execute if score $(name).$(item) shop.ultimate matches 1 run return run function weapon:range/gun/_get_item/replace/ultimate$(item) with storage luckychest root.item
$execute if score $(name).$(item) shop.ultimate matches 2 run return run function weapon:range/gun/_get_item/replace/ultimate$(item)ii with storage luckychest root.item
$execute if score $(name).$(item) shop.ultimate matches 3 run return run function weapon:range/gun/_get_item/replace/ultimate$(item)iii with storage luckychest root.item
$execute if score $(name).$(item) shop.ultimate matches 4 run return run function weapon:range/gun/_get_item/replace/ultimate$(item)iv with storage luckychest root.item
$execute if score $(name).$(item) shop.ultimate matches 5 run return run function weapon:range/gun/_get_item/replace/ultimate$(item)v with storage luckychest root.item

$function weapon:range/gun/_get_item/replace/$(item) with storage luckychest root.item
