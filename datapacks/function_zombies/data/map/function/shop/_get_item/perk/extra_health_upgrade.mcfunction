
scoreboard players set @s inventory 2
$data modify storage weapon root.slot set value $(slot)
$scoreboard players set lv shop.price $(lv)
execute store result storage weapon root.lv int 1 run scoreboard players get lv shop.price
scoreboard players add lv shop.price 1
execute store result storage weapon root.lv0 int 1 run scoreboard players get lv shop.price
function map:shop/_get_item/perk/extra_health1 with storage weapon root
data remove storage weapon root
function inventory:item_store
scoreboard players set @s inventory 1
playsound block.note_block.pling ambient @s ~ ~ ~ 1 2
function map:shop/_get_item/perk/extra_health_tellraw with storage shop root.buy
