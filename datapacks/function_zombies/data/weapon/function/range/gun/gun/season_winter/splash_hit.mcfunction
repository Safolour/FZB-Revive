scoreboard players operation @s weapon.gun_season_winter_time = time weapon.gun_season_winter_time
scoreboard players set punch weapon.state 0
scoreboard players operation damage weapon.state = damage weapon.gun_season_winter
scoreboard players operation damage weapon.state /= 2 number
execute if score damage weapon.state matches ..0 run scoreboard players set damage weapon.state 1
scoreboard players operation gold weapon.state = gold weapon.gun_season_winter
function weapon:range/gun/damage/damage
