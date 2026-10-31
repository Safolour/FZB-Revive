
$scoreboard players operation xp_point weapon.state = @s weapon.gun_$(gun)_rate
scoreboard players operation xp_point weapon.state *= 4022931 number
$scoreboard players operation xp_point weapon.state /= rate weapon.gun_$(gun)
scoreboard players operation xp_point weapon.state -= 4022931 number
scoreboard players operation xp_point weapon.state *= -1 number
execute store result storage weapon root.xp_point int 1 run scoreboard players get xp_point weapon.state
$execute store result storage weapon root.lv float 1 run scoreboard players get @s weapon.gun_$(gun)_ammo
function weapon:range/gun/slot/xp_point0 with storage weapon root
data remove storage weapon root

#4022931