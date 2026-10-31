
scoreboard players set @s inventory 2
function map:shop/_get_item/map_type
$data modify storage item root.slot set value $(slot)
$data modify storage item root.count set value $(count)
function map:shop/_get_item/perk_slot0 with storage item root
data remove storage item root
scoreboard players set @s inventory 1