# 读当前有效金血：#abs100 = min(AbsorptionAmount, max_absorption)（0.01 生命），#abs = #abs100 / 10（0.1 生命，和 health.health 同单位）
#   取 min：同一 tick 里别的夹值修饰符（伤害、衰减、灰烬）已经压过上限，但实体还没更新，AbsorptionAmount 还是旧值
execute store result score #abs100 health.operation run data get entity @s AbsorptionAmount 100
execute store result score #c health.operation run attribute @s max_absorption get 100
scoreboard players operation #abs100 health.operation < #c health.operation
scoreboard players operation #abs health.operation = #abs100 health.operation
scoreboard players operation #abs health.operation /= 10 number
