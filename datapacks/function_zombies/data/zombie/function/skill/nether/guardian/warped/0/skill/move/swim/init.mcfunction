
execute as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,limit=1,tag=skill.warpedguardian.move.target]
execute as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ ~ ~ ~ 0

execute at @s run playsound entity.guardian.ambient record @a ~ ~ ~ 10 1
execute at @s run playsound item.bucket.fill_lava record @a ~ ~ ~ 10 1
execute at @s run playsound entity.warden.agitated record @a ~ ~ ~ 10 1
execute at @s run playsound entity.fish.swim record @a ~ ~ ~ 2 0

execute at @s run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/0

tag @e[type=marker,tag=skill.guardian.floor.platform.marker,distance=..3] add skill.guardian.floor.platform.marker.break
