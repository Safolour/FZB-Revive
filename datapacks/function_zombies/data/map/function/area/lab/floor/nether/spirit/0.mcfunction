clone 286 175 129 314 177 173 286 90 129
execute as @a at @s run playsound minecraft:block.lava.extinguish ambient @s ~ ~ ~ 2 0

scoreboard players add count area.floor.timer 1
execute if score count area.floor.timer matches 1 run function map:area/lab/floor/nether/spirit/tellraw
