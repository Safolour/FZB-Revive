
execute as @a[scores={stat.player=1},distance=..2] at @s run function zombie:skill/electric/aircraft/obviate/death/damage

playsound block.end_gateway.spawn record @a ~ ~ ~ 1.5 1
playsound entity.iron_golem.death record @a ~ ~ ~ 1.5 1.4

particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ~ ~ ~ 0 0 0 0 2 force @a[scores={particle=0}]
particle end_rod ~ ~ ~ 0 0 0 0.1 10 force @a[scores={particle=0}]

function zombie:skill/electric/aircraft/obviate/death/particle

function system:death
