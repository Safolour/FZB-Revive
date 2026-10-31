scoreboard players add @s zombie.nether.guardian.movefloat 1

execute if score @s zombie.nether.guardian.movefloat matches 0..5 as @e[type=armor_stand,tag=skill.crimsonguardian.match] at @s run tp @s ~ ~-0.1 ~
execute if score @s zombie.nether.guardian.movefloat matches 6..10 as @e[type=armor_stand,tag=skill.crimsonguardian.match] at @s run tp @s ~ ~0.2 ~
execute if score @s zombie.nether.guardian.movefloat matches 15..18 as @e[type=armor_stand,tag=skill.crimsonguardian.match] at @s run tp @s ~ ~-0.1 ~
execute if score @s zombie.nether.guardian.movefloat matches 19..30 as @e[type=armor_stand,tag=skill.crimsonguardian.match] at @s run tp @s ~ ~-0.4 ~

execute if score @s zombie.nether.guardian.movefloat matches 25 run tag @s remove bossbar

#91 91.2
execute if score stat zombie.nether.guardian matches 1 if score @s zombie.nether.guardian.movefloat matches 40 as @n[type=marker,tag=skill.crimsonguardian.move.target] at @s run tp @n[type=armor_stand,tag=skill.crimsonguardian.match] ~ ~-4 ~
#execute if score stat zombie.nether.guardian matches 5 if score @s zombie.nether.guardian.movefloat matches 40 as @n[type=marker,tag=skill.crimsonguardian.move.target] at @s run say 1
execute if score stat zombie.nether.guardian matches 5 if score @s zombie.nether.guardian.movefloat matches 40 as @n[type=marker,tag=skill.crimsonguardian.move.target] at @s run tp @n[type=armor_stand,tag=skill.crimsonguardian.match] ~ ~-12 ~
execute if score stat zombie.nether.guardian matches 7 if score @s zombie.nether.guardian.movefloat matches 40 as @n[type=marker,tag=skill.crimsonguardian.move.target] at @s run tp @n[type=armor_stand,tag=skill.crimsonguardian.match] ~ ~-8 ~

execute if score @s zombie.nether.guardian.movefloat matches 41..71 as @e[type=armor_stand,tag=skill.crimsonguardian.match] at @s run tp @s ~ ~0.15 ~
execute if score @s zombie.nether.guardian.movefloat matches 72..73 as @e[type=armor_stand,tag=skill.crimsonguardian.match] at @s run tp @s ~ ~-0.15 ~

execute if score stat zombie.nether.guardian matches 1 if score @s zombie.nether.guardian.movefloat matches 75 as @e[type=armor_stand,tag=skill.crimsonguardian.match] at @s run tp @s ~ 91.5 ~
execute if score stat zombie.nether.guardian matches 5 if score @s zombie.nether.guardian.movefloat matches 75 as @e[type=armor_stand,tag=skill.crimsonguardian.match] at @s run tp @s ~ 83.5 ~
execute if score stat zombie.nether.guardian matches 7 if score @s zombie.nether.guardian.movefloat matches 75 as @e[type=armor_stand,tag=skill.crimsonguardian.match] at @s run tp @s ~ 87.5 ~


execute if score @s zombie.nether.guardian.movefloat matches 65 run tag @e[type=marker,tag=skill.guardian.floor.platform.marker,distance=..2.5] add skill.guardian.floor.platform.marker.break

execute if score @s zombie.nether.guardian.movefloat matches 75 run function zombie:skill/nether/guardian/crimson/0/skill/move/float/end


execute if score stat zombie.nether.guardian matches 1 if score @s zombie.nether.guardian.movefloat matches 20 at @s positioned ~ 91.5 ~ run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/0
execute if score stat zombie.nether.guardian matches 1 if score @s zombie.nether.guardian.movefloat matches 60 at @s positioned ~ 91.5 ~ run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/0
execute if score stat zombie.nether.guardian matches 5 if score @s zombie.nether.guardian.movefloat matches 20 at @s positioned ~ 83.5 ~ run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/0
execute if score stat zombie.nether.guardian matches 5 if score @s zombie.nether.guardian.movefloat matches 60 at @s positioned ~ 83.5 ~ run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/0
execute if score stat zombie.nether.guardian matches 7 if score @s zombie.nether.guardian.movefloat matches 20 at @s positioned ~ 87.5 ~ run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/0
execute if score stat zombie.nether.guardian matches 7 if score @s zombie.nether.guardian.movefloat matches 60 at @s positioned ~ 87.5 ~ run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/0

execute if score @s zombie.nether.guardian.movefloat matches 20 at @s run playsound entity.fish.swim record @a ~ ~ ~ 2 0

execute if score @s zombie.nether.guardian.movefloat matches 60 run tag @s add bossbar
execute if score @s zombie.nether.guardian.movefloat matches 60 at @s run playsound entity.fish.swim record @a ~ ~ ~ 2 0
