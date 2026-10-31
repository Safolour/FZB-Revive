execute unless score @s monhan.lucky_set matches 1 run return run function map:area/lab/monhan/page/main/show
execute if score #idx monhan matches 1 run return run function map:area/lab/monhan/page/lucky/change
execute if score #idx monhan matches 2 run return run function map:area/lab/monhan/page/lucky/refund
function map:area/lab/monhan/page/main/show
