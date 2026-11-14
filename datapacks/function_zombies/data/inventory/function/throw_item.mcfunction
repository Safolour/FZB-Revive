# 掉落实体执行；只按 Thrower UUID 找物主，不使用会被其他掉落/连发共用的 chosen 标签。
execute unless data entity @s Thrower run return 0
data modify storage inventory:throw_item root set value {}
execute store success storage inventory:throw_item root.paradox byte 1 run execute if items entity @s contents *[custom_data~{gun:"paradox"}]
data modify storage inventory:throw_item root.id set from entity @s Item.id
data modify storage inventory:throw_item root.custom_data set from entity @s Item.components."minecraft:custom_data"
execute store result storage inventory:throw_item root.count int 1 run data get entity @s Item.count
execute store success storage inventory:throw_item root.function byte 1 run execute if items entity @s contents *[custom_data~{tag:["function"]}]
execute store success storage inventory:throw_item root.summer byte 1 run execute if items entity @s contents *[custom_data~{tag:["season_summer"]}]
execute if items entity @s contents *[custom_data~{tag:["ultimateseason_summer"]}] run data modify storage inventory:throw_item root.summer set value 1b
execute store success storage inventory:throw_item root.resonance byte 1 run execute if items entity @s contents *[custom_data~{gun:"resonance"}]

execute store result score player_uuid0 uuid0 run data get entity @s Thrower[0]
execute store result score player_uuid1 uuid1 run data get entity @s Thrower[1]
execute store result score player_uuid2 uuid2 run data get entity @s Thrower[2]
execute store result score player_uuid3 uuid3 run data get entity @s Thrower[3]

scoreboard players set #drop_returned inventory 0
execute as @a if score @s uuid0 = player_uuid0 uuid0 if score @s uuid1 = player_uuid1 uuid1 if score @s uuid2 = player_uuid2 uuid2 if score @s uuid3 = player_uuid3 uuid3 at @s store result score #drop_returned inventory run function inventory:throw_item/owner with storage inventory:throw_item root

scoreboard players reset player_uuid0 uuid0
scoreboard players reset player_uuid1 uuid1
scoreboard players reset player_uuid2 uuid2
scoreboard players reset player_uuid3 uuid3

data remove storage inventory:throw_item root
scoreboard players reset #drop_cached_count inventory
scoreboard players reset #drop_count inventory
# 没有物主、没有有效缓存或还原失败时保留实体，避免直接吞掉实际物品。
execute if score #drop_returned inventory matches 1 run function system:death
scoreboard players reset #drop_returned inventory
