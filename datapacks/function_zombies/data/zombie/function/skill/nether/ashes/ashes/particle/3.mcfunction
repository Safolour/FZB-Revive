
execute unless score round game.state matches 40 run particle large_smoke ~ ~ ~ -0.48 1.5 -0.15 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~ ~ -0.48 1.5 -0.15 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle large_smoke ~ ~ ~ -0.48 1.5 -0.15 0.1 0 force @a[scores={particle=1}]

execute unless score round game.state matches 40 run particle large_smoke ~ ~ ~ 0.5 1.5 0.05 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~ ~ 0.5 1.5 0.05 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle large_smoke ~ ~ ~ 0.5 1.5 0.05 0.1 0 force @a[scores={particle=1}]

execute unless score round game.state matches 40 run particle large_smoke ~ ~1 ~ -0.48 1.5 -0.15 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~1 ~ -0.48 1.5 -0.15 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle large_smoke ~ ~1 ~ -0.48 1.5 -0.15 0.1 0 force @a[scores={particle=1}]

execute unless score round game.state matches 40 run particle large_smoke ~ ~1 ~ 0.5 1.5 0.05 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~1 ~ 0.5 1.5 0.05 0.1 0 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle large_smoke ~ ~1 ~ 0.5 1.5 0.05 0.1 0 force @a[scores={particle=1}]
