# “我想重置我的幸运箱保底...”：换物品 / 退钱 / 先不换
execute unless score @s monhan.lucky_set matches 1 run return run function map:area/lab/monhan/page/main/show
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 53
function map:area/lab/monhan/dialog/say {t:"luckychest.13"}
function map:area/lab/monhan/dialog/opt {c:3,t:"luckychest.14",i:1}
function map:area/lab/monhan/dialog/opt {c:3,t:"luckychest.17",i:2}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"luckychest.16",i:3}
function map:area/lab/monhan/dialog/gap
