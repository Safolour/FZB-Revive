
clone 19 -59 11 19 -55 13 67 32 58
clone 19 -59 15 21 -55 15 98 39 64
fill 104 39 69 98 39 69 air replace jungle_fence
fill 83 31 75 85 31 75 air replace jungle_fence
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.43] path.way_point.17.near 0
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.17] path.way_point.43.near 0
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.19] path.way_point.20.near 0
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.20] path.way_point.19.near 0

scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.21] path.way_point.20.near 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.22] path.way_point.20.near 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.20] path.way_point.21.near 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.20] path.way_point.22.near 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.27] path.way_point.26.near 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.26] path.way_point.27.near 1

tag @n[type=skeleton,tag=way_point,tag=way_point.17] add disable
tag @n[type=skeleton,tag=way_point,tag=way_point.18] add disable
tag @n[type=skeleton,tag=way_point,tag=way_point.19] add disable

tag @n[type=skeleton,tag=way_point,tag=way_point.21] remove disable
tag @n[type=skeleton,tag=way_point,tag=way_point.22] remove disable
tag @n[type=skeleton,tag=way_point,tag=way_point.23] remove disable
tag @n[type=skeleton,tag=way_point,tag=way_point.24] remove disable
tag @n[type=skeleton,tag=way_point,tag=way_point.25] remove disable
tag @n[type=skeleton,tag=way_point,tag=way_point.26] remove disable

tag @e[type=marker,tag=spawner,tag=forge_side0] add disable
tag @e[type=marker,tag=spawner,tag=forge_side1] remove disable