
clone 17 -59 17 17 -55 19 203 45 60
execute if score laboratory_shadow area matches 0 run function map:window/spawn/elemental_effect/window/laboratory_shadow
scoreboard players set laboratory_portal area 1
scoreboard players set laboratory_shadow area 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.10] path.way_point.9.near 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.9] path.way_point.10.near 1