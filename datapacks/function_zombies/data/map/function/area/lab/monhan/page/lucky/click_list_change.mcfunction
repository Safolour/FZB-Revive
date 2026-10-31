# 换一个物品（不再收钱）
execute unless score #idx monhan matches 10.. run return run function map:area/lab/monhan/page/main/show
execute unless score @s monhan.lucky_set matches 1 run return run function map:area/lab/monhan/page/main/show
function map:area/lab/monhan/page/lucky/pool
scoreboard players remove #idx monhan 10
execute unless score #idx monhan < #n monhan run return run function map:area/lab/monhan/page/main/show
function map:area/lab/monhan/page/lucky/pick
