scoreboard players add @s zombie.nether.crimson.firezombie 1
execute if score @s zombie.nether.crimson.firezombie matches ..4 run return 0

scoreboard players set @s zombie.nether.crimson.firezombie 0
execute unless score round game.state matches 40 run particle dripping_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dripping_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle dripping_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
