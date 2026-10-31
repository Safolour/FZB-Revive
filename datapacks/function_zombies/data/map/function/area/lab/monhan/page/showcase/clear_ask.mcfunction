# “可以帮我把玻璃框中的物品清除吗”
execute unless entity @e[type=interaction,tag=area.lab.showcase.display,scores={area.showcase=1}] run return run function map:area/lab/monhan/page/showcase/empty
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 22
function map:area/lab/monhan/dialog/say {t:"showcase.6"}
function map:area/lab/monhan/dialog/opt {c:4,t:"showcase.7",i:1}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"showcase.11",i:2}
function map:area/lab/monhan/dialog/gap
