
scoreboard players set @s inventory 2
$data modify storage weapon root.slot set value $(slot)
$function weapon:range/gun/_get_item/replace/gun_state {gun:$(gun)}

$function weapon:range/gun/_get_item/replace/$(gun)0 with storage weapon root
$function weapon:range/gun/slot/count {gun:$(gun)}
data remove storage weapon root
function inventory:item_store
scoreboard players set @s inventory 1