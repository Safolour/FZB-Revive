execute unless entity @s[tag=skill.titan,tag=!titan.awaiting,tag=!titan.eclipse.cast,tag=!titan.scatter.cast] run return 0
execute unless entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] run return 0
function zombie:skill/creation/titan/teleport/glow_clear
tag @s add titan.scatter.cast
tag @s remove titan.scatter.used
scoreboard players set @s titan.scat_age 0
scoreboard players add #next origin.fx_id 1
scoreboard players operation @s titan.cast_id = #next origin.fx_id
execute facing entity @p[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] feet run tp @s ~ ~ ~ ~ 90
execute store result score @s titan.yaw run data get entity @s Rotation[0] 1000
data merge entity @s {NoAI:1b,Glowing:1b,Motion:[0d,0d,0d]}
team join titan.white @s
execute as @a[scores={system.room=4..}] run tellraw @s {translate:"zb.zombie.titan.tellraw.1",with:[{translate:"zb.zombie.name.creation.titan"}]}
execute as @a[scores={system.room=4..}] run title @s reset
execute as @a[scores={system.room=4..}] run title @s times 0 40 0
execute as @a[scores={system.room=4..}] run title @s title {translate:"zb.zombie.laser"}
execute as @a[scores={system.room=4..}] run title @s subtitle {translate:"zb.zombie.titan.title.1"}
execute as @a[scores={system.room=4..}] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 2 1
