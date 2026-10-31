execute unless score #idx monhan matches 1 run return run function map:area/lab/monhan/page/main/show
execute unless entity @e[type=interaction,tag=area.lab.showcase.display,scores={area.showcase=1}] run return run function map:area/lab/monhan/page/showcase/empty

# 清空玻璃框：里面的物品直接没了（放进去的是函数/蓝图也一样，玩家自己吃亏）
execute as @e[type=interaction,tag=area.lab.showcase.display] at @s run function map:area/lab/monhan/showcase/trigger/take
playsound block.glass.break record @a 293.5 92.1 170.5 1 1.5

function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 23
function map:area/lab/monhan/dialog/say {t:"showcase.8"}
function map:area/lab/monhan/dialog/opt {c:3,t:"showcase.9",i:1}
function map:area/lab/monhan/dialog/gap
