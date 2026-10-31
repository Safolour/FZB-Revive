# 记下目标：storage monhan players.p<uuid>.target = 奖池里第 #idx 个（{id,item,model,type}，和幸运箱 data.item 同格式）
execute store result storage monhan pick.i int 1 run scoreboard players get #idx monhan
execute store result storage monhan pick.uuid int 1 run scoreboard players get @s uuid
function map:area/lab/monhan/page/lucky/pick0 with storage monhan pick
data remove storage monhan pick
data remove storage monhan pool
scoreboard players set @s monhan.lucky_set 1
function map:area/lab/monhan/page/lucky/set
