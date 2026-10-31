
scoreboard players add @s zombie.nether.guardian.eclipse 1

execute if score @s zombie.nether.guardian.eclipse matches 10 as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}]
execute if score @s zombie.nether.guardian.eclipse matches 20 as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}]
execute if score @s zombie.nether.guardian.eclipse matches 30 as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}]
execute if score @s zombie.nether.guardian.eclipse matches 40 as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}]
execute if score @s zombie.nether.guardian.eclipse matches 50 run function zombie:skill/nether/guardian/warped/0/skill/eclipse/spawn

execute if score @s zombie.nether.guardian.eclipse matches 80.. run function zombie:skill/nether/guardian/warped/0/skill/eclipse/end
