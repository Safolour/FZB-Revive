
scoreboard players operation @s zombie.uuid = uuid zombie.uuid
scoreboard players operation @s path.in_window = score path.in_window
team join collision @s
tag @s remove chosen
execute if entity @n[tag=path,tag=!pathfinding,tag=chosen,tag=babyzombie] run attribute @s scale base set 0.5
execute if entity @n[type=skeleton,tag=path,tag=pathfinding,tag=chosen] run scoreboard players set @s path.way_point.target -1
execute if entity @n[type=skeleton,tag=path,tag=pathfinding,tag=chosen] run return run scoreboard players set @s path.tp_order 1
scoreboard players set @s path.tp_order 2
