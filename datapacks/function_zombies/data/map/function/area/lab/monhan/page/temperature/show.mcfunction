# “我要被烤熟了...”（只在第 21-40 回合）
execute unless score round game.state matches 21..40 run return run function map:area/lab/monhan/page/main/show
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 40
function map:area/lab/monhan/dialog/say {t:"temperature.1"}
function map:area/lab/monhan/dialog/opt {c:3,t:"temperature.2",i:1}
function map:area/lab/monhan/dialog/opt {c:3,t:"temperature.19",i:2}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"temperature.27",i:3}
function map:area/lab/monhan/dialog/gap
