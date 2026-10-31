execute if entity @n[type=marker,tag=skill.creeper.motion,distance=..5] store result storage zombie skill.damage double 0.05 run scoreboard players get lightningcreeper zombie.skill.damage
execute if entity @n[type=marker,tag=skill.creeper.motion,distance=..4] store result storage zombie skill.damage double 0.0625 run scoreboard players get lightningcreeper zombie.skill.damage
execute if entity @n[type=marker,tag=skill.creeper.motion,distance=..3] store result storage zombie skill.damage double 0.075 run scoreboard players get lightningcreeper zombie.skill.damage
execute if entity @n[type=marker,tag=skill.creeper.motion,distance=..2] store result storage zombie skill.damage double 0.0875 run scoreboard players get lightningcreeper zombie.skill.damage
execute if entity @n[type=marker,tag=skill.creeper.motion,distance=..1] store result storage zombie skill.damage double 0.1 run scoreboard players get lightningcreeper zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.lightningcreeper,color:aqua}]

function zombie:skill/creeper/creeper/motion
