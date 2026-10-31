
scoreboard players set @s path.in_window 0

execute unless entity @e[type=skeleton,tag=way_point] run return run scoreboard players set @s[tag=path,tag=!pathfinding] path.tp_binding 3

scoreboard players operation @s[tag=path,tag=!pathfinding] path.way_point.target = target path.way_point.target
scoreboard players set @s[tag=path,tag=!pathfinding] path.summon 2
scoreboard players set @s[tag=path,tag=pathfinding] path.tp_order 1
#execute if entity @s[tag=path,tag=!pathfinding] run tellraw @a [{"score":{"name":"@s","objective":"zombie.uuid"}},{text:"->>"},{"score":{"name":"@s","objective":"path.way_point.target"}}]