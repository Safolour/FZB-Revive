
execute unless score round game.state matches 40 run particle large_smoke ~ ~1.5 ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~1.5 ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~1.5 ~ 0 0 0 0.2 15 force @a[scores={particle=1}]
playsound entity.wither.ambient record @a ~ ~ ~ 1.5 2
