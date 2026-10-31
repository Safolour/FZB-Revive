execute store result storage monhan pick.uuid int 1 run scoreboard players get @p[tag=chosen] uuid
function map:area/lab/monhan/lucky/force0 with storage monhan pick
data remove storage monhan pick
scoreboard players set @p[tag=chosen] monhan.lucky_set 0
scoreboard players set @p[tag=chosen] monhan.lucky 0
