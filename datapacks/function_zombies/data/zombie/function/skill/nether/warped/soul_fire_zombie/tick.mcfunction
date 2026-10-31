scoreboard players add @s zombie.nether.warped.soulfirezombie 1
execute if score @s zombie.nether.warped.soulfirezombie matches 2 run particle soul ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]

execute if score @s zombie.nether.warped.soulfirezombie matches ..4 run return 0

scoreboard players set @s zombie.nether.warped.soulfirezombie 0
particle glow ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
