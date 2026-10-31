
scoreboard players set @s inventory 2
$data modify storage weapon root.slot set value $(slot)
function map:shop/_get_item/perk/extra_health0 with storage weapon root
data remove storage weapon root
function inventory:item_store
scoreboard players set @s inventory 1
playsound block.note_block.pling ambient @s ~ ~ ~ 1 2
scoreboard players set lv shop.price 1
function map:shop/_get_item/perk/extra_health_tellraw {lv:""}