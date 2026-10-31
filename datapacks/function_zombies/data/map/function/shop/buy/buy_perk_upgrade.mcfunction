
playsound block.note_block.pling record @s ~ ~ ~ 1 2 0
scoreboard players operation @s gold -= price shop.price
data modify storage shop root.buy.lv set value 0
$data modify storage shop root.buy.slot set from entity @s Inventory[{components:{"minecraft:custom_data":{tag:["$(item)","upgradable"]}}}].Slot
$data modify storage shop root.buy.lv set from entity @s Inventory[{components:{"minecraft:custom_data":{tag:["$(item)","upgradable"]}}}].components."minecraft:custom_data".lv
$function map:shop/_get_item/perk/$(item)_upgrade with storage shop root.buy
tag @s add bought