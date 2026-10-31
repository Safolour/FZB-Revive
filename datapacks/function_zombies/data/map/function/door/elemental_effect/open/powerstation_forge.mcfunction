
clone 9 -59 11 9 -54 13 106 39 66
execute if score forge area matches 0 run function map:window/spawn/elemental_effect/window/forge
execute if score powerstation area matches 0 run function map:window/spawn/elemental_effect/window/powerstation
scoreboard players set forge area 1
scoreboard players set powerstation area 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.20] path.way_point.14.near 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.14] path.way_point.20.near 1