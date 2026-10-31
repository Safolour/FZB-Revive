
execute unless score @s path.way_point.target = @s path.way_point.target run return fail
execute store result storage path root.way_point.target int 1 run scoreboard players get @s path.way_point.target
function map:path/damage0 with storage path root.way_point
data remove storage path root