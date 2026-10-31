
playsound block.note_block.pling record @s ~ ~ ~ 1 2 0
scoreboard players operation @s gold -= price shop.price
$function map:shop/_get_item/perk/$(item) with storage shop root.buy
tag @s add bought