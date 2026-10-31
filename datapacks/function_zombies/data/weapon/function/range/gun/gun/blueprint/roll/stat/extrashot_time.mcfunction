# extrashot_time：lore 14，1..10，越小越好
function weapon:range/gun/gun/blueprint/roll/r
scoreboard players set #bp_v weapon.state 100
scoreboard players operation #bp_v weapon.state -= #bp_r weapon.state
scoreboard players set #bp_k weapon.state 9
scoreboard players operation #bp_v weapon.state *= #bp_k weapon.state
scoreboard players operation #bp_v weapon.state /= 100 number
scoreboard players add #bp_v weapon.state 1
execute store result storage weapon bp.comp."minecraft:custom_data".stat.extrashot_time int 1 run scoreboard players get #bp_v weapon.state
scoreboard players operation #bp_f weapon.state = #bp_v weapon.state
function weapon:range/gun/gun/blueprint/fmt/int
data modify storage weapon bp.line.n set value 14
function weapon:range/gun/gun/blueprint/roll/line
