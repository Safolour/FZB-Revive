
tag @s add chosen
execute at @s as @n[tag=way_point_target,distance=4..32] if entity @s[type=player,gamemode=!creative,gamemode=!spectator] as @n[tag=chosen] run function map:path/out_window/tick1_3
execute at @s as @n[tag=way_point_target,distance=..4] if entity @s[type=player,gamemode=!creative,gamemode=!spectator] as @n[tag=chosen] run function map:path/out_window/tick1_4
execute at @s unless entity @e[type=skeleton,tag=way_point,distance=..1] on target if entity @s[tag=way_point] as @s at @s unless entity @e[tag=chosen,distance=..1] run return run tag @n[tag=chosen] remove chosen
tag @s remove chosen

execute if entity @s[scores={path.way_point.target=0..}] run execute store result storage path root.way_point.target int 1 run scoreboard players get @s path.way_point.target
execute if entity @s[scores={path.way_point.target=0..}] run function map:path/out_window/tick1_2 with storage path root.way_point
execute if entity @s[scores={path.way_point.target=-1}] run tag @s add if_pass

execute if entity @s[tag=!if_pass] run function map:path/damage
execute if entity @s[tag=!if_pass] run return run data remove storage path root
tag @s remove if_pass

tag @s add chosen
scoreboard players operation uuid zombie.uuid = @s zombie.uuid
execute as @e[tag=path,tag=pathfinding,type=skeleton,tag=!chosen] if score @s zombie.uuid = uuid zombie.uuid run function map:path/out_window/tick1_0 with storage path root.way_point
execute as @e[tag=path,tag=!pathfinding,tag=!chosen] if score @s zombie.uuid = uuid zombie.uuid run function map:path/out_window/tick1_0 with storage path root.way_point
tag @s remove chosen
data remove storage path root
function system:death