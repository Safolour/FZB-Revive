
scoreboard players set @s inventory 2
$data modify storage weapon root.slot set value $(slot)
$function weapon:range/skill/_get_item/replace/skill_state {skill:$(skill)}

$function weapon:range/skill/_get_item/replace/$(skill)0 with storage weapon root
data remove storage weapon root
function inventory:item_store
scoreboard players set @s inventory 1