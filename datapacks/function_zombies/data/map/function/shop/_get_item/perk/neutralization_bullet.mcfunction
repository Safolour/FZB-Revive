
scoreboard players set @s inventory 2
$data modify storage weapon root.slot set value $(slot)
function map:shop/_get_item/perk/neutralization_bullet0 with storage weapon root
data remove storage weapon root
function inventory:item_store
scoreboard players set @s inventory 1
playsound block.note_block.pling ambient @s ~ ~ ~ 1 2
tellraw @s [{translate:"zb.shop.tellraw.9",with:[{translate:"zb.shop.tellraw.neutralization_bullet.1"}]}]
