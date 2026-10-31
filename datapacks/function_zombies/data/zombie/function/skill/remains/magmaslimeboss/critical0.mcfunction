execute as @a[scores={stat.player=1},distance=..100] at @s run function zombie:skill/remains/magmaslimeboss/damage

summon lightning_bolt
summon lightning_bolt
summon lightning_bolt

particle gust_emitter_large ~ ~ ~ 10 10 10 0 100 force @a[scores={particle=0}]
particle dripping_lava ~ ~ ~ 10 10 10 0 5000 force @a[scores={particle=0}]
particle end_rod ~ ~ ~ 10 10 10 0 5000 force @a[scores={particle=0}]

playsound entity.wither.death record @a ~ ~ ~ 10 2
playsound entity.wither.death record @a ~ ~ ~ 10 1
playsound entity.wither.death record @a ~ ~ ~ 10 0
playsound item.trident.thunder record @a ~ ~ ~ 10 0
playsound item.trident.thunder record @a ~ ~ ~ 10 0

function system:death
