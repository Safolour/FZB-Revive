# 幸运箱 tick1（执行者 = 幸运箱 marker，at @s）：把展示的物品和 data.item 换成定向的物品，接着 timeup 照常出货
function map:luckychest/trigger/random_item2 with entity @s data.forced
data remove entity @s data.forced
