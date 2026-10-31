# 修饰符值 = max(当前金血 − 1, 0) − 现在的 max_absorption（单位 0.01）
execute store result score #cap health.absorption run attribute @s max_absorption get 100
# 同一 tick 里受伤/灰烬已经把上限压下去时，以上限为准
scoreboard players operation @s health.absorption < #cap health.absorption
scoreboard players remove @s health.absorption 100
execute if score @s health.absorption matches ..-1 run scoreboard players set @s health.absorption 0
scoreboard players operation @s health.absorption -= #cap health.absorption
execute store result storage player_stat root.absorption double 0.01 run scoreboard players get @s health.absorption
function player_stat:health/absorption/decay0 with storage player_stat root
data remove storage player_stat root.absorption
tag @s add health.absorption_decay
