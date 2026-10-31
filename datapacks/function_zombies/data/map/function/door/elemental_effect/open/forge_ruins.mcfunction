
clone 7 -59 16 11 -48 21 62 26 93
execute if score forge area matches 0 run function map:window/spawn/elemental_effect/window/forge
execute if score ruins area matches 0 run function map:window/spawn/elemental_effect/window/ruins
scoreboard players set forge area 1
scoreboard players set ruins area 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.16] path.way_point.4.near 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.4] path.way_point.16.near 1
