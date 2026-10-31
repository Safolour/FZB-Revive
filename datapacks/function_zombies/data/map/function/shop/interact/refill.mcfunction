
execute if score @s gold < price shop.price run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute if score @s gold < price shop.price run return run tellraw @s [{translate:"zb.shop.tellraw.1"}]
title @s actionbar [{text:""}]
data modify storage shop root.buy.ammo set from entity @s SelectedItem.components."minecraft:custom_data".ammo
execute if items entity @s weapon *[custom_data~{tag:["gun"]}] run return run function map:shop/buy/refill with storage shop root.buy

playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
tellraw @s [{translate:"zb.shop.tellraw.8"}]