
execute store result storage game root.slot int 1 run data get entity @s SelectedItemSlot
$function weapon:$(type)/_get_item/replace/$(item) with storage game root
data remove storage game root

return fail
function weapon:melee/_get_item/replace/knife
function weapon:range/gun/_get_item/replace/airgun
function weapon:range/skill/_get_item/replace/heal