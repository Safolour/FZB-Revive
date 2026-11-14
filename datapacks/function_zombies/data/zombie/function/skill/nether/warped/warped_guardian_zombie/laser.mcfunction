execute unless score round game.state matches 40 run execute at @s run particle dripping_water ^ ^ ^0.9 0.05 0.05 0.05 0 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle dripping_water ^ ^ ^0.9 0.05 0.05 0.05 0 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle dripping_water ^ ^ ^0.9 0.05 0.05 0.05 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run execute at @s run particle dripping_obsidian_tear ^ ^ ^0.125 0.05 0.05 0.05 0 2 force @a[scores={particle=0..1}]
execute if score round game.state matches 40 run execute at @s run particle dripping_obsidian_tear ^ ^ ^0.125 0.05 0.05 0.05 0 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle dripping_obsidian_tear ^ ^ ^0.125 0.05 0.05 0.05 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run execute at @s run particle dripping_water ^ ^ ^0.25 0.05 0.05 0.05 0 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle dripping_water ^ ^ ^0.25 0.05 0.05 0.05 0 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle dripping_water ^ ^ ^0.25 0.05 0.05 0.05 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run execute at @s run particle dripping_obsidian_tear ^ ^ ^0.375 0.05 0.05 0.05 0 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle dripping_obsidian_tear ^ ^ ^0.375 0.05 0.05 0.05 0 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle dripping_obsidian_tear ^ ^ ^0.375 0.05 0.05 0.05 0 1 force @a[scores={particle=1}]

execute at @s run tp @s ^ ^ ^0.5
scoreboard players add @s zombie.nether.warped.warpedguardianzombie.particle 1

execute if score @s zombie.nether.warped.warpedguardianzombie.particle matches 1 at @s run function zombie:skill/nether/warped/warped_guardian_zombie/particle/0
execute if score @s zombie.nether.warped.warpedguardianzombie.particle matches 2 at @s run function zombie:skill/nether/warped/warped_guardian_zombie/particle/1
execute if score @s zombie.nether.warped.warpedguardianzombie.particle matches 3 at @s run function zombie:skill/nether/warped/warped_guardian_zombie/particle/2
execute if score @s zombie.nether.warped.warpedguardianzombie.particle matches 4 at @s run function zombie:skill/nether/warped/warped_guardian_zombie/particle/3
execute if score @s zombie.nether.warped.warpedguardianzombie.particle matches 5 at @s run function zombie:skill/nether/warped/warped_guardian_zombie/particle/4
execute if score @s zombie.nether.warped.warpedguardianzombie.particle matches 6 at @s run function zombie:skill/nether/warped/warped_guardian_zombie/particle/5
execute if score @s zombie.nether.warped.warpedguardianzombie.particle matches 7 at @s run function zombie:skill/nether/warped/warped_guardian_zombie/particle/6
execute if score @s zombie.nether.warped.warpedguardianzombie.particle matches 8 at @s run function zombie:skill/nether/warped/warped_guardian_zombie/particle/7
