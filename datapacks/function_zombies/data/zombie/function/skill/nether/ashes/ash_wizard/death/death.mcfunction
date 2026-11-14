execute unless score round game.state matches 40 run particle flash ~ ~1.5 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~1.5 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~1.5 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle gust ~ ~1.5 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle gust ~ ~1.5 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle gust ~ ~1.5 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle large_smoke ~ ~1.5 ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~1.5 ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~1.5 ~ 0 0 0 0.2 15 force @a[scores={particle=1}]
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 1.5 1
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 1.5 1
playsound entity.lightning_bolt.impact record @a ~ ~ ~ 1.5 1
playsound entity.lightning_bolt.impact record @a ~ ~ ~ 1.5 1

execute unless score round game.state matches 40 run particle ash ~ ~1.5 ~ 1.5 1.5 1.5 0.2 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ash ~ ~1.5 ~ 1.5 1.5 1.5 0.2 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ash ~ ~1.5 ~ 1.5 1.5 1.5 0.2 50 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle white_ash ~ ~1.5 ~ 1.5 1.5 1.5 0.2 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle white_ash ~ ~1.5 ~ 1.5 1.5 1.5 0.2 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle white_ash ~ ~1.5 ~ 1.5 1.5 1.5 0.2 50 force @a[scores={particle=1}]

execute if entity @a[scores={stat.player=1},distance=..4] as @a[scores={stat.player=1},distance=..4] at @s run function zombie:skill/nether/ashes/ash_wizard/death/damage
