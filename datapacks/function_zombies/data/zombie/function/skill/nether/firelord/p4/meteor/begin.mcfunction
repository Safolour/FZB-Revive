# The first warning occurs 300 ticks after the P4 shield announcement.
kill @e[type=marker,tag=firelord.p4.meteor.clock]
summon marker ~ ~ ~ {Tags:["mob.skill","firelord.p4.meteor.clock","firelord.p4.meteor.new"]}
scoreboard players set @e[type=marker,tag=firelord.p4.meteor.new,sort=nearest,limit=1,distance=..1] zombie.skill_timer 50
tag @e[type=marker,tag=firelord.p4.meteor.new,sort=nearest,limit=1,distance=..1] remove firelord.p4.meteor.new
