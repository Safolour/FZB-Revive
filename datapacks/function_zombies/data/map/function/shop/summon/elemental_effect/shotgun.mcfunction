
execute as @e[tag=shop,tag=shotgun] run function system:death
summon interaction 64 25 125 {width:3,height:3,Tags:["shop","interactable","shotgun","gun","chosen"],Rotation:[90.0f,0.0f],data:{item:shotgun}}

scoreboard players operation price shop.price = shotgun shop.price
execute as @n[type=interaction,tag=chosen] at @s positioned ^ ^1 ^1 run function map:shop/summon/text {name:shotgun,item:stone_hoe}