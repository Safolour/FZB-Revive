execute unless score #idx monhan matches 1 run return run function map:area/lab/monhan/page/main/show
execute unless score round game.state matches 21..40 run return run function map:area/lab/monhan/page/main/show

function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 43
execute store result score #r monhan run random value 0..1
execute if score #r monhan matches 0 run function map:area/lab/monhan/dialog/say {t:"temperature.13"}
execute if score #r monhan matches 1 run function map:area/lab/monhan/dialog/say {t:"temperature.14"}
function map:area/lab/monhan/dialog/opt {c:3,t:"temperature.15",i:1}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"temperature.16",i:2}
function map:area/lab/monhan/dialog/gap

# 加热：<玩家>让 Monhan 将温度升高了 N 度！（录像里度数是 §a）
scoreboard players operation temperature0 area.temperature += @s monhan.heat
execute store result storage monhan heat.n int 1 run scoreboard players get @s monhan.heat
function map:area/lab/monhan/page/temperature/heat_tellraw with storage monhan heat
data remove storage monhan heat
function map:area/lab/temperature/update
