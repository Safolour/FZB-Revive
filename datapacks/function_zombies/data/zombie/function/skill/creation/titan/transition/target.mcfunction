scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=marker,tag=titan.p3.target] if score @s origin.owner = #owner origin.owner run kill @s
execute store success score #titan.p3.target origin.target run function zombie:skill/creation/origin/random_position
execute if score #titan.p3.target origin.target matches 0 run tp @s 292.5 92 150.5
execute at @s run summon marker ~ ~ ~ {Tags:["origin.combat_fx","titan.p3.target","titan.p3.anchor.new"]}
execute at @s run scoreboard players operation @e[type=marker,tag=titan.p3.anchor.new,sort=nearest,limit=1,distance=..1] origin.owner = #owner origin.owner
tag @e[type=marker,tag=titan.p3.anchor.new] remove titan.p3.anchor.new
