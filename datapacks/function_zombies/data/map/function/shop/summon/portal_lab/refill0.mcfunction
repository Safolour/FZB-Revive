
execute as @e[tag=shop,tag=refill] run function system:death
summon interaction 312 93 132 {width:1,height:1,Tags:["shop","interactable","refill","item","chosen"],Rotation:[-90.0f,0.0f]}

scoreboard players operation price shop.price = refill shop.price
execute as @n[type=interaction,tag=chosen] at @s positioned ^ ^0.5 ^ run function map:shop/summon/text {name:refill,item:player_head}
