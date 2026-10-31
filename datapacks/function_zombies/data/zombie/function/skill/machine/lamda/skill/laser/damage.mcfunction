
effect give @s darkness 2 0 false
effect give @s slowness 2 2 false
effect give @s nausea 2 0 false
effect give @s wither 2 0 false

execute store result storage zombie skill.damage double 0.1 run scoreboard players get lamda.laser zombie.skill.damage
function zombie:skill/machine/lamda/skill/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.lamda}]
