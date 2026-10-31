
$execute if items entity @s container.* *[custom_data~{tag:["$(item)_ammo"]}] unless items entity @s weapon *[custom_data~{tag:["$(item)_ammo"]}] run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
$execute if items entity @s container.* *[custom_data~{tag:["$(item)_ammo"]}] unless items entity @s weapon *[custom_data~{tag:["$(item)_ammo"]}] run return run tellraw @s [{translate:"zb.shop.tellraw.3"}]
execute if score @s gold < price shop.price run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute if score @s gold < price shop.price run return run tellraw @s [{translate:"zb.shop.tellraw.1"}]
title @s actionbar [{text:""}]
#$execute if items entity @s weapon *[custom_data~{tag:["weapon_slot"]}] run return run function map:shop/buy/buy_gun {item:$(item)}
$execute if items entity @s container.* *[custom_data~{tag:["weapon_slot"]}] run return run function map:shop/buy/buy_gun_emptyslot {item:$(item)}
$execute if items entity @s weapon *[custom_data~{tag:["gun"]}] run return run function map:shop/buy/buy_gun {item:$(item)}

playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
tellraw @s [{translate:"zb.shop.tellraw.2"}]