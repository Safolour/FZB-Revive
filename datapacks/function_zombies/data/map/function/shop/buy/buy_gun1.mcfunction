
$execute if score $(name).$(item) shop.ultimate matches 1 run return run function weapon:range/gun/_get_item/replace/ultimate$(item) with storage shop root.buy
$execute if score $(name).$(item) shop.ultimate matches 2 run return run function weapon:range/gun/_get_item/replace/ultimate$(item)ii with storage shop root.buy
$execute if score $(name).$(item) shop.ultimate matches 3 run return run function weapon:range/gun/_get_item/replace/ultimate$(item)iii with storage shop root.buy
$execute if score $(name).$(item) shop.ultimate matches 4 run return run function weapon:range/gun/_get_item/replace/ultimate$(item)iv with storage shop root.buy
$execute if score $(name).$(item) shop.ultimate matches 5 run return run function weapon:range/gun/_get_item/replace/ultimate$(item)v with storage shop root.buy

$function weapon:range/gun/_get_item/replace/$(item) with storage shop root.buy
