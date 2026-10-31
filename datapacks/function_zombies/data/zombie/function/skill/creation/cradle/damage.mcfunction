
execute store result storage zombie skill.damage double 0.1 run scoreboard players get creation.cradle zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.using,with:[{translate:zb.zombie.name.creation.cradle},{translate:zb.zombie.name.deadeye}]}]
