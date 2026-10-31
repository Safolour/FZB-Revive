
$scoreboard players operation cooldown0 weapon.state = cooldown weapon.melee.$(melee)
scoreboard players operation cooldown1 weapon.state = cooldown0 weapon.state
scoreboard players operation cooldown0 weapon.state /= 20 number
scoreboard players operation cooldown1 weapon.state %= 20 number
scoreboard players operation cooldown1 weapon.state *= 5 number
$scoreboard players operation affect_enemy weapon.state = affect_enemy weapon.melee.$(melee)
$execute store result storage weapon root.block int 1 run scoreboard players get block weapon.melee.$(melee)
$execute store result storage weapon root.damage int 1 run scoreboard players get damage weapon.melee.$(melee)
execute store result storage weapon root.affect_enemy int 1 run scoreboard players get affect_enemy weapon.state
execute store result storage weapon root.affect_enemy0 int 1 run scoreboard players get affect_enemy weapon.state
execute store result storage weapon root.cooldown0 int 1 run scoreboard players get cooldown0 weapon.state
execute store result storage weapon root.cooldown1 int 1 run scoreboard players get cooldown1 weapon.state


function weapon:melee/_get_item/replace/melee_state0 with storage weapon root
$data modify storage weapon root.last.melee set from storage weapon upgrade.$(melee)
function weapon:melee/_get_item/replace/melee_state1 with storage weapon root.last