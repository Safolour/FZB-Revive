execute on target run tag @s add target
execute unless entity @a[tag=target,scores={stat.player=1},distance=..20] run return run tag @a[tag=target] remove target

particle end_rod ~ ~1 ~ 0 0 0 0.1 30 force @a[scores={particle=0}]
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0..1}]

playsound entity.zombie_villager.cure record @a ~ ~ ~ 1.5 1.4
playsound minecraft:entity.warden.sonic_boom record @a ~ ~ ~ 1.5 0
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 1.5 2
playsound item.totem.use record @a ~ ~ ~ 1.5 0

tag @a[tag=target] remove target

function zombie:skill/electric/aircraft/disperse/missile/init
