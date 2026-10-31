
clone 13 -59 19 13 -55 21 151 45 55
execute if score laboratory_yellow area matches 0 run function map:window/spawn/elemental_effect/window/laboratory_yellow
execute if score laboratory_gray area matches 0 run function map:window/spawn/elemental_effect/window/laboratory_gray
scoreboard players set laboratory_yellow area 1
scoreboard players set laboratory_gray area 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.36] path.way_point.35.near 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.35] path.way_point.36.near 1