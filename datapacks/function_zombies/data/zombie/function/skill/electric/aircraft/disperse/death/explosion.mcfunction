
execute as @a[scores={stat.player=1},distance=..5] at @s run function zombie:skill/electric/aircraft/disperse/death/damage

playsound block.end_gateway.spawn record @a ~ ~ ~ 1.5 1
playsound entity.iron_golem.death record @a ~ ~ ~ 1.5 1.4

playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 1.5 1
playsound block.end_gateway.spawn record @a ~ ~ ~ 1.5 0

particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ~ ~ ~ 0 0 0 3 5 force @a[scores={particle=0}]
particle end_rod ~ ~ ~ 0 0 0 0.3 20 force @a[scores={particle=0}]

function zombie:skill/electric/aircraft/disperse/death/particle

function system:death
