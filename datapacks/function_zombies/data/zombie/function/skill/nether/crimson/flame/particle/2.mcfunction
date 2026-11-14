
execute unless score round game.state matches 40 run particle flame ~ ~ ~ -0.37 1.5 -0.33 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~ ~ -0.37 1.5 -0.33 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flame ~ ~ ~ -0.37 1.5 -0.33 0.1 0 force @a[scores={particle=1}]

execute unless score round game.state matches 40 run particle flame ~ ~ ~ 0.43 1.5 0.25 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~ ~ 0.43 1.5 0.25 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flame ~ ~ ~ 0.43 1.5 0.25 0.1 0 force @a[scores={particle=1}]

execute unless score round game.state matches 40 run particle flame ~ ~1 ~ -0.37 1.5 -0.33 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~1 ~ -0.37 1.5 -0.33 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flame ~ ~1 ~ -0.37 1.5 -0.33 0.1 0 force @a[scores={particle=1}]

execute unless score round game.state matches 40 run particle flame ~ ~1 ~ 0.43 1.5 0.25 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~1 ~ 0.43 1.5 0.25 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flame ~ ~1 ~ 0.43 1.5 0.25 0.1 0 force @a[scores={particle=1}]
