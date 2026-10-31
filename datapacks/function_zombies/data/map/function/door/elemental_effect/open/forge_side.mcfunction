
clone 21 -59 11 21 -55 13 67 32 58
clone 19 -59 17 21 -55 17 98 39 64
function map:window/spawn/elemental_effect/spawner/cave
execute if score forge_side area matches 0 run function map:window/spawn/elemental_effect/window/forge_side
scoreboard players set forge_side area 1
fill 104 39 69 98 39 69 jungle_fence replace air
fill 83 31 75 85 31 75 jungle_fence replace air
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.43] path.way_point.17.near 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.17] path.way_point.43.near 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.19] path.way_point.20.near 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.20] path.way_point.19.near 1

scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.21] path.way_point.20.near 0
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.22] path.way_point.20.near 0
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.20] path.way_point.21.near 0
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.20] path.way_point.22.near 0
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.27] path.way_point.26.near 0
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.26] path.way_point.27.near 0

tag @n[type=skeleton,tag=way_point,tag=way_point.17] remove disable
tag @n[type=skeleton,tag=way_point,tag=way_point.18] remove disable
tag @n[type=skeleton,tag=way_point,tag=way_point.19] remove disable

tag @n[type=skeleton,tag=way_point,tag=way_point.21] add disable
tag @n[type=skeleton,tag=way_point,tag=way_point.22] add disable
tag @n[type=skeleton,tag=way_point,tag=way_point.23] add disable
tag @n[type=skeleton,tag=way_point,tag=way_point.24] add disable
tag @n[type=skeleton,tag=way_point,tag=way_point.25] add disable
tag @n[type=skeleton,tag=way_point,tag=way_point.26] add disable

tag @e[type=marker,tag=spawner,tag=forge_side0] remove disable
tag @e[type=marker,tag=spawner,tag=forge_side1] add disable