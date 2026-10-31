effect give @s slowness 3 2 false
particle electric_spark ~ ~1 ~ 0.2 0.2 0.2 0.2 10 force @a[scores={particle=0}]

execute store result storage zombie skill.damage double 0.1 run scoreboard players get lamda.hit_ground zombie.skill.damage
function zombie:skill/machine/lamda/skill/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.lamda}]
