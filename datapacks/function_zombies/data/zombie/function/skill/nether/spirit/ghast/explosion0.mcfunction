particle gust_emitter_large ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]

function zombie:skill/nether/spirit/ghast/particle

playsound entity.generic.explode record @a ~ ~ ~ 2 1
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 2 0
playsound block.respawn_anchor.deplete record @a ~ ~ ~ 2 0

execute if entity @a[scores={stat.player=1},distance=..3] as @a[scores={stat.player=1},distance=..3] at @s run function zombie:skill/nether/spirit/ghast/damage0

kill @s
