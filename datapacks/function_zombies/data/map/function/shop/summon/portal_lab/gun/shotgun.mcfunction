
execute as @e[tag=shop,tag=shotgun] run function system:death
summon interaction 312 93 154 {width:1,height:1,Tags:["shop","interactable","shotgun","gun","item","chosen"],Rotation:[90.0f,0.0f],data:{item:shotgun}}

scoreboard players operation price shop.price = shotgun shop.price
execute as @n[type=interaction,tag=chosen] at @s positioned ^ ^0.5 ^ run function map:shop/summon/text {name:shotgun,item:iron_hoe}