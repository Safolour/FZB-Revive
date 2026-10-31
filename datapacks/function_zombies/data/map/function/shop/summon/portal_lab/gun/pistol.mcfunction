
execute as @e[tag=shop,tag=pistol] run function system:death
summon interaction 288 93 146 {width:1,height:1,Tags:["shop","interactable","pistol","gun","item","chosen"],Rotation:[-90.0f,0.0f],data:{item:pistol}}

scoreboard players operation price shop.price = pistol shop.price
execute as @n[type=interaction,tag=chosen] at @s positioned ^ ^0.5 ^ run function map:shop/summon/text {name:pistol,item:wooden_hoe}