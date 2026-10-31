particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force @a[scores={particle=0}]
particle lava ~ ~1 ~ 0.3 0.3 0.3 0 10 force @a[scores={particle=0}]

function zombie:skill/nether/spirit/ghast/particle

playsound entity.generic.explode record @a ~ ~ ~ 2 1
playsound entity.ghast.death record @a ~ ~ ~ 1 1

execute if entity @a[scores={stat.player=1},distance=..3] as @a[scores={stat.player=1},distance=..3] run function zombie:skill/nether/spirit/ghast/damage

function system:death
