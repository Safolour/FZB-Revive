
execute as @e[tag=shop,tag=rifle] run function system:death
summon interaction 70 25 113 {width:3,height:3,Tags:["shop","interactable","rifle","gun","chosen"],Rotation:[90.0f,0.0f],data:{item:rifle}}

scoreboard players operation price shop.price = rifle shop.price
execute as @n[type=interaction,tag=chosen] at @s positioned ^ ^1 ^1 run function map:shop/summon/text {name:rifle,item:stone_hoe}