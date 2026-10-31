# 点击“谢谢你”后放置；如果其他玩家已经放置，则保留现有玻璃框。
execute unless score #idx monhan matches 1 run return run function map:area/lab/monhan/page/main/show
execute if entity @e[type=interaction,tag=area.lab.showcase.display,limit=1] run return run function map:area/lab/monhan/page/main/show
execute positioned 293.5 92.1 170.5 run function map:area/lab/monhan/showcase/display/init
execute positioned 293.5 92.1 170.5 run function map:area/lab/monhan/showcase/display/particle
scoreboard players set @e[type=interaction,tag=area.lab.showcase.display] area.showcase 0
playsound block.glass.place record @a 293.5 92.1 170.5 1 1
function map:area/lab/monhan/page/main/show
