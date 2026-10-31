# damage：lore 4，10..100，越大越好
function weapon:range/gun/gun/blueprint/roll/r
scoreboard players operation #bp_v weapon.state = #bp_r weapon.state
scoreboard players set #bp_k weapon.state 90
scoreboard players operation #bp_v weapon.state *= #bp_k weapon.state
scoreboard players operation #bp_v weapon.state /= 100 number
scoreboard players add #bp_v weapon.state 10
execute store result storage weapon bp.comp."minecraft:custom_data".stat.damage int 1 run scoreboard players get #bp_v weapon.state
scoreboard players operation #bp_f weapon.state = #bp_v weapon.state
function weapon:range/gun/gun/blueprint/fmt/tenths
data modify storage weapon bp.line.n set value 4
function weapon:range/gun/gun/blueprint/roll/line
