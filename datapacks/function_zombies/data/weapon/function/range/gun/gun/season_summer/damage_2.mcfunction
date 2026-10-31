scoreboard players operation punch weapon.state = punch weapon.gun_season_summer
scoreboard players operation damage weapon.state = damage weapon.gun_season_summer
scoreboard players operation gold weapon.state = gold weapon.gun_season_summer
execute if entity @s[tag=firezb] run scoreboard players operation damage weapon.state /= 2 number
data merge entity @s {Fire:20,HasVisualFire:1b}
function weapon:range/gun/damage/damage
tag @s remove hit
