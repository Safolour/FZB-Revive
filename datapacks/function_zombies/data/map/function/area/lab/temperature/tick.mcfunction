execute if data storage map:r40 p5_closed run return run function map:area/lab/temperature/suspend_effects
# PL（type map 4）第 21-40 回合温度持续升高；别的地图、别的回合温度恒为 0
execute unless score type map matches 4 run return run function map:area/lab/temperature/off
execute unless score round game.state matches 21..40 run return run function map:area/lab/temperature/off

# 累加器单位：100000 = 1°C。每 tick 基础 +180，每只敌人 +33，火焰敌人再 +23（玩家受伤 +600，见 player_take_damage）
# 录像实测（replay分析/fit_temp.py，271 段）：升温速度 ≈ 0.037 + 0.0067×场上敌人数 °C/s，烈焰人/凋灵骷髅约是普通怪的 1.8 倍
#   换算：180×20/100000 = 0.036 °C/s，33×20/100000 = 0.0066 °C/s/只
execute unless score round game.state matches 40 run scoreboard players set #r40_timer area.temperature 0
execute unless score round game.state matches 40 run scoreboard players add temperature area.temperature 180
execute unless score round game.state matches 40 store result score mob area.temperature run execute if entity @e[tag=mob,tag=!setting.dummy]
execute unless score round game.state matches 40 run scoreboard players operation mob area.temperature *= 33 number
execute unless score round game.state matches 40 run scoreboard players operation temperature area.temperature += mob area.temperature
execute unless score round game.state matches 40 store result score fire area.temperature run execute if entity @e[tag=mob.flame]
execute unless score round game.state matches 40 run scoreboard players operation fire area.temperature *= 23 number
execute unless score round game.state matches 40 run scoreboard players operation temperature area.temperature += fire area.temperature
execute unless score round game.state matches 40 if score temperature area.temperature matches 100000.. run function map:area/lab/temperature/rise

# R40 P1-P4: 300 ticks per degree, independent of mob count and player damage.
execute if score round game.state matches 40 unless data storage map:r40 p5_closed run scoreboard players add #r40_timer area.temperature 1
execute if score round game.state matches 40 unless data storage map:r40 p5 if score #r40_timer area.temperature matches 300.. run function map:area/lab/temperature/r40_rise
execute if score round game.state matches 40 if data storage map:r40 p5 if score #r40_timer area.temperature matches 12.. run function map:area/lab/temperature/r40_rise

# 81-99°C 每秒受伤，100°C 热死
execute if score temperature0 area.temperature matches 81.. run scoreboard players add damagecooldown area.temperature 1
execute if score damagecooldown area.temperature matches 20.. run function map:area/lab/temperature/damage
