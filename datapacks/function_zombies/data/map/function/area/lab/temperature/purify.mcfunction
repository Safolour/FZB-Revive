# 净化（加成或在 Monhan 处购买）：降温 16~24°C，最低 0°C（不是直接清零）
# 录像 24 次净化（replay分析/scan_temp.js）：降幅 16~24，平均约 20，和场上敌人数、当前温度都没有关系
execute store result score #drop area.temperature run random value 16..24
scoreboard players operation temperature0 area.temperature -= #drop area.temperature
execute if score temperature0 area.temperature matches ..-1 run scoreboard players set temperature0 area.temperature 0
function map:area/lab/temperature/update
function map:powerup/presentation/temperature {players:"@a[scores={system.room=4..}]",holder:"temperature0",objective:"area.temperature"}

function zombie:skill/nether/firelord/p3/eclipse/purify_count
