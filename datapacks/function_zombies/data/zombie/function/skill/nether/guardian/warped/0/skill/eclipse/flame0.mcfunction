
scoreboard players add @s zombie.nether.guardian.eclipse.flame 1

tp @s ^ ^ ^0.5
particle large_smoke ~ ~0.3 ~ 0 0 0 0 1 force @a[scores={particle=0}]

scoreboard players set 10 zombie.number 10
scoreboard players operation pass zombie.number = @s zombie.nether.guardian.eclipse.flame
scoreboard players operation pass zombie.number %= 10 zombie.number
scoreboard players reset 10 zombie.number
execute if score pass zombie.number matches 0 run particle soul_fire_flame ~ ~0.1 ~ 0 0 0 0.05 10 force @a[scores={particle=0}]
execute if score pass zombie.number matches 0 run playsound block.fire.ambient
scoreboard players reset pass zombie.number

scoreboard players operation match zombie.nether.guardian.eclipse.flame.match = @s zombie.nether.guardian.eclipse.flame.match
execute as @e[type=block_display,tag=skill.warpedguardian.eclipse.flame.0] if score @s zombie.nether.guardian.eclipse.flame.match = match zombie.nether.guardian.eclipse.flame.match run tag @s add target
tp @e[type=block_display,tag=target] ~ ~ ~
scoreboard players reset match zombie.nether.guardian.eclipse.flame.match
tag @e[type=block_display] remove target

execute if entity @a[scores={stat.player=1},distance=..2] run scoreboard players set @s zombie.nether.guardian.eclipse.flame 101
execute unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set @s zombie.nether.guardian.eclipse.flame 101

execute if score @s zombie.nether.guardian.eclipse.flame matches ..100 run return 0

scoreboard players operation match zombie.nether.guardian.eclipse.flame.match = @s zombie.nether.guardian.eclipse.flame.match
execute as @e[type=block_display,tag=skill.warpedguardian.eclipse.flame.0] if score @s zombie.nether.guardian.eclipse.flame.match = match zombie.nether.guardian.eclipse.flame.match run tag @s add target
kill @e[type=block_display,tag=target]
scoreboard players reset match zombie.nether.guardian.eclipse.flame.match
kill @s

particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 1

execute if entity @a[scores={stat.player=1},distance=..2] as @a[scores={stat.player=1},distance=..2] at @s run function zombie:skill/nether/guardian/warped/0/skill/eclipse/damage0
