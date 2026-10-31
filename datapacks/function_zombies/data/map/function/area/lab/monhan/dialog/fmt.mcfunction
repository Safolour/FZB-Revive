# #price monhan → storage monhan say.a（“1,000”、“10,000”）
data modify storage monhan fmt set value {p0:"",p1:"",p2:""}
execute store result storage monhan fmt.s int 1 run scoreboard players get #price monhan
data modify storage monhan fmt.s set string storage monhan fmt.s 0
data modify storage monhan fmt.p0 set string storage monhan fmt.s -3
data modify storage monhan fmt.p1 set string storage monhan fmt.s 0 -3
data modify storage monhan fmt.p1 set string storage monhan fmt.p1 -3
data modify storage monhan fmt.p2 set string storage monhan fmt.s 0 -6
data modify storage monhan fmt.p2 set string storage monhan fmt.p2 -3
function map:area/lab/monhan/dialog/fmt0 with storage monhan fmt
data remove storage monhan fmt
