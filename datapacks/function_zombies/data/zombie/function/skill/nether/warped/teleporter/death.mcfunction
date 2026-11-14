playsound block.ender_chest.open record @a ~ ~ ~ 1.5 1
playsound block.ender_chest.open record @a ~ ~ ~ 1.5 1
playsound block.ender_chest.open record @a ~ ~ ~ 1.5 1
playsound block.ender_chest.open record @a ~ ~ ~ 1.5 1
playsound block.ender_chest.open record @a ~ ~ ~ 1.5 1

execute unless score round game.state matches 40 run particle dripping_obsidian_tear ~ ~1 ~ 1 1 1 0 50 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dripping_obsidian_tear ~ ~1 ~ 1 1 1 0 50 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dripping_obsidian_tear ~ ~1 ~ 1 1 1 0 25 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle portal ~ ~1 ~ 0 0 0 1 200 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle portal ~ ~1 ~ 0 0 0 1 200 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle portal ~ ~1 ~ 0 0 0 1 100 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle soul ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul ~ ~1 ~ 0 0 0 0.1 5 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle gust ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle gust ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle gust ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
