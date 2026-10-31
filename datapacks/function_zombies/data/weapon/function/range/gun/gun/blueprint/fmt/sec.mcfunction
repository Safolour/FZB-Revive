# 刻 → 秒，两位小数
scoreboard players operation #bp_f weapon.state *= 5 number
scoreboard players operation #bp_i weapon.state = #bp_f weapon.state
scoreboard players operation #bp_i weapon.state /= 100 number
scoreboard players operation #bp_j weapon.state = #bp_f weapon.state
scoreboard players operation #bp_j weapon.state %= 100 number
execute store result storage weapon bp.fmt.i int 1 run scoreboard players get #bp_i weapon.state
execute store result storage weapon bp.fmt.j int 1 run scoreboard players get #bp_j weapon.state
execute if score #bp_j weapon.state matches 10.. run function weapon:range/gun/gun/blueprint/fmt/sec0 with storage weapon bp.fmt
execute if score #bp_j weapon.state matches ..9 run function weapon:range/gun/gun/blueprint/fmt/sec1 with storage weapon bp.fmt
data remove storage weapon bp.fmt
