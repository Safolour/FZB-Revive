scoreboard players operation #spread_lo weapon.state = #spread_y weapon.state
scoreboard players operation #spread_lo weapon.state *= -1 number
execute store result storage weapon spread.lo int 1 run scoreboard players get #spread_lo weapon.state
execute store result storage weapon spread.hi int 1 run scoreboard players get #spread_y weapon.state
function weapon:range/gun/spread_roll with storage weapon spread
scoreboard players operation #bp_dy weapon.state = #spread_d weapon.state
