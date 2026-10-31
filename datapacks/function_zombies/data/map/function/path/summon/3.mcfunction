
tag @s remove chosen
execute if entity @n[tag=path,tag=!pathfinding,tag=chosen,tag=babyzombie] run attribute @s scale base set 0.5
scoreboard players operation @s zombie.uuid = uuid zombie.uuid
scoreboard players operation @s path.in_window = score path.in_window
scoreboard players operation @s path.way_point.target = target path.way_point.target
scoreboard players set @s path.tp_order 2
#tellraw @a [{"score":{"name":"@s","objective":"zombie.uuid"}},{text:"-》"},{"score":{"name":"target","objective":"path.way_point.target"}}]
function map:path/damage
team join collision @s