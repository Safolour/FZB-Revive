execute unless score @s zombie.max_health matches 150000 run return 0
scoreboard players remove @s zombie.health 50000
scoreboard players remove @s zombie.health0 50000
scoreboard players set @s zombie.max_health 100000
