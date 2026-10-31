
# 新版位置照录像 2026_10_20_12_56_35（悬浮字在 304.5 93.25 130.5，750 金钱，展示物品 diamond_hoe 模型）
execute as @e[tag=shop,tag=machinegun] run function system:death
summon interaction 304 93 130 {width:1,height:1,Tags:["shop","interactable","machinegun","gun","item","chosen"],Rotation:[180.0f,0.0f],data:{item:machinegun}}

scoreboard players operation price shop.price = machinegun shop.price
execute as @n[type=interaction,tag=chosen] at @s positioned ^ ^0.5 ^ run function map:shop/summon/text {name:machinegun,item:diamond_hoe}
