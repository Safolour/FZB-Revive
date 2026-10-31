
particle dust_color_transition{from_color:[1,0,0],to_color:[0.5,0.5,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[scores={particle=0}]

scoreboard players operation match zombie.nether.guardian.suspense.match = @s zombie.nether.guardian.suspense.match

execute as @e[type=armor_stand,tag=skill.crimsonguardian.suspense] if score @s zombie.nether.guardian.suspense.match = match zombie.nether.guardian.suspense.match run tag @s add target
execute as @e[type=guardian,tag=skill.crimsonguardian.suspense] if score @s zombie.nether.guardian.suspense.match = match zombie.nether.guardian.suspense.match run tag @s add target

execute at @s run tp @e[type=armor_stand,tag=target] ~ ~ ~ ~ ~

execute unless entity @e[type=guardian,tag=target] run function zombie:skill/nether/guardian/crimson/0/skill/suspense/clear

tag @e[type=guardian,tag=target] remove target
tag @e[type=armor_stand,tag=target] remove target
scoreboard players reset match zombie.nether.guardian.suspense.match


execute store result score @s zombie.nether.guardian.suspense.y run data get entity @s Pos[1]
execute if score stat zombie.nether.guardian matches 1 if score @s zombie.nether.guardian.suspense.y matches ..94 run effect give @s levitation 1 0 true
execute if score stat zombie.nether.guardian matches 1 if score @s zombie.nether.guardian.suspense.y matches 96.. run effect give @s slow_falling 1 0 true
execute if score stat zombie.nether.guardian matches 5 if score @s zombie.nether.guardian.suspense.y matches ..86 run effect give @s levitation 1 0 true
execute if score stat zombie.nether.guardian matches 5 if score @s zombie.nether.guardian.suspense.y matches 88.. run effect give @s slow_falling 1 0 true
execute if score stat zombie.nether.guardian matches 7 if score @s zombie.nether.guardian.suspense.y matches ..90 run effect give @s levitation 1 0 true
execute if score stat zombie.nether.guardian matches 7 if score @s zombie.nether.guardian.suspense.y matches 92.. run effect give @s slow_falling 1 0 true



scoreboard players add @s zombie.nether.guardian.suspense.laser 1
execute on target if entity @s[type=player,scores={stat.player=1}] run tag @s add target
execute if entity @a[tag=target] unless entity @a[tag=target,distance=..8] run function zombie:skill/nether/guardian/crimson/0/skill/suspense/motion

execute if entity @a[tag=target,scores={stat.player=1},distance=..10] run function zombie:skill/nether/guardian/crimson/0/skill/suspense/laser

tag @a remove target
