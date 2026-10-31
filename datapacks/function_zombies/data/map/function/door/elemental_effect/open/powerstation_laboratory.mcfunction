
clone 13 -59 11 13 -56 13 131 43 66
execute if score laboratory_blue area matches 0 run function map:window/spawn/elemental_effect/window/laboratory_blue
execute if score powerstation area matches 0 run function map:window/spawn/elemental_effect/window/powerstation
scoreboard players set laboratory_blue area 1
scoreboard players set powerstation area 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.28] path.way_point.15.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.15] path.way_point.28.near 1

function map:door/elemental_effect/close/laboratory_blue_green
function map:door/elemental_effect/close/laboratory_blue_yellow
function map:door/elemental_effect/close/laboratory_yellow_gray
function map:door/elemental_effect/close/laboratory_green_portal
function map:door/elemental_effect/close/laboratory_portal_light
function map:door/elemental_effect/close/laboratory_portal_shadow