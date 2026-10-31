# 与 replay 一致：统一显示 10,000 金钱，选项顺序为火焰 / 中和 / 灰烬
execute unless score round game.state matches 41.. run return run function map:area/lab/monhan/page/main/show
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 61
scoreboard players operation #price monhan = perk.missed.price monhan
function map:area/lab/monhan/dialog/fmt
data modify storage monhan perk.price set from storage monhan say.a
function map:area/lab/monhan/page/perk/list0 with storage monhan perk
data remove storage monhan perk
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"perk.7",i:1}
function map:area/lab/monhan/dialog/gap
