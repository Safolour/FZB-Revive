effect give @s slowness 2 2 false
effect give @s blindness 1 0 true

execute store result storage zombie skill.damage double 0.1 run scoreboard players get aircraft.disperse.missile zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.disperse,color:dark_purple}]
