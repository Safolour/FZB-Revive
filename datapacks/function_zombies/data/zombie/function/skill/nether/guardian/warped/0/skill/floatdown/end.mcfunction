execute if score stat zombie.nether.guardian matches 5 run function zombie:skill/nether/guardian/warped/0/skill/interplay/end
execute if score stat zombie.nether.guardian matches 7 run function zombie:skill/nether/guardian/warped/0/skill/interplay/end


tag @s remove skill.warpedguardian.floatdown

function zombie:skill/nether/guardian/warped/0/spawn/clear

#function zombie:skill/nether/guardian/crimson/1/init

execute at @s run playsound entity.guardian.ambient record @a ~ ~ ~ 10 1
execute at @s run playsound item.bucket.fill_lava record @a ~ ~ ~ 10 1
execute at @s run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/0

#tag @s add bossbar
execute if score stat zombie.nether.guardian matches 3 run function zombie:skill/nether/guardian/warped/1/init
