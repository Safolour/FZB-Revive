
tag @s add skill.warpedguardian.attract

execute as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}]
execute as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ ~ ~ ~ 0

execute at @s run playsound entity.blaze.death record @a ~ ~ ~ 10 0

scoreboard players set @s zombie.nether.guardian.shockwave 0

function zombie:skill/nether/guardian/warped/0/skill/move/swim/particle/0

effect give @s glowing infinite 0 true
team join zombie.warpedguardian @s

scoreboard players add attractcount zombie.nether.guardian 1
execute if score attractcount zombie.nether.guardian matches 1.. run function zombie:skill/nether/guardian/warped/0/skill/attract/tellraw
