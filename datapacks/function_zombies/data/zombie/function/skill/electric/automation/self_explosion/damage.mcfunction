execute store result storage zombie skill.damage double 0.1 run scoreboard players get electric.automation.selfexplosion zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.automation,color:red}]
