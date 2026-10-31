# 金血（伤害吸收）每秒自己掉 1 点（半颗心）：录像 2026_10_27 里没挨打、没开枪时每 20 tick −1，一直掉到 0；
#   所有玩家在同一 tick 掉（全局时钟，加金血不会重置），不管金血是哪来的
# 玩家的 AbsorptionAmount 不能直接改：把 max_absorption 临时压到“当前 − 1”，实体更新属性时金血被夹下去，下一 tick 再去掉修饰符
execute if entity @s[tag=health.absorption_decay] run function player_stat:health/absorption/restore
execute store result score #t health.absorption run time query gametime
scoreboard players operation #t health.absorption %= #20 health.absorption
execute unless score #t health.absorption matches 0 run return fail
execute store result score @s health.absorption run data get entity @s AbsorptionAmount 100
execute if score @s health.absorption matches 1.. run function player_stat:health/absorption/decay
