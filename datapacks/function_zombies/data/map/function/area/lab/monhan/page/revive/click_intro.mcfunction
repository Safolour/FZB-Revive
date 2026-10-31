execute unless score #idx monhan matches 1 run return run function map:area/lab/monhan/page/main/show
# 没有队友死亡：“他们好像活的好好的”
execute unless entity @a[scores={system.room=4,stat.player=3}] run return run function map:area/lab/monhan/page/revive/none

function map:area/lab/monhan/page/revive/calc
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 31
function map:area/lab/monhan/dialog/say_price {t:"revive.3"}
function map:area/lab/monhan/dialog/opt {c:4,t:"revive.4",i:1}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"revive.8",i:2}
function map:area/lab/monhan/dialog/gap
