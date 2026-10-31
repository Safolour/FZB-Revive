
tag @s add target
#tellraw @a [{score:{name:"price",objective:"shop.price"}}]
execute if score @s gold < price shop.price run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute if score @s gold < price shop.price run return run tellraw @s [{translate:"zb.shop.tellraw.1"}]
$execute if items entity @s container.* *[custom_data~{tag:["perk_slot"]}] unless items entity @s container.* *[custom_data~{tag:["$(item)"]}] run return run function map:shop/buy/buy_perk_emptyslot {item:$(item)}
$execute if items entity @s container.* *[custom_data~{tag:["$(item)"]}] unless items entity @s container.* *[custom_data~{tag:["$(item)","upgradable"]}] run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
$execute if items entity @s container.* *[custom_data~{tag:["$(item)"]}] unless items entity @s container.* *[custom_data~{tag:["$(item)","upgradable"]}] run return run tellraw @s [{translate:"zb.shop.tellraw.10",with:[{translate:zb.shop.item.$(item),color:red}]}]
$execute if score price shop.price matches 1.. if items entity @s container.* *[custom_data~{tag:["$(item)","upgradable"]}] run return run function map:shop/buy/buy_perk_upgrade {item:$(item)}
$execute if items entity @s container.* *[custom_data~{tag:["$(item)"]}] run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
$execute if items entity @s container.* *[custom_data~{tag:["$(item)"]}] run return run tellraw @s [{translate:"zb.shop.tellraw.10",with:[{translate:zb.shop.tellraw.$(item).2,color:red}]}]
tag @s add target0