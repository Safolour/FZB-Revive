scoreboard players add @s zombie.nether.warped.soulfirezombie 1
execute unless score round game.state matches 40 run execute if score @s zombie.nether.warped.soulfirezombie matches 2 run particle soul ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute if score @s zombie.nether.warped.soulfirezombie matches 2 run particle soul ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run execute if score @s zombie.nether.warped.soulfirezombie matches 2 run particle soul ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]

execute if score @s zombie.nether.warped.soulfirezombie matches ..4 run return 0

scoreboard players set @s zombie.nether.warped.soulfirezombie 0
execute unless score round game.state matches 40 run particle glow ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle glow ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle glow ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
