scoreboard players operation #owner origin.owner = @s origin.owner
scoreboard players add @s origin.fx_age 1
execute if score @s origin.fx_age matches 1 run return run function zombie:skill/creation/titan/sword/aim
execute if score @s origin.fx_age matches 100.. run return run function zombie:skill/creation/titan/sword/cleanup
# The recordings have a fixed straight vector of length one block per tick after aiming.
tp @s ^ ^ ^1
execute at @s as @e[type=item_display,tag=titan.sword.model] if score @s origin.owner = #owner origin.owner run tp @s ~ ~ ~
execute at @s unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless block ~ ~ ~ minecraft:void_air run return run function zombie:skill/creation/titan/sword/impact
