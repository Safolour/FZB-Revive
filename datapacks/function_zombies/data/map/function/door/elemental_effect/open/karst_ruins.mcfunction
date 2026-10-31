
clone 3 -59 23 3 -55 25 76 25 124
execute if score karst area matches 0 run function map:window/spawn/elemental_effect/window/karst
execute if score ruins area matches 0 run function map:window/spawn/elemental_effect/window/ruins
scoreboard players set karst area 1
scoreboard players set ruins area 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.5] path.way_point.6.near 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.6] path.way_point.5.near 1