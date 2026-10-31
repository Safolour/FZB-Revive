scoreboard players add @s zombie.nether.crimson.firezombie 1
execute if score @s zombie.nether.crimson.firezombie matches ..4 run return 0

scoreboard players set @s zombie.nether.crimson.firezombie 0
particle dripping_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
