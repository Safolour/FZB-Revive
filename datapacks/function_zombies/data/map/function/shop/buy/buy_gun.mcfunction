
$execute if items entity @s weapon *[custom_data~{tag:["$(item)_ammo"]}] run return run function map:shop/buy/refill with entity @s SelectedItem.components."minecraft:custom_data"
playsound block.note_block.pling record @s ~ ~ ~ 1 2 0
scoreboard players operation @s gold -= price shop.price
data modify storage shop root.buy.slot set from entity @s SelectedItemSlot
$data modify storage shop root.buy.item set value $(item)
loot replace block 1 -60 1 container.0 loot map:playerhead
data modify storage shop root.buy.name set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
function map:shop/buy/buy_gun1 with storage shop root.buy
item replace block 1 -60 1 container.0 with air
function map:shop/buy/refill_buy with entity @s SelectedItem.components."minecraft:custom_data"
$function weapon:range/gun/_get_item/replace/gun_state {gun:$(item)}
function map:shop/buy/buy_gun0 with storage weapon root
