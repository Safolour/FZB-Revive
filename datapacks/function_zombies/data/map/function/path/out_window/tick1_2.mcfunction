
$execute if entity @e[tag=way_point.$(target),distance=..1] run tag @s add if_pass
$execute store result storage path root.way_point.target0 int 1 run scoreboard players get @n[tag=way_point.$(target)] path.way_point.target

$execute on target if entity @s[tag=way_point.$(target)] run return fail
scoreboard players operation uuid zombie.uuid = @s zombie.uuid
execute as @e[tag=path,tag=!pathfinding] if score @s zombie.uuid = uuid zombie.uuid run scoreboard players set @s path.summon 3