tag @s add firelord.p2.first_spawn
scoreboard players set @s fl.p2.ashes 0
execute as @e[type=ghast,tag=firelord.p2.ghast,limit=1] at @s run playsound entity.ghast.warn hostile @a[scores={system.room=4..}] ~ ~ ~ 3 1
