kill @e[type=marker,tag=firelord.p4.legion.clock]
summon marker ~ ~ ~ {Tags:["mob.skill","firelord.p4.legion.clock","firelord.p4.legion.new"]}
scoreboard players set @e[type=marker,tag=firelord.p4.legion.new,sort=nearest,limit=1,distance=..1] zombie.skill_timer 0
tag @e[type=marker,tag=firelord.p4.legion.new,sort=nearest,limit=1,distance=..1] remove firelord.p4.legion.new
execute store result score @e[type=marker,tag=firelord.p4.legion.clock,sort=nearest,limit=1,distance=..1] zombie.motionz run random value 13..15
