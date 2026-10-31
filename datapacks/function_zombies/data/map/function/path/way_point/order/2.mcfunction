
scoreboard players add @e[type=skeleton,tag=way_point] path.way_point.order 1
scoreboard players set @e[type=skeleton,tag=way_point] path.way_point.order0 447010
scoreboard players set @e[type=skeleton,tag=way_point] path.way_point.order1 -1
scoreboard players set @e[type=skeleton,tag=way_point] path.way_point.target -2
scoreboard players set @s path.way_point.order0 1
scoreboard players set @s path.way_point.order1 -1
scoreboard players set order path.way_point.order0 1
scoreboard players set order path.way_point.order1 0
tag @s add selected
#tellraw @a [{"selector":"@s"},{text:"->"},{"score":{"name":"@s","objective":"path.way_point.order0"}}]
function map:path/way_point/order/2_0 with entity @s data
tag @e[tag=selected] remove selected
tag @e[tag=selecting] remove selecting
execute as @e[type=skeleton,tag=way_point] run scoreboard players operation @s path.way_point.order = @s path.way_point.order0
scoreboard players reset @e[type=skeleton,tag=way_point] path.way_point.order0
scoreboard players set @s path.way_point.target -1