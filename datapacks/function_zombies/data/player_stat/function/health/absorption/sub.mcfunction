# 扣金血 #sub100（0.01 生命），调用前先跑 player_stat:health/absorption/get；不能超过 #abs100
# 玩家的 AbsorptionAmount 不能直接改：加 max_absorption 修饰符 zb:absorption_damage 把上限压到“有效金血 − 扣除量”，
#   玩家这一 tick 更新属性时金血被夹下去，下一 tick 由 absorption/restore_all 去掉（按 gametime，熔合机器在玩家 tick 之前跑）
# 修饰符相对“去掉自己后的上限”算，能和衰减、灰烬的修饰符叠加；同一 tick 扣两次时 #abs100 已经是第一次夹完的值
scoreboard players operation #t health.operation = #abs100 health.operation
scoreboard players operation #t health.operation -= #sub100 health.operation
execute if score #t health.operation matches ..-1 run scoreboard players set #t health.operation 0
attribute @s max_absorption modifier remove zb:absorption_damage
execute store result score #c health.operation run attribute @s max_absorption get 100
scoreboard players operation #t health.operation -= #c health.operation
execute store result storage player_stat root.absorption_damage double 0.01 run scoreboard players get #t health.operation
function player_stat:health/absorption/sub0 with storage player_stat root
data remove storage player_stat root.absorption_damage
execute store result score @s health.absorption_damage run time query gametime
