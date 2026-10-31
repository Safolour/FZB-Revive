execute unless data storage monhan pool[0] run return 0
scoreboard players operation #v monhan = @s monhan.key
scoreboard players add #v monhan 10
scoreboard players operation #v monhan += #i monhan
execute store result storage monhan line.v0 int 1 run scoreboard players get #v monhan
data modify storage monhan line.id0 set from storage monhan pool[0].id
data remove storage monhan pool[0]
execute unless data storage monhan pool[0] run return run function map:area/lab/monhan/page/lucky/list_one with storage monhan line
scoreboard players add #v monhan 1
execute store result storage monhan line.v1 int 1 run scoreboard players get #v monhan
data modify storage monhan line.id1 set from storage monhan pool[0].id
data remove storage monhan pool[0]
function map:area/lab/monhan/page/lucky/list_two with storage monhan line
scoreboard players add #i monhan 2
function map:area/lab/monhan/page/lucky/list_loop
