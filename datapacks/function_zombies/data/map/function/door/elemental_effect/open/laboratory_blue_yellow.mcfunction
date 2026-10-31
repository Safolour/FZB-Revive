
clone 15 -59 9 19 -55 9 135 40 57
execute if score laboratory_blue area matches 0 run function map:window/spawn/elemental_effect/window/laboratory_blue
execute if score laboratory_yellow area matches 0 run function map:window/spawn/elemental_effect/window/laboratory_yellow
scoreboard players set laboratory_blue area 1
scoreboard players set laboratory_yellow area 1