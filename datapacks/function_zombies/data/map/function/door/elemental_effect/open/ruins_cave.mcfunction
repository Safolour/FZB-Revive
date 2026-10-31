
clone 5 -59 7 7 -53 14 43 24 109
execute if score cave area matches 0 run function map:window/spawn/elemental_effect/window/cave
execute if score ruins area matches 0 run function map:window/spawn/elemental_effect/window/ruins
scoreboard players set cave area 1
scoreboard players set ruins area 1
scoreboard players set @e[type=skeleton,tag=way_point,tag=way_point.1] path.way_point.0.near 1
scoreboard players set @e[type=skeleton,tag=way_point,tag=way_point.0] path.way_point.1.near 1