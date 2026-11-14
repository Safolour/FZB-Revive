scoreboard players add @s zombie.nether.warped.warpedguardianzombie.skill_timer 1
playsound block.amethyst_block.step record @a ~ ~ ~ 1 0
playsound block.amethyst_block.step record @a ~ ~ ~ 1 1
playsound block.amethyst_block.step record @a ~ ~ ~ 1 2
execute unless score round game.state matches 40 run execute at @s run particle trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0 3 force @a
execute if score round game.state matches 40 run execute at @s run particle trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run execute at @s run particle trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]

execute at @s positioned ^ ^-1 ^ if entity @a[scores={stat.player=1},distance=..0.99] as @a[scores={stat.player=1},distance=..0.99] run function zombie:skill/nether/warped/warped_guardian_zombie/damage
execute at @s positioned ^ ^-1 ^ if entity @e[tag=mob,tag=firezb,distance=..0.99,tag=!skill.warpedguardianzombie] as @e[tag=mob,tag=firezb,distance=..0.99] run function zombie:skill/nether/reaction/mob/warped

execute at @s positioned ^ ^-1 ^1 if entity @a[scores={stat.player=1},distance=..0.99] as @a[scores={stat.player=1},distance=..0.99] run function zombie:skill/nether/warped/warped_guardian_zombie/damage
execute at @s positioned ^ ^-1 ^1 if entity @e[tag=mob,tag=firezb,distance=..0.99,tag=!skill.warpedguardianzombie] as @e[tag=mob,tag=firezb,distance=..0.99] run function zombie:skill/nether/reaction/mob/warped

execute at @s positioned ^ ^-1 ^2 if entity @a[scores={stat.player=1},distance=..0.99] as @a[scores={stat.player=1},distance=..0.99] run function zombie:skill/nether/warped/warped_guardian_zombie/damage
execute at @s positioned ^ ^-1 ^2 if entity @e[tag=mob,tag=firezb,distance=..0.99,tag=!skill.warpedguardianzombie] as @e[tag=mob,tag=firezb,distance=..0.99] run function zombie:skill/nether/reaction/mob/warped

execute at @s positioned ^ ^-1 ^3 if entity @a[scores={stat.player=1},distance=..0.99] as @a[scores={stat.player=1},distance=..0.99] run function zombie:skill/nether/warped/warped_guardian_zombie/damage
execute at @s positioned ^ ^-1 ^3 if entity @e[tag=mob,tag=firezb,distance=..0.99,tag=!skill.warpedguardianzombie] as @e[tag=mob,tag=firezb,distance=..0.99] run function zombie:skill/nether/reaction/mob/warped

execute at @s positioned ^ ^-1 ^4 if entity @a[scores={stat.player=1},distance=..0.99] as @a[scores={stat.player=1},distance=..0.99] run function zombie:skill/nether/warped/warped_guardian_zombie/damage
execute at @s positioned ^ ^-1 ^4 if entity @e[tag=mob,tag=firezb,distance=..0.99,tag=!skill.warpedguardianzombie] as @e[tag=mob,tag=firezb,distance=..0.99] run function zombie:skill/nether/reaction/mob/warped

execute at @s positioned ^ ^-1 ^5 if entity @a[scores={stat.player=1},distance=..0.99] as @a[scores={stat.player=1},distance=..0.99] run function zombie:skill/nether/warped/warped_guardian_zombie/damage
execute at @s positioned ^ ^-1 ^5 if entity @e[tag=mob,tag=firezb,distance=..0.99,tag=!skill.warpedguardianzombie] as @e[tag=mob,tag=firezb,distance=..0.99] run function zombie:skill/nether/reaction/mob/warped

execute at @s positioned ^ ^-1 ^6 if entity @a[scores={stat.player=1},distance=..0.99] as @a[scores={stat.player=1},distance=..0.99] run function zombie:skill/nether/warped/warped_guardian_zombie/damage
execute at @s positioned ^ ^-1 ^6 if entity @e[tag=mob,tag=firezb,distance=..0.99,tag=!skill.warpedguardianzombie] as @e[tag=mob,tag=firezb,distance=..0.99] run function zombie:skill/nether/reaction/mob/warped

execute at @s positioned ^ ^-1 ^7 if entity @a[scores={stat.player=1},distance=..0.99] as @a[scores={stat.player=1},distance=..0.99] run function zombie:skill/nether/warped/warped_guardian_zombie/damage
execute at @s positioned ^ ^-1 ^7 if entity @e[tag=mob,tag=firezb,distance=..0.99,tag=!skill.warpedguardianzombie] as @e[tag=mob,tag=firezb,distance=..0.99] run function zombie:skill/nether/reaction/mob/warped

scoreboard players set @s zombie.nether.warped.warpedguardianzombie.particle 0
function zombie:skill/nether/warped/warped_guardian_zombie/laser
function zombie:skill/nether/warped/warped_guardian_zombie/laser
function zombie:skill/nether/warped/warped_guardian_zombie/laser
function zombie:skill/nether/warped/warped_guardian_zombie/laser
function zombie:skill/nether/warped/warped_guardian_zombie/laser
function zombie:skill/nether/warped/warped_guardian_zombie/laser
function zombie:skill/nether/warped/warped_guardian_zombie/laser
function zombie:skill/nether/warped/warped_guardian_zombie/laser

execute unless score round game.state matches 40 run execute at @s run particle trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run execute at @s run particle trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]

scoreboard players set @s zombie.nether.warped.warpedguardianzombie.particle 0
function zombie:skill/nether/warped/warped_guardian_zombie/laser
function zombie:skill/nether/warped/warped_guardian_zombie/laser
function zombie:skill/nether/warped/warped_guardian_zombie/laser
function zombie:skill/nether/warped/warped_guardian_zombie/laser
function zombie:skill/nether/warped/warped_guardian_zombie/laser
function zombie:skill/nether/warped/warped_guardian_zombie/laser
function zombie:skill/nether/warped/warped_guardian_zombie/laser
function zombie:skill/nether/warped/warped_guardian_zombie/laser

scoreboard players reset @s zombie.nether.warped.warpedguardianzombie.particle
execute if score @s zombie.nether.warped.warpedguardianzombie.skill_timer matches 5.. run kill @s
