
execute if score @s zombie.nether.guardian.eclipse matches 15.. run function zombie:skill/nether/guardian/warped/0/skill/eclipse/path

execute if score @s zombie.nether.guardian.eclipse matches ..30 run particle snowflake ~ ~ ~ 0.3 0.3 0.3 0 6 force @a[scores={particle=0}]

execute if score @s zombie.nether.guardian.eclipse matches 30.. run particle snowflake ~ ~ ~ 1 1 1 0 10 force @a[scores={particle=0}]

execute if score @s zombie.nether.guardian.eclipse matches 10 run data merge entity @n[type=slime,tag=skill.warpedguardian.eclipse.4] {Size:1}
execute if score @s zombie.nether.guardian.eclipse matches 20 run data merge entity @n[type=slime,tag=skill.warpedguardian.eclipse.4] {Size:2}
execute if score @s zombie.nether.guardian.eclipse matches 30 run data merge entity @n[type=slime,tag=skill.warpedguardian.eclipse.4] {Size:3}
execute if score @s zombie.nether.guardian.eclipse matches 40 run data merge entity @n[type=slime,tag=skill.warpedguardian.eclipse.4] {Size:4}

scoreboard players add @s zombie.nether.guardian.eclipse 1

scoreboard players operation mod zombie.nether.guardian.eclipse = @s zombie.nether.guardian.eclipse
scoreboard players operation mod zombie.nether.guardian.eclipse %= 10 number
execute if score mod zombie.nether.guardian.eclipse matches 0 run playsound entity.elder_guardian.ambient record @a ~ ~ ~ 2 0
scoreboard players reset mod zombie.nether.guardian.eclipse

execute if score @s zombie.nether.guardian.eclipse matches ..40 run tp @s ~ ~0.03 ~
execute at @s run tp @s ^ ^ ^0.2

tp @n[type=item_display,tag=skill.warpedguardian.eclipse.0] ~ ~ ~
tp @n[type=item_display,tag=skill.warpedguardian.eclipse.1] ~ ~ ~
tp @n[type=item_display,tag=skill.warpedguardian.eclipse.2] ~ ~ ~
tp @n[type=item_display,tag=skill.warpedguardian.eclipse.3] ~ ~ ~
tp @n[type=slime,tag=skill.warpedguardian.eclipse.4] ^ ^ ^1


execute if score @s zombie.nether.guardian.eclipse matches ..30 store result storage zombie warpedguardianeclipse.r0 float 0.1 run scoreboard players get @s zombie.nether.guardian.eclipse
execute if score @s zombie.nether.guardian.eclipse matches ..35 store result storage zombie warpedguardianeclipse.r1 float 0.12 run scoreboard players get @s zombie.nether.guardian.eclipse
execute if score @s zombie.nether.guardian.eclipse matches ..35 run function zombie:skill/nether/guardian/warped/0/skill/eclipse/r with storage zombie warpedguardianeclipse
execute if score @s zombie.nether.guardian.eclipse matches ..35 run data remove storage zombie warpedguardianeclipse


execute if entity @a[scores={stat.player=1},distance=..4.5] as @a[scores={stat.player=1},distance=..4.5] at @s run function zombie:skill/nether/guardian/warped/0/skill/eclipse/damage

execute unless block ~ ~ ~ #weapon:gun_penetrable positioned ^ ^ ^-1 run function zombie:skill/nether/guardian/warped/0/skill/eclipse/explosion


execute unless entity @e[type=slime,tag=skill.warpedguardian.eclipse.4] run function zombie:skill/nether/guardian/warped/0/skill/eclipse/explosion

execute if score @s zombie.nether.guardian.eclipse matches 150.. run function zombie:skill/nether/guardian/warped/0/skill/eclipse/clear
