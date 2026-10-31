execute if score #idx monhan matches 1 run scoreboard players set @s monhan.heat 80
execute if score #idx monhan matches 2 run scoreboard players set @s monhan.heat 50
execute if score #idx monhan matches 3 run scoreboard players set @s monhan.heat 40
execute if score #idx monhan matches 4 run scoreboard players set @s monhan.heat 30
execute if score #idx monhan matches 5 run scoreboard players set @s monhan.heat 20
execute if score #idx monhan matches 6 run scoreboard players set @s monhan.heat 10
execute unless score #idx monhan matches 1..6 run return run function map:area/lab/monhan/page/main/show

# 确认页：两句“你确定吗”随机一句（录像 20 度出现 .10，10 度出现 .11）
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 42
execute store result score #r monhan run random value 0..1
execute if score #r monhan matches 0 run function map:area/lab/monhan/dialog/say {t:"temperature.10"}
execute if score #r monhan matches 1 run function map:area/lab/monhan/dialog/say {t:"temperature.11"}
function map:area/lab/monhan/dialog/opt {c:4,t:"temperature.12",i:1}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"temperature.17",i:2}
function map:area/lab/monhan/dialog/gap
