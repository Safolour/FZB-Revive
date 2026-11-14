tag @s remove firelord.p3.eclipse.next
scoreboard players set @s fl.circleclock 0
# Ensure the new timer exists on worlds upgraded with /reload.
scoreboard objectives add fl.sunflare dummy
scoreboard objectives add fl.eclipse.purify dummy
execute anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["mob.skill","firelord.eclipse.ball","firelord.eclipse.new"]}
tp @e[type=marker,tag=firelord.eclipse.new,sort=nearest,limit=1] ~ ~1.6 ~ ~ ~
scoreboard players set @e[type=marker,tag=firelord.eclipse.new,sort=nearest,limit=1] fl.eclipse.purify 0
tag @e[type=marker,tag=firelord.eclipse.new,sort=nearest,limit=1] remove firelord.eclipse.new
playsound entity.wither.spawn hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 2
playsound item.totem.use hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 0
playsound entity.allay.hurt hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 0
tag @s remove firelord.eclipse.charge
data merge entity @s {NoAI:0b,Glowing:0b}
team join mob @s
scoreboard players set @s zombie.skill_timer 0
tag @s add fl.choose.other

execute unless entity @s[tag=firelord.eclipse.repeat] run tag @s add firelord.sunflare.pending
execute unless entity @s[tag=firelord.eclipse.repeat] run scoreboard players set @s fl.sunflare 0
tag @s remove firelord.eclipse.repeat
execute if entity @s[tag=firelord.p4.pending] at @s run function zombie:skill/nether/firelord/p4/begin
