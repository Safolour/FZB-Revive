# Paid-shop policy only; weapon transformation and feedback are shared.
scoreboard players operation @s gold -= price shop.price
function map:shop/upgrade/gun
data remove storage shop root
execute if items entity @s weapon *[custom_data~{tag:["reset"]}] run return 1
execute if items entity @s weapon *[custom_data~{gun:"function"}] run return 1
$execute if score level shop matches 0 run scoreboard players set $(name).$(gun) shop.ultimate 1
$execute if score level shop matches 1 run scoreboard players set $(name).$(gun) shop.ultimate 2
$execute if score level shop matches 2 run scoreboard players set $(name).$(gun) shop.ultimate 3
$execute if score level shop matches 3 run scoreboard players set $(name).$(gun) shop.ultimate 4
$execute if score level shop matches 4 run scoreboard players set $(name).$(gun) shop.ultimate 5
$execute if score level shop matches 5 run scoreboard players set $(name).$(gun) shop.ultimate 6
