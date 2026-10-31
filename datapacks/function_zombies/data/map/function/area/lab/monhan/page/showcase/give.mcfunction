# “可以给我一个玻璃框吗”：先显示回复，等玩家点击“谢谢你”再放置。
execute if entity @e[type=interaction,tag=area.lab.showcase.display,limit=1] run return run function map:area/lab/monhan/page/showcase/exists

function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 20
function map:area/lab/monhan/dialog/say {t:"showcase.1"}
function map:area/lab/monhan/dialog/opt {c:3,t:"showcase.2",i:1}
function map:area/lab/monhan/dialog/gap
