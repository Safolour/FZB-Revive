
tag @s remove skill.crimsonguardian.floatup

execute at @s run playsound entity.guardian.ambient record @a ~ ~ ~ 10 1
execute at @s run playsound item.bucket.fill_lava record @a ~ ~ ~ 10 1
execute at @s run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/0

tag @s add bossbar
execute if score stat zombie.nether.guardian matches 7 run schedule function zombie:skill/nether/guardian/crimson/4/plan/init 1s
execute if score stat zombie.nether.guardian matches 5 run function zombie:skill/nether/guardian/crimson/0/skill/interplay/init
execute if score stat zombie.nether.guardian matches 7 run function zombie:skill/nether/guardian/crimson/0/skill/interplay/init
