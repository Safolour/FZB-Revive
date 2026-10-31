# 一位小数（可以是负数）：#bp_f 是 0.1 为单位
scoreboard players set #bp_neg weapon.state 0
execute if score #bp_f weapon.state matches ..-1 run scoreboard players set #bp_neg weapon.state 1
execute if score #bp_f weapon.state matches ..-1 run scoreboard players operation #bp_f weapon.state *= -1 number
scoreboard players operation #bp_i weapon.state = #bp_f weapon.state
scoreboard players operation #bp_i weapon.state /= 10 number
scoreboard players operation #bp_j weapon.state = #bp_f weapon.state
scoreboard players operation #bp_j weapon.state %= 10 number
execute store result storage weapon bp.fmt.i int 1 run scoreboard players get #bp_i weapon.state
execute store result storage weapon bp.fmt.j int 1 run scoreboard players get #bp_j weapon.state
data modify storage weapon bp.fmt.s set value ""
execute if score #bp_neg weapon.state matches 1 run data modify storage weapon bp.fmt.s set value "-"
function weapon:range/gun/gun/blueprint/fmt/tenths0 with storage weapon bp.fmt
data remove storage weapon bp.fmt
