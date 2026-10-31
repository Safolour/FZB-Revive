
scoreboard players set @s inventory 2
$data modify storage weapon root.slot set value $(slot)
$function weapon:melee/_get_item/replace/melee_state {melee:$(melee)}
$function weapon:melee/_get_item/replace/$(melee)0 with storage weapon root
data remove storage weapon root
function inventory:item_store
scoreboard players set @s inventory 1