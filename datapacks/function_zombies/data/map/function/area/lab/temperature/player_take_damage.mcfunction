execute unless score type map matches 4 run return 0
execute unless score round game.state matches 21..40 run return 0
execute if score round game.state matches 40 run return 0

# 玩家每次受伤 +600（= 0.006°C，单位见 tick）
scoreboard players add temperature area.temperature 600
