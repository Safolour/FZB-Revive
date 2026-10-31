# “可以给我一些建议吗...”
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 70
function map:area/lab/monhan/dialog/say {t:"tips.1"}
function map:area/lab/monhan/dialog/opt {c:3,t:"tips.2",i:1}
function map:area/lab/monhan/dialog/opt {c:3,t:"tips.6",i:2}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"tips.10",i:3}
function map:area/lab/monhan/dialog/gap
