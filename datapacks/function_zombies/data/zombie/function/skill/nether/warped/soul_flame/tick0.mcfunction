scoreboard players operation match zombie.nether.warped.soulflame.match = @s zombie.nether.warped.soulflame.match

execute as @e[type=zombie,tag=skill.soulflame] if score @s zombie.nether.warped.soulflame.match = match zombie.nether.warped.soulflame.match run tag @s add target

execute as @e[type=block_display,tag=skill.soulflame.1] if score @s zombie.nether.warped.soulflame.match = match zombie.nether.warped.soulflame.match run tag @s add target
execute as @e[type=block_display,tag=skill.soulflame.2] if score @s zombie.nether.warped.soulflame.match = match zombie.nether.warped.soulflame.match run tag @s add target
execute as @e[type=block_display,tag=skill.soulflame.3] if score @s zombie.nether.warped.soulflame.match = match zombie.nether.warped.soulflame.match run tag @s add target

tp @e[type=block_display,tag=target,tag=skill.soulflame.1] ~ ~0.5 ~
tp @e[type=block_display,tag=target,tag=skill.soulflame.2] ~ ~1 ~
tp @e[type=block_display,tag=target,tag=skill.soulflame.3] ~ ~1.5 ~

data modify entity @s Pos set from entity @e[type=zombie,tag=target,limit=1] Pos

execute unless entity @e[type=zombie,tag=target] run kill @e[type=block_display,tag=target]
execute unless entity @e[type=zombie,tag=target] run kill @s

tag @e[type=zombie,tag=target] remove target
tag @e[type=block_display,tag=target] remove target
scoreboard players reset match zombie.nether.warped.soulflame.match
