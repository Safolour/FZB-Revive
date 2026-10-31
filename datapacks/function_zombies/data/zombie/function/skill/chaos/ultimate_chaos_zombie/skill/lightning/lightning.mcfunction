summon lightning_bolt
summon lightning_bolt
summon lightning_bolt

function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/0

scoreboard players reset @s zombie.chaos.ultimate_chaos_zombie.skill_lightningrange

particle flash ~ ~ ~ 0 0 0 0 2 force @a[scores={particle=0}]
particle explosion ~ ~ ~ 0 0 0 10 10 force @a[scores={particle=0}]
particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0}]

playsound entity.lightning_bolt.impact record @a ~ ~ ~ 2 2
playsound entity.lightning_bolt.impact record @a ~ ~ ~ 2 1
playsound entity.lightning_bolt.impact record @a ~ ~ ~ 2 0
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 2 2
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 2 1
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 2 0
playsound block.end_gateway.spawn record @a ~ ~ ~ 2 0
playsound entity.wither.death record @a ~ ~ ~ 2 2
