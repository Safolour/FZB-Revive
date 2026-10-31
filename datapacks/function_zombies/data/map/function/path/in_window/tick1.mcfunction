
execute unless entity @e[type=skeleton,tag=window_point,distance=..1] on target if entity @s[tag=window_point] run return fail

execute unless entity @e[type=skeleton,tag=window_point,distance=..1] run damage @s 1 mob_attack by @n[type=skeleton,tag=window_point]
scoreboard players operation uuid zombie.uuid = @s zombie.uuid
tag @s add chosen
execute as @e[tag=path,tag=pathfinding,type=skeleton,tag=!chosen] if score @s zombie.uuid = uuid zombie.uuid at @n[type=skeleton,tag=window_point] run function map:path/in_window/tick1_1 with entity @n[type=skeleton,tag=way_point,tag=!disable] data
tag @s remove chosen

execute unless entity @e[type=skeleton,tag=window_point,distance=..1] run return fail

scoreboard players set @s path.in_window 0
scoreboard players operation uuid zombie.uuid = @s zombie.uuid
tag @s add chosen
scoreboard players operation target path.way_point.target = @n[type=skeleton,tag=way_point,tag=!disable] path.way_point.target
#tellraw @a [{"score":{"name":"@s","objective":"zombie.uuid"}},{text:" "},{"score":{"name":"target","objective":"path.way_point.target"}}]
execute as @e[type=skeleton,tag=path,tag=pathfinding,tag=!chosen] if score @s zombie.uuid = uuid zombie.uuid run function map:path/in_window/tick1_0
execute as @e[tag=path,tag=!pathfinding,tag=!chosen] if score @s zombie.uuid = uuid zombie.uuid run function map:path/in_window/tick1_0
tag @s remove chosen
function system:death