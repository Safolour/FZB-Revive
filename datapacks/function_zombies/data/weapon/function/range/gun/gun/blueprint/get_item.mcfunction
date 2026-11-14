# Match the regular gun getter lifecycle; the roll count is an explicit input.
scoreboard players set @s inventory 2
$data modify storage weapon root set value {slot:$(slot),ultimate:$(ultimate)}
function weapon:range/gun/_get_item/replace/gun_state {gun:blueprint}
function weapon:range/gun/_get_item/replace/blueprint0 with storage weapon root
data remove storage weapon root
function inventory:item_store
scoreboard players set @s inventory 1
