# 没人死亡时这个选项本来就不显示，点到也不应该开页（route 仍会按序号进来）
execute unless entity @a[scores={system.room=4,stat.player=3}] run return 0

function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 30
function map:area/lab/monhan/dialog/say {t:"revive.1"}
function map:area/lab/monhan/dialog/opt {c:3,t:"revive.2",i:1}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"revive.9",i:2}
function map:area/lab/monhan/dialog/gap
