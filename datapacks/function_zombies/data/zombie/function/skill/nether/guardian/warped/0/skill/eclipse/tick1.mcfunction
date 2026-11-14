scoreboard players add @s zombie.nether.guardian.eclipse.death 1

#particle flame ~ ~ ~ 0 0 0 0 1 force @a
execute unless score round game.state matches 40 run particle soul_fire_flame ~ ~ ~ 0 0 0 0.01 2 force @a[scores={particle=0..1}]
execute if score round game.state matches 40 run particle soul_fire_flame ~ ~ ~ 0 0 0 0.01 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul_fire_flame ~ ~ ~ 0 0 0 0.01 1 force @a[scores={particle=1}]

execute store result score @s zombie.nether.guardian.eclipse.death.y run data get entity @s Pos[1]


execute if score stat zombie.nether.guardian matches 3 if score @s zombie.nether.guardian.eclipse.death.y matches 88 run scoreboard players set @s zombie.nether.guardian.eclipse.death 50
execute if score stat zombie.nether.guardian matches 3 if score @s zombie.nether.guardian.eclipse.death.y matches 88 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.death.platform","chosen"],Marker:1b}
execute if score stat zombie.nether.guardian matches 5 if score @s zombie.nether.guardian.eclipse.death.y matches 84 run scoreboard players set @s zombie.nether.guardian.eclipse.death 50
execute if score stat zombie.nether.guardian matches 5 if score @s zombie.nether.guardian.eclipse.death.y matches 84 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.death.platform","chosen"],Marker:1b}
execute if score stat zombie.nether.guardian matches 7 if score @s zombie.nether.guardian.eclipse.death.y matches 88 run scoreboard players set @s zombie.nether.guardian.eclipse.death 50
execute if score stat zombie.nether.guardian matches 7 if score @s zombie.nether.guardian.eclipse.death.y matches 88 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.death.platform","chosen"],Marker:1b}


execute as @e[type=armor_stand,tag=skill.warpedguardian.eclipse.death.platform,tag=chosen] at @s run function zombie:skill/nether/guardian/warped/0/skill/eclipse/platform

kill @n[type=armor_stand,tag=skill.warpedguardian.eclipse.death.platform,tag=chosen]
execute if score @s zombie.nether.guardian.eclipse.death matches 50.. run kill @s
