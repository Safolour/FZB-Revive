
function zombie:skill/nether/guardian/warped/0/skill/move/end

execute at @s run playsound entity.guardian.ambient record @a ~ ~ ~ 10 1
execute at @s run playsound item.bucket.fill_lava record @a ~ ~ ~ 10 1
execute at @s run playsound entity.fish.swim record @a ~ ~ ~ 2 0

execute at @s run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/0

tag @e[type=marker,tag=skill.guardian.floor.platform.marker,distance=..3] add skill.guardian.floor.platform.marker.break


#scoreboard players set cooldown zombie.nether.guardian.skill 20
#scoreboard players set cooldown0 zombie.nether.guardian.skill 20
execute if score stat zombie.nether.guardian matches 3 run scoreboard players set cooldown0 zombie.nether.guardian.skill 20
execute if score stat zombie.nether.guardian matches 5 run scoreboard players set cooldown1_0 zombie.nether.guardian.skill -2
execute if score stat zombie.nether.guardian matches 5 if score cooldown1_0 zombie.nether.guardian.skill matches -2 if score cooldown1_1 zombie.nether.guardian.skill matches -2 if score cooldown1 zombie.nether.guardian.skill matches -1 run scoreboard players set cooldown1 zombie.nether.guardian.skill 20
execute if score stat zombie.nether.guardian matches 7 run scoreboard players set cooldown1_0 zombie.nether.guardian.skill -2
execute if score stat zombie.nether.guardian matches 7 if score cooldown1_0 zombie.nether.guardian.skill matches -2 if score cooldown1_1 zombie.nether.guardian.skill matches -2 run scoreboard players set cooldown1 zombie.nether.guardian.skill 20
