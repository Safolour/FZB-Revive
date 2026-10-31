
$scoreboard players operation damage weapon.state = damage weapon.range.skill.$(skill)
$scoreboard players operation heal_self weapon.state = heal_self weapon.range.skill.$(skill)
$scoreboard players operation heal_other weapon.state = heal_other weapon.range.skill.$(skill)
scoreboard players operation heal_self weapon.state /= 2 number
scoreboard players operation heal_other weapon.state /= 2 number
scoreboard players operation damage weapon.state /= 10 number
execute store result storage weapon root.damage int 1 run scoreboard players get damage weapon.state
execute store result storage weapon root.heal_self int 1 run scoreboard players get heal_self weapon.state
execute store result storage weapon root.heal_other int 1 run scoreboard players get heal_other weapon.state
function weapon:range/skill/_get_item/replace/skill_state0 with storage weapon root