
execute as @e[tag=shop,tag=magnum] run function system:death
summon interaction 288 93 146 {width:1,height:1,Tags:["shop","interactable","magnum","gun","item","chosen"],Rotation:[-90.0f,0.0f],data:{item:magnum}}

scoreboard players operation price shop.price = magnum shop.price
execute as @n[type=interaction,tag=chosen] at @s positioned ^ ^0.5 ^ run function map:shop/summon/text {name:magnum,item:golden_hoe}