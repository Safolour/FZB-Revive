function zombie:skill/creation/titan/teleport/fx
playsound minecraft:entity.ender_eye.death hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0
playsound minecraft:block.bell.resonate hostile @a[scores={system.room=4..}] ~ ~ ~ 2 1
playsound minecraft:entity.warden.death hostile @a[scores={system.room=4..}] ~ ~ ~ 2 1
particle minecraft:squid_ink ~ ~1 ~ 0 0 0 0.2 50 force @a[scores={system.room=4..,particle=0}]
execute store success score #titan.destination origin.target run function zombie:skill/creation/titan/teleport/random_position
execute if score #titan.destination origin.target matches 0 run return run function zombie:skill/creation/titan/teleport/finish
scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=marker,tag=titan.tp.destination] if score @s origin.owner = #owner origin.owner run kill @s
execute at @s run summon marker ~ ~ ~ {Tags:["mob.skill","titan.tp.destination","titan.tp.new"]}
scoreboard players operation @e[type=marker,tag=titan.tp.new,limit=1] origin.owner = @s origin.owner
tag @e[type=marker,tag=titan.tp.new] remove titan.tp.new
data merge entity @s {NoAI:1b,NoGravity:1b,Motion:[0d,0d,0d]}
scoreboard players set @s zombie.motionx 0
scoreboard players set @s zombie.motiony 0
scoreboard players set @s zombie.motionz 0
tp @s ~ ~10000 ~
