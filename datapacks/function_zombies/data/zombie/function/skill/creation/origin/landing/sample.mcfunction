execute store result score #now origin.air_tick run time query gametime
scoreboard players operation #previous origin.air_tick = #now origin.air_tick
scoreboard players remove #previous origin.air_tick 1
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..48] at @s run function zombie:skill/creation/origin/landing/player
