scoreboard players add #firelord_hit zombie.nether.guardian.shieldparticle 1
execute if score #firelord_hit zombie.nether.guardian.shieldparticle matches 2.. run return 0
particle end_rod ~ ~1 ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
particle end_rod ~ ~1 ~ 0 0 0 0.2 15 force @a[scores={particle=1}]
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
playsound block.anvil.land record @a ~ ~ ~ 3 2
