
execute unless score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 5 5 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 5 5 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 5 2 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion ~ ~ ~ 0 0 0 5 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle end_rod ~ ~ ~ 0 0 0 0.5 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~ ~ 0 0 0 0.5 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~ ~ 0 0 0 0.5 50 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle large_smoke ~ ~ ~ 0 0 0 0.5 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~ ~ 0 0 0 0.5 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~ ~ 0 0 0 0.5 50 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle soul_fire_flame ~ ~ ~ 0 0 0 0.5 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul_fire_flame ~ ~ ~ 0 0 0 0.5 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul_fire_flame ~ ~ ~ 0 0 0 0.5 50 force @a[scores={particle=1}]

playsound item.totem.use record @a ~ ~ ~ 3 1.4

