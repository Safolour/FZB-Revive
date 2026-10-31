tag @s add target
scoreboard players set @s interaction.left_click 1
execute store result score player_uuid0 uuid0 run data get entity @s attack.player[0]
execute store result score player_uuid1 uuid1 run data get entity @s attack.player[1]
execute store result score player_uuid2 uuid2 run data get entity @s attack.player[2]
execute store result score player_uuid3 uuid3 run data get entity @s attack.player[3]
data remove entity @s attack

execute as @a if score @s uuid0 = player_uuid0 uuid0 if score @s uuid1 = player_uuid1 uuid1 if score @s uuid2 = player_uuid2 uuid2 if score @s uuid3 = player_uuid3 uuid3 run tag @s add chosen

scoreboard players reset player_uuid0 uuid0
scoreboard players reset player_uuid1 uuid1
scoreboard players reset player_uuid2 uuid2
scoreboard players reset player_uuid3 uuid3

execute as @p[tag=chosen] run function interaction:interact/left_click
tag @s remove target