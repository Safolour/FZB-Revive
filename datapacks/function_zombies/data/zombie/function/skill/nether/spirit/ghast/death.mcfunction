execute unless score round game.state matches 40 run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle end_rod ~ ~1 ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~1 ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle snowflake ~ ~1 ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle snowflake ~ ~1 ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle snowflake ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=1}]

playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 2 1
