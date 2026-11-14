
execute unless score round game.state matches 40 run particle sculk_soul ~ ~ ~ -0.1 1.5 0.49 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle sculk_soul ~ ~ ~ -0.1 1.5 0.49 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle sculk_soul ~ ~ ~ -0.1 1.5 0.49 0.1 0 force @a[scores={particle=1}]

execute unless score round game.state matches 40 run particle sculk_soul ~ ~ ~ 0.0 1.5 -0.5 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle sculk_soul ~ ~ ~ 0.0 1.5 -0.5 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle sculk_soul ~ ~ ~ 0.0 1.5 -0.5 0.1 0 force @a[scores={particle=1}]

execute unless score round game.state matches 40 run particle sculk_soul ~ ~1 ~ -0.1 1.5 0.49 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle sculk_soul ~ ~1 ~ -0.1 1.5 0.49 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle sculk_soul ~ ~1 ~ -0.1 1.5 0.49 0.1 0 force @a[scores={particle=1}]

execute unless score round game.state matches 40 run particle sculk_soul ~ ~1 ~ 0.0 1.5 -0.5 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle sculk_soul ~ ~1 ~ 0.0 1.5 -0.5 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle sculk_soul ~ ~1 ~ 0.0 1.5 -0.5 0.1 0 force @a[scores={particle=1}]
