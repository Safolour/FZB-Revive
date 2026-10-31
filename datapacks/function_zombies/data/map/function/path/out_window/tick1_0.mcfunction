
$execute if score $(target0) number matches -1 run return run scoreboard players set @s[tag=path,tag=!pathfinding] path.tp_binding 3
$scoreboard players operation target path.way_point.target = @n[type=skeleton,tag=way_point.$(target0)] path.way_point.target
scoreboard players operation @s[tag=path,tag=!pathfinding] path.way_point.target = target path.way_point.target
scoreboard players set @s[tag=path,tag=pathfinding] path.tp_order 1
scoreboard players set @s[tag=path,tag=!pathfinding] path.summon 2