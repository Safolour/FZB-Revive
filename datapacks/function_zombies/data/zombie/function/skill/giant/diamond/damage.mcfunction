execute store result storage zombie skill.damage double 0.1 run scoreboard players get diamondgiant.sword zombie.skill.damage
function zombie:skill/damage with storage zombie skill

execute if entity @e[type=marker,tag=skill.mutategiant] run return run data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.using,with:[{translate:zb.zombie.name.giant.mutate,color:dark_red},{translate:zb.zombie.name.giant.diamond.sword}]}]
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.using,with:[{translate:zb.zombie.name.giant.diamond,color:aqua},{translate:zb.zombie.name.giant.diamond.sword}]}]
