execute unless score round game.state matches 40 run particle large_smoke ~ ~1 ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~1 ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=1}]

playsound block.fire.extinguish record @a ~ ~ ~ 1 2
playsound entity.player.hurt record @a ~ ~ ~ 1.5 1
