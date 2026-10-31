scoreboard players add @s zombie.chaos.chargetimer 1

execute if score @s zombie.chaos.chargetimer matches 150.. run function zombie:skill/chaos/zombie/charge/charge

execute at @s run function zombie:skill/chaos/zombie/static_electric/tick
