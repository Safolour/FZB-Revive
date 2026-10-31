
$scoreboard players operation damage0_last weapon.state = damage weapon.gun_$(gun)
$scoreboard players operation damage1_last weapon.state = damage weapon.gun_$(gun)
scoreboard players operation damage0_last weapon.state /= 10 number
scoreboard players operation damage1_last weapon.state %= 10 number

$scoreboard players operation rate0_last weapon.state = rate weapon.gun_$(gun)
$scoreboard players operation rate1_last weapon.state = rate weapon.gun_$(gun)
scoreboard players operation rate1_last weapon.state %= 20 number
scoreboard players operation rate0_last weapon.state /= 20 number
scoreboard players operation rate1_last weapon.state *= 5 number

$scoreboard players operation reload0_last weapon.state = reload weapon.gun_$(gun)
$scoreboard players operation reload1_last weapon.state = reload weapon.gun_$(gun)
scoreboard players operation reload1_last weapon.state %= 20 number
scoreboard players operation reload0_last weapon.state /= 20 number
scoreboard players operation reload1_last weapon.state *= 5 number

$scoreboard players operation bullet_last weapon.state = extrashot weapon.gun_$(gun)
scoreboard players add bullet_last weapon.state 1

$scoreboard players operation ammo_last weapon.state = ammo weapon.gun_$(gun)
$scoreboard players operation clip_ammo_last weapon.state = clip_ammo weapon.gun_$(gun)
$scoreboard players operation range_last weapon.state = range weapon.gun_$(gun)

execute store result storage weapon root.damage0_last int 1 run scoreboard players get damage0_last weapon.state
execute store result storage weapon root.damage1_last int 1 run scoreboard players get damage1_last weapon.state
execute store result storage weapon root.ammo_last int 1 run scoreboard players get ammo_last weapon.state
execute store result storage weapon root.clip_ammo_last int 1 run scoreboard players get clip_ammo_last weapon.state
execute store result storage weapon root.rate0_last int 1 run scoreboard players get rate0_last weapon.state
execute store result storage weapon root.rate1_last int 1 run scoreboard players get rate1_last weapon.state
execute store result storage weapon root.reload0_last int 1 run scoreboard players get reload0_last weapon.state
execute store result storage weapon root.reload1_last int 1 run scoreboard players get reload1_last weapon.state
execute store result storage weapon root.bullet_last int 1 run scoreboard players get bullet_last weapon.state
execute store result storage weapon root.range_last int 0.5 run scoreboard players get range_last weapon.state

function weapon:range/gun/_get_item/replace/gun_state2 with storage weapon root