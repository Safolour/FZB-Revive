scoreboard players operation #spread_lo weapon.state = #spread_y weapon.state
scoreboard players operation #spread_lo weapon.state *= -1 number
execute store result storage weapon spread.lo int 1 run scoreboard players get #spread_lo weapon.state
execute store result storage weapon spread.hi int 1 run scoreboard players get #spread_y weapon.state
function weapon:range/gun/spread_roll with storage weapon spread
execute store result score #spread_r weapon.state run data get entity @s Rotation[1] 100
scoreboard players operation #spread_r weapon.state += #spread_d weapon.state
execute if score #spread_r weapon.state matches 9001.. run scoreboard players set #spread_r weapon.state 9000
execute if score #spread_r weapon.state matches ..-9001 run scoreboard players set #spread_r weapon.state -9000
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #spread_r weapon.state
