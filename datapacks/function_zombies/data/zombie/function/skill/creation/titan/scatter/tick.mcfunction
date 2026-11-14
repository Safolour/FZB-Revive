scoreboard players add @s titan.scat_age 1
scoreboard players operation #scatter.cast titan.cast_id = @s titan.cast_id
scoreboard players operation #owner origin.owner = @s origin.owner
execute store result storage titan_skill scatter.yaw float 0.001 run scoreboard players get @s titan.yaw
data merge entity @s {NoAI:1b,Motion:[0d,0d,0d]}
scoreboard players set @s zombie.motionx 0
scoreboard players set @s zombie.motiony 0
scoreboard players set @s zombie.motionz 0
function zombie:skill/creation/titan/scatter/beam_tick
execute if score @s titan.scat_age matches 45.. run function zombie:skill/creation/titan/scatter/finish
