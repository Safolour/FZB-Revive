
execute as @e[tag=shop,tag=ultimatemachine] run function system:death
summon interaction 307 92 171 {width:1.5,height:1.5,Tags:["shop","interactable","ultimatemachine","chosen"],Rotation:[-180.0f,0.0f]}

scoreboard players operation price shop.price = ultimatemachine shop.price
execute as @n[type=interaction,tag=chosen] at @s run tp @s ~0.25 ~0.5 ~
execute as @n[type=interaction,tag=chosen] at @s positioned ~-0.25 ~-0.5 ~ positioned ^ ^3.5 ^ run function map:shop/summon/text {name:ultimatemachine,item:none}

