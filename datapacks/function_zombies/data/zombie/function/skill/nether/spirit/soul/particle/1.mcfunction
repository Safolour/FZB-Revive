
execute unless score round game.state matches 40 run particle sculk_soul ~ ~ ~ -0.2 1.5 -0.46 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle sculk_soul ~ ~ ~ -0.2 1.5 -0.46 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle sculk_soul ~ ~ ~ -0.2 1.5 -0.46 0.1 0 force @a[scores={particle=1}]

execute unless score round game.state matches 40 run particle sculk_soul ~ ~ ~ 0.29 1.5 0.4 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle sculk_soul ~ ~ ~ 0.29 1.5 0.4 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle sculk_soul ~ ~ ~ 0.29 1.5 0.4 0.1 0 force @a[scores={particle=1}]


execute unless score round game.state matches 40 run particle sculk_soul ~ ~1 ~ -0.2 1.5 -0.46 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle sculk_soul ~ ~1 ~ -0.2 1.5 -0.46 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle sculk_soul ~ ~1 ~ -0.2 1.5 -0.46 0.1 0 force @a[scores={particle=1}]

execute unless score round game.state matches 40 run particle sculk_soul ~ ~1 ~ 0.29 1.5 0.4 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle sculk_soul ~ ~1 ~ 0.29 1.5 0.4 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle sculk_soul ~ ~1 ~ 0.29 1.5 0.4 0.1 0 force @a[scores={particle=1}]
