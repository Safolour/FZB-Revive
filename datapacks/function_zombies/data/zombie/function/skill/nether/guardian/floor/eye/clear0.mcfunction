execute unless score round game.state matches 40 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 8 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 8 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 8 5 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]

playsound block.end_portal.spawn record @a ~ ~ ~ 10 0

summon lightning_bolt ~ ~ ~
summon lightning_bolt ~ ~ ~
