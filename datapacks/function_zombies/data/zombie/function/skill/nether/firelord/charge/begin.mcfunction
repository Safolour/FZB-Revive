execute if entity @p[scores={stat.player=1},gamemode=adventure,distance=..40] facing entity @p[scores={stat.player=1},gamemode=adventure,distance=..40] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
attribute @s minecraft:knockback_resistance base set 1
tag @s add firelord.charging
scoreboard players set @s zombie.skill_timer 0
team add firelord_glow
team modify firelord_glow color yellow
team join firelord_glow @s
data merge entity @s {NoAI:1b,Glowing:1b,Motion:[0d,0d,0d]}
playsound entity.evoker.prepare_summon hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 2
playsound entity.warden.sonic_charge hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 1
