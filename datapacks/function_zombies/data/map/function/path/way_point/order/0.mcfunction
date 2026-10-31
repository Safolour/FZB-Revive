
execute unless entity @s[gamemode=!spectator,tag=!spectator] run return fail
execute unless entity @s[tag=!spectator] run return fail
execute as @s at @s run scoreboard players operation @s path.way_point.near = @n[type=skeleton,tag=way_point] path.way_point
execute if score @s path.way_point.near0 = @s path.way_point.near run return fail
scoreboard players operation @s path.way_point.near0 = @s path.way_point.near

execute as @a[gamemode=!spectator,tag=!spectator] at @s run function map:path/way_point/order/1
execute as @n[type=skeleton,tag=way_point,scores={path.way_point.order0=-1}] at @s run function map:path/way_point/order/2