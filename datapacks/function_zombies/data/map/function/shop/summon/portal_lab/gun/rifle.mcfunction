
execute as @e[tag=shop,tag=rifle] run function system:death
summon interaction 288 93 154 {width:1,height:1,Tags:["shop","interactable","rifle","gun","item","chosen"],Rotation:[-90.0f,0.0f],data:{item:rifle}}

scoreboard players operation price shop.price = rifle shop.price
execute as @n[type=interaction,tag=chosen] at @s positioned ^ ^0.5 ^ run function map:shop/summon/text {name:rifle,item:stone_hoe}