scoreboard players add @s zombie.nether.guardian.suspense.death 1

particle flame ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]

execute store result score @s zombie.nether.guardian.suspense.death.y run data get entity @s Pos[1]

execute if score stat zombie.nether.guardian matches 1 if score @s zombie.nether.guardian.suspense.death.y matches 92 run scoreboard players set @s zombie.nether.guardian.suspense.death 50
execute if score stat zombie.nether.guardian matches 1 if score @s zombie.nether.guardian.suspense.death.y matches 92 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.crimsonguardian.suspense.death.platform","chosen"],Marker:1b}
execute if score stat zombie.nether.guardian matches 5 if score @s zombie.nether.guardian.suspense.death.y matches 84 run scoreboard players set @s zombie.nether.guardian.suspense.death 50
execute if score stat zombie.nether.guardian matches 5 if score @s zombie.nether.guardian.suspense.death.y matches 84 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.crimsonguardian.suspense.death.platform","chosen"],Marker:1b}
execute if score stat zombie.nether.guardian matches 7 if score @s zombie.nether.guardian.suspense.death.y matches 88 run scoreboard players set @s zombie.nether.guardian.suspense.death 50
execute if score stat zombie.nether.guardian matches 7 if score @s zombie.nether.guardian.suspense.death.y matches 88 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.crimsonguardian.suspense.death.platform","chosen"],Marker:1b}

execute as @e[type=armor_stand,tag=skill.crimsonguardian.suspense.death.platform,tag=chosen] at @s run function zombie:skill/nether/guardian/crimson/0/skill/suspense/platform

kill @n[type=armor_stand,tag=skill.crimsonguardian.suspense.death.platform,tag=chosen]
execute if score @s zombie.nether.guardian.suspense.death matches 50.. run kill @s
