function zombie:skill/nether/guardian/warped/0/skill/eclipse/flame

scoreboard players operation mod zombie.nether.guardian.eclipse = @s zombie.nether.guardian.eclipse
scoreboard players operation mod zombie.nether.guardian.eclipse %= 10 number

scoreboard players reset mod zombie.nether.guardian.eclipse

execute if score mod zombie.nether.guardian.eclipse matches 1.. run return 0


execute if score stat zombie.nether.guardian matches 3 positioned ^ ^ ^-1.5 align xyz positioned ~0.5 88 ~0.5 run summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.death.platform0","chosen"],Marker:1b}
execute if score stat zombie.nether.guardian matches 5 positioned ^ ^ ^-1.5 align xyz positioned ~0.5 84 ~0.5 run summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.death.platform0","chosen"],Marker:1b}
execute if score stat zombie.nether.guardian matches 7 positioned ^ ^ ^-1.5 align xyz positioned ~0.5 88 ~0.5 run summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.death.platform0","chosen"],Marker:1b}

execute as @e[type=armor_stand,tag=skill.warpedguardian.eclipse.death.platform0,tag=chosen] at @s run function zombie:skill/nether/guardian/warped/0/skill/eclipse/platform0

kill @n[type=armor_stand,tag=skill.warpedguardian.eclipse.death.platform0,tag=chosen]

execute if score stat zombie.nether.guardian matches 3 positioned ^ ^ ^1.5 align xyz positioned ~0.5 88 ~0.5 run summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.death.platform0","chosen"],Marker:1b}
execute if score stat zombie.nether.guardian matches 5 positioned ^ ^ ^1.5 align xyz positioned ~0.5 84 ~0.5 run summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.death.platform0","chosen"],Marker:1b}
execute if score stat zombie.nether.guardian matches 7 positioned ^ ^ ^1.5 align xyz positioned ~0.5 88 ~0.5 run summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.death.platform0","chosen"],Marker:1b}

execute as @e[type=armor_stand,tag=skill.warpedguardian.eclipse.death.platform0,tag=chosen] at @s run function zombie:skill/nether/guardian/warped/0/skill/eclipse/platform1

kill @n[type=armor_stand,tag=skill.warpedguardian.eclipse.death.platform0,tag=chosen]
