execute store result score player_uuid0 uuid0 run data get entity @s Thrower[0]
execute store result score player_uuid1 uuid1 run data get entity @s Thrower[1]
execute store result score player_uuid2 uuid2 run data get entity @s Thrower[2]
execute store result score player_uuid3 uuid3 run data get entity @s Thrower[3]

execute as @a if score @s uuid0 = player_uuid0 uuid0 if score @s uuid1 = player_uuid1 uuid1 if score @s uuid2 = player_uuid2 uuid2 if score @s uuid3 = player_uuid3 uuid3 run tag @s add chosen
# 函数：按 Q（丢弃键）释放毁灭激光，物品照常放回，下一 tick 由 weapon:range/gun/gun/function/tick 发射
execute if items entity @s contents *[custom_data~{tag:["function"]}] run tag @p[tag=chosen] add weapon.function_laser
execute if items entity @s contents *[custom_data~{tag:["season_summer"]}] run tag @p[tag=chosen] add weapon.season_summer_burst
execute if items entity @s contents *[custom_data~{tag:["ultimateseason_summer"]}] run tag @p[tag=chosen] add weapon.season_summer_burst

execute if items entity @s contents *[custom_data~{gun:"resonance"}] run tag @p[tag=chosen] add weapon.res_request

scoreboard players reset player_uuid0 uuid0
scoreboard players reset player_uuid1 uuid1
scoreboard players reset player_uuid2 uuid2
scoreboard players reset player_uuid3 uuid3

execute as @p[tag=chosen] run function inventory:item_restore
function system:death
