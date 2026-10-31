execute if entity @a[scores={stat.player=1},distance=..5] run scoreboard players add @s zombie.chaos.staticelectric 1
execute if score @s zombie.chaos.staticelectric matches 1.. unless entity @a[scores={stat.player=1},distance=..5] run scoreboard players remove @s zombie.chaos.staticelectric 1

execute if score @s zombie.chaos.staticelectric matches 80 run function zombie:skill/chaos/zombie/static_electric/electric

execute if score @s zombie.chaos.staticelectric matches 80 run scoreboard players set @s zombie.chaos.staticelectric 1
