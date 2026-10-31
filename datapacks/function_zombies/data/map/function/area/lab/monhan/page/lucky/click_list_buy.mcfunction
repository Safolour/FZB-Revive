# 第一次定向（付费）
execute unless score #idx monhan matches 10.. run return run function map:area/lab/monhan/page/main/show
execute if score @s monhan.lucky_set matches 1 run return run function map:area/lab/monhan/page/lucky/manage
execute unless score @s monhan.lucky >= lucky.cycle monhan run return run function map:area/lab/monhan/page/main/show
function map:area/lab/monhan/page/lucky/pool
scoreboard players remove #idx monhan 10
execute unless score #idx monhan < #n monhan run return run function map:area/lab/monhan/page/main/show
scoreboard players operation #price monhan = lucky.price monhan
execute store result score #ok monhan run function map:area/lab/monhan/page/pay
execute unless score #ok monhan matches 1 run return 0
playsound block.note_block.pling record @s ~ ~ ~ 1 2 0
function map:area/lab/monhan/page/lucky/pick
