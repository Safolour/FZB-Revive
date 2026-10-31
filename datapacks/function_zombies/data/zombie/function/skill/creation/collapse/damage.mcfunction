
particle lava ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]

#function bs.health:set/health {points:-2}
execute store result storage zombie skill.damage double 0.1 run scoreboard players get creation.collapse.laser zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.using,with:[{translate:zb.zombie.name.creation.collapse},{translate:zb.zombie.name.deadeye}]}]
