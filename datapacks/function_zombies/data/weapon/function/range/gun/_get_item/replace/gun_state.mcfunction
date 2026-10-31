
$scoreboard players operation damage0 weapon.state = damage weapon.gun_$(gun)
$scoreboard players operation damage1 weapon.state = damage weapon.gun_$(gun)
scoreboard players operation damage0 weapon.state /= 10 number
scoreboard players operation damage1 weapon.state %= 10 number

$scoreboard players operation rate0 weapon.state = rate weapon.gun_$(gun)
$scoreboard players operation rate1 weapon.state = rate weapon.gun_$(gun)
scoreboard players operation rate0 weapon.state /= 20 number
scoreboard players operation rate1 weapon.state %= 20 number
scoreboard players operation rate1 weapon.state *= 5 number

$scoreboard players operation reload0 weapon.state = reload weapon.gun_$(gun)
$scoreboard players operation reload1 weapon.state = reload weapon.gun_$(gun)
scoreboard players operation reload0 weapon.state /= 20 number
scoreboard players operation reload1 weapon.state %= 20 number
scoreboard players operation reload1 weapon.state *= 5 number

$scoreboard players operation bullet weapon.state = extrashot weapon.gun_$(gun)
scoreboard players add bullet weapon.state 1

$scoreboard players operation ammo weapon.state = ammo weapon.gun_$(gun)
$scoreboard players operation clip_ammo weapon.state = clip_ammo weapon.gun_$(gun)
$scoreboard players operation range weapon.state = range weapon.gun_$(gun)

execute store result storage weapon root.damage0 int 1 run scoreboard players get damage0 weapon.state
execute store result storage weapon root.damage1 int 1 run scoreboard players get damage1 weapon.state
execute store result storage weapon root.ammo int 1 run scoreboard players get ammo weapon.state
execute store result storage weapon root.clip_ammo int 1 run scoreboard players get clip_ammo weapon.state
execute store result storage weapon root.rate0 int 1 run scoreboard players get rate0 weapon.state
execute store result storage weapon root.rate1 int 1 run scoreboard players get rate1 weapon.state
execute store result storage weapon root.reload0 int 1 run scoreboard players get reload0 weapon.state
execute store result storage weapon root.reload1 int 1 run scoreboard players get reload1 weapon.state
execute store result storage weapon root.bullet int 1 run scoreboard players get bullet weapon.state
execute store result storage weapon root.range int 0.5 run scoreboard players get range weapon.state

function weapon:range/gun/_get_item/replace/gun_state0 with storage weapon root
$data modify storage weapon root.last.gun set from storage weapon upgrade.$(gun)
function weapon:range/gun/_get_item/replace/gun_state1 with storage weapon root.last