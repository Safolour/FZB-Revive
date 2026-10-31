
execute if score @s stat.max_health0 = @s stat.max_health run return fail
scoreboard players operation @s stat.max_health0 = @s stat.max_health
execute store result storage health root.max_health int 1 run scoreboard players get @s stat.max_health
function player_stat:health/max_health/set with storage health root
data remove storage health root