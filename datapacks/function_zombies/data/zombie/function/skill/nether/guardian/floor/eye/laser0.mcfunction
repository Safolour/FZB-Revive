execute unless score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle flame ~ ~ ~ 0 0 0 0.2 50 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~ ~ 0 0 0 0.2 50 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~ ~ 0 0 0 0.2 25 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle lava ~ ~ ~ 0 0 0 0 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle lava ~ ~ ~ 0 0 0 0 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle lava ~ ~ ~ 0 0 0 0 5 force @a[scores={particle=1}]

playsound item.trident.thunder record @a ~ ~ ~ 10 1
