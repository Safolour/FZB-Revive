# Called at the actual P3 eclipse announcement or circle release.
summon marker ~ ~ ~ {Tags:["mob.skill","firelord.p3.meteor.controller","firelord.p3.meteor.new"]}
scoreboard players set @e[type=marker,tag=firelord.p3.meteor.new,sort=nearest,limit=1] zombie.skill_timer 0
tag @e[type=marker,tag=firelord.p3.meteor.new,sort=nearest,limit=1] remove firelord.p3.meteor.new
