
$scoreboard players operation cooldown0_last weapon.state = cooldown weapon.melee.$(melee)
scoreboard players operation cooldown1_last weapon.state = cooldown0_last weapon.state
scoreboard players operation cooldown0_last weapon.state /= 20 number
scoreboard players operation cooldown1_last weapon.state %= 20 number
scoreboard players operation cooldown1_last weapon.state *= 5 number
$scoreboard players operation affect_enemy_last weapon.state = affect_enemy weapon.melee.$(melee)
$execute store result storage weapon root.block_last int 1 run scoreboard players get block weapon.melee.$(melee)
$execute store result storage weapon root.damage_last int 1 run scoreboard players get damage weapon.melee.$(melee)
execute store result storage weapon root.affect_enemy_last int 1 run scoreboard players get affect_enemy_last weapon.state
execute store result storage weapon root.affect_enemy0_last int 1 run scoreboard players get affect_enemy_last weapon.state
execute store result storage weapon root.cooldown0_last int 1 run scoreboard players get cooldown0_last weapon.state
execute store result storage weapon root.cooldown1_last int 1 run scoreboard players get cooldown1_last weapon.state

function weapon:melee/_get_item/replace/melee_state2 with storage weapon root