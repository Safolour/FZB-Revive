
execute store result storage zombie skill.damage double 0.1 run scoreboard players get aircraft.obviate.explosion zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.obviate,color:dark_purple}]
