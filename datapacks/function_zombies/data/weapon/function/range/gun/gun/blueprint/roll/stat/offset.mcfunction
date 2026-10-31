# offset：lore 17，两个分量各 round(49×(100−p)/100)（0..49，越小越好），线百分比 = ceil((p1+p2)/2)
function weapon:range/gun/gun/blueprint/roll/r
scoreboard players operation #bp_p1 weapon.state = #bp_r weapon.state
function weapon:range/gun/gun/blueprint/roll/r
scoreboard players operation #bp_p2 weapon.state = #bp_r weapon.state
scoreboard players set #bp_x weapon.state 100
scoreboard players operation #bp_x weapon.state -= #bp_p1 weapon.state
scoreboard players set #bp_k weapon.state 49
scoreboard players operation #bp_x weapon.state *= #bp_k weapon.state
scoreboard players add #bp_x weapon.state 50
scoreboard players set #bp_k weapon.state 100
scoreboard players operation #bp_x weapon.state /= #bp_k weapon.state
scoreboard players set #bp_y weapon.state 100
scoreboard players operation #bp_y weapon.state -= #bp_p2 weapon.state
scoreboard players set #bp_k weapon.state 49
scoreboard players operation #bp_y weapon.state *= #bp_k weapon.state
scoreboard players add #bp_y weapon.state 50
scoreboard players set #bp_k weapon.state 100
scoreboard players operation #bp_y weapon.state /= #bp_k weapon.state
scoreboard players operation #bp_r weapon.state = #bp_p1 weapon.state
scoreboard players operation #bp_r weapon.state += #bp_p2 weapon.state
scoreboard players add #bp_r weapon.state 1
scoreboard players operation #bp_r weapon.state /= 2 number
execute store result storage weapon bp.comp."minecraft:custom_data".stat.offset_x int 1 run scoreboard players get #bp_x weapon.state
execute store result storage weapon bp.comp."minecraft:custom_data".stat.offset_y int 1 run scoreboard players get #bp_y weapon.state
# 显示角度（0.1° 为单位）= (x+y)/2
scoreboard players operation #bp_f weapon.state = #bp_x weapon.state
scoreboard players operation #bp_f weapon.state += #bp_y weapon.state
scoreboard players operation #bp_f weapon.state /= 2 number
function weapon:range/gun/gun/blueprint/fmt/tenths
data modify storage weapon bp.line.n set value 17
function weapon:range/gun/gun/blueprint/roll/line
