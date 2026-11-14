scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=marker,tag=titan.tp.destination] if score @s origin.owner = #owner origin.owner at @s run function zombie:skill/creation/titan/teleport/fx
