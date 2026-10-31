# “好的，你下一次会抽出 X”
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 52
execute store result storage monhan pick.uuid int 1 run scoreboard players get @s uuid
function map:area/lab/monhan/page/lucky/set0 with storage monhan pick
data remove storage monhan pick
function map:area/lab/monhan/dialog/opt {c:3,t:"luckychest.11",i:1}
function map:area/lab/monhan/dialog/opt {c:1,t:"luckychest.5",i:2}
