# 温度（temperature0）变化后调用：显示器、侧边栏、档位效果、播报
function map:area/lab/temperature/display/update
execute if data storage map:r40 p5_closed run return run function map:area/lab/temperature/suspend_effects

# 档位：0 = 0-20 正常 / 1 = 21-40 枪伤 -30% / 2 = 41-60 生命值不自然恢复 / 3 = 61-80 枪伤 -60% / 4 = 81-99 持续受伤 / 5 = 100 死亡
# 效果向上累加（41°C 以上仍然 -30% 枪伤，61°C 起换成 -60%）
scoreboard players set #tier area.temperature 0
execute if score temperature0 area.temperature matches 21.. run scoreboard players set #tier area.temperature 1
execute if score temperature0 area.temperature matches 41.. run scoreboard players set #tier area.temperature 2
execute if score temperature0 area.temperature matches 61.. run scoreboard players set #tier area.temperature 3
execute if score temperature0 area.temperature matches 81.. run scoreboard players set #tier area.temperature 4
execute if score temperature0 area.temperature matches 100.. run scoreboard players set #tier area.temperature 5

# 枪伤保留百分比，map:perk/hit/damage_extra 里乘上去
scoreboard players set #gun_keep area.temperature 100
execute if score #tier area.temperature matches 1.. run scoreboard players set #gun_keep area.temperature 70
execute if score #tier area.temperature matches 3.. run scoreboard players set #gun_keep area.temperature 40

# 升到新档位时播报一次（降下来再升上去会再播报，和录像一致）
execute if score #tier area.temperature > #tier0 area.temperature run function map:area/lab/temperature/tellraw/tier
scoreboard players operation #tier0 area.temperature = #tier area.temperature
execute if score temperature0 area.temperature matches ..80 run scoreboard players set damagecooldown area.temperature 0

# 侧边栏回合行：第 21-40 回合后面带温度
execute unless score scoreboard game.state matches 2 run function map:game/scoreboard/round
