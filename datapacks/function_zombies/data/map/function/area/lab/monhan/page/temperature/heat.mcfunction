# 加热多少度（不收钱）：80 / 50 / 40 / 30 / 20 / 10，录像里从大到小排
execute unless score round game.state matches 21..40 run return run function map:area/lab/monhan/page/main/show
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 41
function map:area/lab/monhan/dialog/say {t:"temperature.3"}
function map:area/lab/monhan/dialog/opt {c:3,t:"temperature.9",i:1}
function map:area/lab/monhan/dialog/opt {c:3,t:"temperature.8",i:2}
function map:area/lab/monhan/dialog/opt {c:3,t:"temperature.7",i:3}
function map:area/lab/monhan/dialog/opt {c:3,t:"temperature.6",i:4}
function map:area/lab/monhan/dialog/opt {c:3,t:"temperature.5",i:5}
function map:area/lab/monhan/dialog/opt {c:3,t:"temperature.4",i:6}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"temperature.18",i:7}
function map:area/lab/monhan/dialog/gap
