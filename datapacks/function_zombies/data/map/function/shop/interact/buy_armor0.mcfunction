

$scoreboard players operation price shop.price = armor$(armor) shop.price
execute if score price shop.price matches ..0 run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute if score price shop.price matches ..0 run return run tellraw @s [{translate:zb.shop.armor_shop.tellraw.1}]
execute if score @s gold < price shop.price run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute if score @s gold < price shop.price run return run tellraw @s [{translate:zb.shop.armor_shop.tellraw.2}]

scoreboard players operation @s gold -= price shop.price
scoreboard players add @s inventory.armor 1

playsound block.note_block.pling record @s ~ ~ ~ 1 2 0
$tellraw @s [{translate:zb.shop.armor_shop.tellraw.0,with:[{translate:zb.shop.armor_shop.armor.name.$(armor),color:blue}]}]