scoreboard players add @s zombie.nether.warped.soulflame 1
execute if score @s zombie.nether.warped.soulflame matches 2 run function zombie:skill/nether/warped/soul_flame/init

execute if score @s zombie.nether.warped.soulflame matches 3 run function zombie:skill/nether/warped/soul_flame/particle/7
execute if score @s zombie.nether.warped.soulflame matches 4 run function zombie:skill/nether/warped/soul_flame/particle/6
execute if score @s zombie.nether.warped.soulflame matches 5 run function zombie:skill/nether/warped/soul_flame/particle/5
execute if score @s zombie.nether.warped.soulflame matches 6 run function zombie:skill/nether/warped/soul_flame/particle/4
execute if score @s zombie.nether.warped.soulflame matches 7 run function zombie:skill/nether/warped/soul_flame/particle/3
execute if score @s zombie.nether.warped.soulflame matches 8 run function zombie:skill/nether/warped/soul_flame/particle/2
execute if score @s zombie.nether.warped.soulflame matches 9 run function zombie:skill/nether/warped/soul_flame/particle/1
execute if score @s zombie.nether.warped.soulflame matches 10 run function zombie:skill/nether/warped/soul_flame/particle/0

execute if score @s zombie.nether.warped.soulflame matches 10 run scoreboard players set @s zombie.nether.warped.soulflame 3
