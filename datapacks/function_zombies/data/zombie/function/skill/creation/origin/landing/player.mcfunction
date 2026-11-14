execute if data entity @s {OnGround:1b} if score @s origin.air_tick = #previous origin.air_tick run function zombie:skill/creation/origin/landing/ring
execute unless data entity @s {OnGround:1b} run scoreboard players operation @s origin.air_tick = #now origin.air_tick
execute if data entity @s {OnGround:1b} run scoreboard players reset @s origin.air_tick
