
tag @s add chosen
execute unless entity @e[type=skeleton,tag=way_point,distance=..1] on target if entity @s[tag=way_point] as @s at @s unless entity @e[tag=chosen,distance=..1] run return run tag @n[tag=chosen] remove chosen
tag @s remove chosen
execute if entity @s[scores={path.way_point.target=-1}] run function system:death
function map:path/damage