# Paid-shop policy only; weapon transformation and feedback are shared.
scoreboard players operation @s gold -= price shop.price
function map:shop/upgrade/melee
data remove storage shop root
$execute if score level shop matches 0 run scoreboard players set $(name).$(weapon) shop.ultimate 1
$execute if score level shop matches 1 run scoreboard players set $(name).$(weapon) shop.ultimate 2
$execute if score level shop matches 2 run scoreboard players set $(name).$(weapon) shop.ultimate 3
$execute if score level shop matches 3 run scoreboard players set $(name).$(weapon) shop.ultimate 4
$execute if score level shop matches 4 run scoreboard players set $(name).$(weapon) shop.ultimate 5
$execute if score level shop matches 5 run scoreboard players set $(name).$(weapon) shop.ultimate 6
