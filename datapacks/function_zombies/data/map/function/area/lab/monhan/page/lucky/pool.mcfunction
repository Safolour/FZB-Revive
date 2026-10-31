# 当前回合的幸运箱奖池 → storage monhan pool（和幸运箱抽奖用同一份，map:luckychest/trigger/tier）
function map:luckychest/trigger/tier
data modify storage monhan pool set from storage luckychest item
execute store result score #n monhan run data get storage monhan pool
