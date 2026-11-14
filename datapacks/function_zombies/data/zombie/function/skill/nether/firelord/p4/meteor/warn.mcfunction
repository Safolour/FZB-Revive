scoreboard players set @s zombie.skill_timer 0
function zombie:skill/nether/firelord/p2/warn
summon marker ~ ~ ~ {Tags:["mob.skill","firelord.p4.meteor.wave","firelord.p4.meteor.wave.new"]}
scoreboard players set @e[type=marker,tag=firelord.p4.meteor.wave.new,sort=nearest,limit=1,distance=..1] zombie.skill_timer 0
tag @e[type=marker,tag=firelord.p4.meteor.wave.new,sort=nearest,limit=1,distance=..1] remove firelord.p4.meteor.wave.new
