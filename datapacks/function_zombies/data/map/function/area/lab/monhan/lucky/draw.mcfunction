# 幸运箱开抽时（map:luckychest/trigger/open，执行者 = 幸运箱 marker，抽奖的玩家 = @p[tag=chosen]）
# 保底规则（用户定）：每 5 抽可以在 Monhan 处付费定向 1 次，定向的那一抽也算在 5 抽里（计满 4 抽才能买，定向抽完计数清零）
#   购物狂潮降价时抽的不计数；已经定向了但在购物狂潮里抽，不消耗定向，这一抽照常随机
data remove entity @s data.forced
execute if score shoppingspree luckychest matches 1 run return 0
execute if entity @p[tag=chosen,scores={monhan.lucky_set=1}] run return run function map:area/lab/monhan/lucky/force
scoreboard players add @p[tag=chosen] monhan.lucky 1
