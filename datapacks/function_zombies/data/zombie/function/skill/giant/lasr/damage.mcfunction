#particle lava ~ ~1 ~ 0 0 0 0 1 force @a
#playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 1

execute store result storage zombie skill.damage double 0.1 run scoreboard players get lasrgiant.laser zombie.skill.damage
function zombie:skill/damage with storage zombie skill
execute if entity @e[type=zombie,tag=skill.mutategiant] run return run data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.using,with:[{translate:zb.zombie.name.giant.mutate,color:dark_red},{translate:zb.zombie.name.giantdeadeye}]}]
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.using,with:[{translate:zb.zombie.name.giant.lasr},{translate:zb.zombie.name.giantdeadeye}]}]
