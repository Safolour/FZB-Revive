
clone 11 -59 23 15 -55 27 118 37 109
execute if score karst area matches 0 run function map:window/spawn/elemental_effect/window/karst
execute if score relic area matches 0 run function map:window/spawn/elemental_effect/window/relic
scoreboard players set karst area 1
scoreboard players set relic area 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.10] path.way_point.9.near 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.9] path.way_point.10.near 1