# “我被幸运箱折磨了...”：每计满 4 抽（第 5 抽就是定向的那一抽）可以花 1000 让 Monhan 决定下一抽
execute if score @s monhan.lucky_set matches 1 run return run function map:area/lab/monhan/page/lucky/manage
execute unless score @s monhan.lucky >= lucky.cycle monhan run return run function map:area/lab/monhan/page/main/show
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 50
scoreboard players operation #price monhan = lucky.price monhan
function map:area/lab/monhan/dialog/say_price {t:"luckychest.1"}
function map:area/lab/monhan/dialog/opt {c:3,t:"luckychest.2",i:1}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"luckychest.10",i:2}
function map:area/lab/monhan/dialog/gap
