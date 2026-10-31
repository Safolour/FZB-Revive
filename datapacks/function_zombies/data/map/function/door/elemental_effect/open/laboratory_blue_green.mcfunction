
clone 17 -59 11 17 -55 15 157 45 81
execute if score laboratory_blue area matches 0 run function map:window/spawn/elemental_effect/window/laboratory_blue
execute if score laboratory_green area matches 0 run function map:window/spawn/elemental_effect/window/laboratory_green
scoreboard players set laboratory_blue area 1
scoreboard players set laboratory_green area 1