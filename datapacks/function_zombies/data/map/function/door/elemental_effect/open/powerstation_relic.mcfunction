
clone 11 -59 9 13 -56 9 124 43 84
execute if score powerstation area matches 0 run function map:window/spawn/elemental_effect/window/powerstation
execute if score relic area matches 0 run function map:window/spawn/elemental_effect/window/relic
scoreboard players set powerstation area 1
scoreboard players set relic area 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.13] path.way_point.12.near 1
scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.12] path.way_point.13.near 1