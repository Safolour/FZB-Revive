
execute as @e[tag=shop,tag=pistol] run function system:death
summon interaction 59 26 103 {width:3,height:3,Tags:["shop","interactable","pistol","gun","chosen"],Rotation:[-90.0f,0.0f],data:{item:pistol}}

scoreboard players operation price shop.price = pistol shop.price
execute as @n[type=interaction,tag=chosen] at @s positioned ^ ^1 ^1 run function map:shop/summon/text {name:pistol,item:wooden_hoe}
