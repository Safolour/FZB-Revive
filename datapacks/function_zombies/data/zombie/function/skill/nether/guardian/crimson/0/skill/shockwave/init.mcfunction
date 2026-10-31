
tag @s add skill.crimsonguardian.shockwave

execute as @n[type=armor_stand,tag=skill.crimsonguardian.match] at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}]
execute as @n[type=armor_stand,tag=skill.crimsonguardian.match] at @s run tp @s ~ ~ ~ ~ 0

execute at @s run playsound entity.blaze.death record @a ~ ~ ~ 10 0

scoreboard players set @s zombie.nether.guardian.shockwave 0

function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/0

effect give @s glowing infinite 0 true
team join zombie.crimsonguardian @s

scoreboard players add shockwavecount zombie.nether.guardian 1
execute if score shockwavecount zombie.nether.guardian matches 1.. run function zombie:skill/nether/guardian/crimson/0/skill/shockwave/tellraw
