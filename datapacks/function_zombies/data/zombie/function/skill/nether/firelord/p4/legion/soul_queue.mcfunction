tag @s remove firelord.p4.legion.mob2
summon marker ~ ~1.5 ~ {Tags:["mob.skill","firelord.p4.legion.soul.delay","firelord.p4.legion.soul.new"]}
scoreboard players set @e[type=marker,tag=firelord.p4.legion.soul.new,sort=nearest,limit=1,distance=..2] zombie.skill_timer 0
execute store result score @e[type=marker,tag=firelord.p4.legion.soul.new,sort=nearest,limit=1,distance=..2] zombie.motionx run random value -220..220
execute store result score @e[type=marker,tag=firelord.p4.legion.soul.new,sort=nearest,limit=1,distance=..2] zombie.motionz run random value -220..220
scoreboard players set @e[type=marker,tag=firelord.p4.legion.soul.new,sort=nearest,limit=1,distance=..2] zombie.motiony 430
tag @e[type=marker,tag=firelord.p4.legion.soul.new,sort=nearest,limit=1,distance=..2] remove firelord.p4.legion.soul.new
