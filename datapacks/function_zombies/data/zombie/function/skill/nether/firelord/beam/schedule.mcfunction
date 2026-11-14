summon marker ~ ~ ~ {Tags:["mob.skill","firelord.beam.delay","firelord.beam.delay.new"]}
scoreboard players set @e[type=marker,tag=firelord.beam.delay.new,sort=nearest,limit=1,distance=..1] zombie.skill_timer 0
scoreboard players set @e[type=marker,tag=firelord.beam.delay.new,sort=nearest,limit=1,distance=..1] fl.volley 1
execute if entity @s[tag=firelord.p3,tag=fl.p3.double] run scoreboard players set @e[type=marker,tag=firelord.beam.delay.new,sort=nearest,limit=1,distance=..1] fl.volley 2
execute if entity @s[tag=firelord.p3,tag=!fl.p3.double] run scoreboard players set @e[type=marker,tag=firelord.beam.delay.new,sort=nearest,limit=1,distance=..1] fl.volley 3
tag @e[type=marker,tag=firelord.beam.delay.new,sort=nearest,limit=1,distance=..1] remove firelord.beam.delay.new
