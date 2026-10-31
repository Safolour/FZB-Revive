function zombie:skill/nether/guardian/warped/0/skill/move/swim/particle/swim

execute if score stat zombie.nether.guardian matches 3 if entity @s[tag=skill.warpedguardian.move.swim.left] as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ 87.5 ~ facing entity @e[type=marker,tag=skill.warpedguardian.move.target,limit=1]
execute if score stat zombie.nether.guardian matches 5 if entity @s[tag=skill.warpedguardian.move.swim.left] as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ 83.5 ~ facing entity @e[type=marker,tag=skill.warpedguardian.move.target,limit=1]
execute if score stat zombie.nether.guardian matches 7 if entity @s[tag=skill.warpedguardian.move.swim.left] as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ 87.5 ~ facing entity @e[type=marker,tag=skill.warpedguardian.move.target,limit=1]
execute if entity @s[tag=skill.warpedguardian.move.swim.left] as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run data modify entity @s Rotation[1] set value 0
execute if entity @s[tag=skill.warpedguardian.move.swim.left] as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ^0.3 ^ ^0.2


execute if score stat zombie.nether.guardian matches 3 if entity @s[tag=skill.warpedguardian.move.swim.right] as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ 87.5 ~ facing entity @e[type=marker,tag=skill.warpedguardian.move.target,limit=1]
execute if score stat zombie.nether.guardian matches 5 if entity @s[tag=skill.warpedguardian.move.swim.right] as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ 83.5 ~ facing entity @e[type=marker,tag=skill.warpedguardian.move.target,limit=1]
execute if score stat zombie.nether.guardian matches 7 if entity @s[tag=skill.warpedguardian.move.swim.right] as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ 87.5 ~ facing entity @e[type=marker,tag=skill.warpedguardian.move.target,limit=1]
execute if entity @s[tag=skill.warpedguardian.move.swim.right] as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run data modify entity @s Rotation[1] set value 0
execute if entity @s[tag=skill.warpedguardian.move.swim.right] as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ^-0.3 ^ ^0.2


execute if entity @s[tag=!skill.warpedguardian.move.swim.right,tag=!skill.warpedguardian.move.swim.left] as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ^ ^ ^0.25


execute if score stat zombie.nether.guardian matches 3 if entity @s[tag=!skill.warpedguardian.move.swim.right,tag=!skill.warpedguardian.move.swim.left] as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ 87.5 ~
execute if score stat zombie.nether.guardian matches 5 if entity @s[tag=!skill.warpedguardian.move.swim.right,tag=!skill.warpedguardian.move.swim.left] as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ 83.5 ~
execute if score stat zombie.nether.guardian matches 7 if entity @s[tag=!skill.warpedguardian.move.swim.right,tag=!skill.warpedguardian.move.swim.left] as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ 87.5 ~


execute as @n[type=armor_stand,tag=skill.warpedguardian.match] unless entity @e[type=marker,tag=skill.warpedguardian.move.target,distance=..5] at @s run tp @s ^ ^ ^0.2
execute as @n[type=armor_stand,tag=skill.warpedguardian.match] unless entity @e[type=marker,tag=skill.warpedguardian.move.target,distance=..3.5] at @s run tp @s ^ ^ ^0.1

execute if score stat zombie.nether.guardian matches 3 if entity @e[type=marker,tag=skill.warpedguardian.move.target,distance=..2] run function zombie:skill/nether/guardian/warped/0/skill/move/swim/end
execute if score stat zombie.nether.guardian matches 5 positioned ~ ~4 ~ if entity @e[type=marker,tag=skill.warpedguardian.move.target,distance=..2] run function zombie:skill/nether/guardian/warped/0/skill/move/swim/end
execute if score stat zombie.nether.guardian matches 7 if entity @e[type=marker,tag=skill.warpedguardian.move.target,distance=..2] run function zombie:skill/nether/guardian/warped/0/skill/move/swim/end



tag @e[type=marker,tag=skill.guardian.floor.platform.marker,distance=..2] add skill.guardian.floor.platform.marker.break
