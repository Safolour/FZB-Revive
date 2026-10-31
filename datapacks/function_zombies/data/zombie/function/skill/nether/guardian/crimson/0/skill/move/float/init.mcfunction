
scoreboard players set @s zombie.nether.guardian.movefloat 0

execute at @s run playsound entity.guardian.ambient record @a ~ ~ ~ 10 1
execute at @s run playsound item.bucket.fill_lava record @a ~ ~ ~ 10 1
execute at @s run playsound entity.warden.agitated record @a ~ ~ ~ 10 1
execute at @s run playsound entity.fish.swim record @a ~ ~ ~ 2 0
execute at @s run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/0
