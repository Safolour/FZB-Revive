# 奖池物品两个一行（zb.dialog.monhan.text.luckychest.item），每个名字单独可点，选项序号 = 10 + 奖池下标
function map:area/lab/monhan/page/lucky/pool
scoreboard players set #i monhan 0
function map:area/lab/monhan/page/lucky/list_loop
data remove storage monhan pool
data remove storage monhan line
