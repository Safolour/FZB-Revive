execute unless score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.1 5 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.1 5 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.1 2 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flame ~ ~1 ~ 0 0 0 0.1 1 force @a[scores={particle=1}]
