
execute if score @s uuid matches 1.. run return fail
execute store result score @s uuid0 run data get entity @s UUID[0]
execute store result score @s uuid1 run data get entity @s UUID[1]
execute store result score @s uuid2 run data get entity @s UUID[2]
execute store result score @s uuid3 run data get entity @s UUID[3]
scoreboard players add player_uuid uuid 1
scoreboard players operation @s uuid = player_uuid uuid