
effect give @s blindness 1 0 true
effect give @s slowness 1 1 false

execute store result storage zombie skill.damage double 0.1 run scoreboard players get creation.electrification zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.using,with:[{translate:zb.zombie.name.creation.electrification},{translate:zb.zombie.name.electric,color:"#fff6bb"}]}]
