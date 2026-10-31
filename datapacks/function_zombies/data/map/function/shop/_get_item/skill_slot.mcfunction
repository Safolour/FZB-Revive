
scoreboard players set @s inventory 2
$data modify storage item root.slot set value $(slot)
function map:shop/_get_item/skill_slot0 with storage item root
data remove storage item root
scoreboard players set @s inventory 1