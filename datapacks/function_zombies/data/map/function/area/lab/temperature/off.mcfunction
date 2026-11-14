# 不在 PL 第 21-40 回合：温度归零（已经是 0 就什么都不做）
scoreboard players set temperature area.temperature 0
scoreboard players set #r40_timer area.temperature 0
execute if score temperature0 area.temperature matches 0 run return 0
scoreboard players set temperature0 area.temperature 0
function map:area/lab/temperature/update
