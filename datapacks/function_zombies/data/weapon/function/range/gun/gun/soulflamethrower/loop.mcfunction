tp @s ~ ~ ~ facing ^ ^ ^1
scoreboard players operation @s weapon.gun_color = color weapon.range
scoreboard players operation @s weapon.use = uuid weapon.gun_soulflamethrower
scoreboard players set range weapon.range 0
scoreboard players operation max_range weapon.range = range weapon.gun_soulflamethrower
scoreboard players set penetrable weapon.state 1
scoreboard players set reflection weapon.state 0
scoreboard players set #spread_x weapon.state 750
scoreboard players set #spread_y weapon.state 750
function weapon:range/gun/spread
function weapon:range/gun/loop/0
