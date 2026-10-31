execute if score @s health.absorption_add = @s health.absorption_add run function player_stat:health/absorption/restore_add
# 玩家执行（system:tick0_0 开头，在武器 tick 之前）：去掉上一 tick 留下的金血夹值修饰符
#   放在武器之前，免得灰烬火焰发射器加金血时读到残留的负修饰符
execute if entity @s[tag=health.absorption_decay] run function player_stat:health/absorption/restore
execute unless score @s health.absorption_damage = @s health.absorption_damage run return fail
execute store result score #now health.absorption_damage run time query gametime
execute if score @s health.absorption_damage = #now health.absorption_damage run return fail
attribute @s max_absorption modifier remove zb:absorption_damage
scoreboard players reset @s health.absorption_damage
