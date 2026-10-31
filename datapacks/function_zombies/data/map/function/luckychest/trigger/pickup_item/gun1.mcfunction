
playsound block.note_block.pling record @s ~ ~ ~ 1 2 0
function map:luckychest/trigger/pickup_item/gun_slot
$tellraw @s [{translate:"zb.luckychest.tellraw.11",with:[{translate:"zb.luckychest.item.$(item)"}]}]
$data modify storage luckychest root.item.item set value $(item)
loot replace block 1 -60 1 container.0 loot map:playerhead
data modify storage luckychest root.item.name set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
item replace block 1 -60 1 container.0 with air
function map:luckychest/trigger/pickup_item/gun3 with storage luckychest root.item

$function weapon:range/gun/_get_item/replace/gun_state {gun:$(item)}
function map:luckychest/trigger/pickup_item/gun2 with storage weapon root