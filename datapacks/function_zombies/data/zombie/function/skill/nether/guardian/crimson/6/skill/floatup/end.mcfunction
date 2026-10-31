
tag @s remove skill.crimsonguardian.floatup

execute at @s run playsound entity.guardian.ambient record @a ~ ~ ~ 10 1
execute at @s run playsound item.bucket.fill_lava record @a ~ ~ ~ 10 1
execute at @s run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/0

tag @s add bossbar
#say laser start
#execute if score stat zombie.nether.guardian matches 9 run schedule function zombie:skill/nether/guardian/crimson/6/plan/init 1s

execute as @n[type=guardian,tag=skill.crimsonguardian] at @s run function zombie:skill/nether/guardian/crimson/6/skill/laser/init

execute as @n[type=elder_guardian,tag=skill.warpedguardian] at @s run function zombie:skill/nether/guardian/warped/6/skill/laser/init
