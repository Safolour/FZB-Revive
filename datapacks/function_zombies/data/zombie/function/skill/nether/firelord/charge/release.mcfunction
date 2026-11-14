execute if entity @p[scores={stat.player=1},gamemode=adventure,distance=..40] positioned ~ ~1.7 ~ rotated as @s run function zombie:skill/nether/firelord/charge/projectile
execute if entity @s[tag=fl.volley.first,tag=!firelord.p3] run function zombie:skill/nether/firelord/beam/schedule
execute if entity @s[tag=firelord.p3] if score @s fl.shots matches 1 run function zombie:skill/nether/firelord/beam/schedule
tag @s remove fl.volley.first
playsound entity.blaze.shoot hostile @a[scores={system.room=4..}] ~ ~1.7 ~ 1.5 0.5
playsound item.totem.use hostile @a[scores={system.room=4..}] ~ ~1.7 ~ 1.5 0.5
execute unless data storage map:r40 p5_closed run scoreboard players add temperature0 area.temperature 3
function map:area/lab/temperature/update
attribute @s minecraft:knockback_resistance base set 0
tag @s remove firelord.charging
data merge entity @s {NoAI:0b,Glowing:0b}
team join mob @s
scoreboard players remove @s fl.shots 1
scoreboard players set @s zombie.skill_timer 155
execute if score @s fl.shots matches 1.. run scoreboard players set @s zombie.skill_timer 0
execute if score @s fl.shots matches 1.. run tag @s add fl.charge.wait
execute if score @s fl.shots matches ..0 run tag @s add fl.choose.other
execute if score @s fl.shots matches ..0 run scoreboard players set @s zombie.skill_timer 0
