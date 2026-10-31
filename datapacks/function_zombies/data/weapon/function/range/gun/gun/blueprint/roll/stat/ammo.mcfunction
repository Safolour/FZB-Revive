# ammo：lore 5，1..100，越大越好
function weapon:range/gun/gun/blueprint/roll/r
scoreboard players operation #bp_v weapon.state = #bp_r weapon.state
scoreboard players operation #bp_v weapon.state *= 10 number
execute store result storage weapon bp.comp."minecraft:custom_data".stat.ammo int 1 run scoreboard players get #bp_v weapon.state
scoreboard players operation #bp_f weapon.state = #bp_v weapon.state
function weapon:range/gun/gun/blueprint/fmt/int
data modify storage weapon bp.line.n set value 5
function weapon:range/gun/gun/blueprint/roll/line
