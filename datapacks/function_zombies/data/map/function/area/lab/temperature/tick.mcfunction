# PL（type map 4）第 21-40 回合温度持续升高；别的地图、别的回合温度恒为 0
execute unless score type map matches 4 run return run function map:area/lab/temperature/off
execute unless score round game.state matches 21..40 run return run function map:area/lab/temperature/off

# 累加器单位：100000 = 1°C。每 tick 基础 +180，每只敌人 +33，火焰敌人再 +23（玩家受伤 +600，见 player_take_damage）
# 录像实测（replay分析/fit_temp.py，271 段）：升温速度 ≈ 0.037 + 0.0067×场上敌人数 °C/s，烈焰人/凋灵骷髅约是普通怪的 1.8 倍
#   换算：180×20/100000 = 0.036 °C/s，33×20/100000 = 0.0066 °C/s/只
scoreboard players add temperature area.temperature 180
execute store result score mob area.temperature run execute if entity @e[tag=mob]
scoreboard players operation mob area.temperature *= 33 number
scoreboard players operation temperature area.temperature += mob area.temperature
execute store result score fire area.temperature run execute if entity @e[tag=mob.flame]
scoreboard players operation fire area.temperature *= 23 number
scoreboard players operation temperature area.temperature += fire area.temperature

execute if score temperature area.temperature matches 100000.. run function map:area/lab/temperature/rise

# 81-99°C 每秒受伤，100°C 热死
execute if score temperature0 area.temperature matches 81.. run scoreboard players add damagecooldown area.temperature 1
execute if score damagecooldown area.temperature matches 20.. run function map:area/lab/temperature/damage
