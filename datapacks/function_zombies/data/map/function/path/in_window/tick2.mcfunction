
execute unless entity @e[type=skeleton,tag=way_point,distance=..1] on target if entity @s[tag=way_point] run return fail
function map:path/damage