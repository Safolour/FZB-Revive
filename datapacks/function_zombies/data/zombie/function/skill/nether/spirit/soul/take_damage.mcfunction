execute unless score round game.state matches 40 run particle end_rod ~ ~1 ~ 0 0 0 0.1 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~1 ~ 0 0 0 0.1 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~1 ~ 0 0 0 0.1 1 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle end_rod ~ ~1 ~ 0 0 0 0.1 1 force @a[scores={particle=1}]

playsound block.fire.extinguish record @a ~ ~ ~ 1 2
playsound entity.player.hurt record @a ~ ~ ~ 1.5 1
