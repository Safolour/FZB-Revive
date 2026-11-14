function zombie:skill/nether/ashes/ash_wizard/missile/tick
#playsound entity.cat.hiss record @a ~ ~ ~ 0.2 1
execute unless score round game.state matches 40 run particle ash ~ ~1.5 ~ 1 1 1 0.1 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ash ~ ~1.5 ~ 1 1 1 0.1 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ash ~ ~1.5 ~ 1 1 1 0.1 1 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle ash ~ ~1.5 ~ 1 1 1 0.1 1 force @a[scores={particle=1}]
