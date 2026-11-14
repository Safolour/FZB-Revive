execute at @e[type=block_display,tag=firelord.p2.tnt.landed,limit=1] positioned ~ ~1 ~ run particle explosion_emitter ~ ~ ~ 5 0 5 0 10 force @a[scores={particle=0}]
execute at @e[type=block_display,tag=firelord.p2.tnt.landed,limit=1] positioned ~ ~1 ~ run particle explosion_emitter ~ ~ ~ 5 0 5 0 5 force @a[scores={particle=1}]
execute at @e[type=block_display,tag=firelord.p2.tnt.landed,limit=1] positioned ~ ~1 ~ run particle campfire_cosy_smoke ~ ~ ~ 5 1 5 0 1000 force @a[scores={particle=0}]
execute at @e[type=block_display,tag=firelord.p2.tnt.landed,limit=1] positioned ~ ~1 ~ run particle campfire_cosy_smoke ~ ~ ~ 5 1 5 0 500 force @a[scores={particle=1}]
execute at @e[type=block_display,tag=firelord.p2.tnt.landed,limit=1] positioned ~ ~-2.4 ~ run playsound block.end_portal.spawn hostile @a[scores={system.room=4..}] ~ ~ ~ 2 2
execute at @e[type=block_display,tag=firelord.p2.tnt.landed,limit=1] positioned ~ ~-2.4 ~ run playsound block.end_portal.spawn hostile @a[scores={system.room=4..}] ~ ~ ~ 2 1
execute at @e[type=block_display,tag=firelord.p2.tnt.landed,limit=1] positioned ~ ~-2.4 ~ run playsound block.end_portal.spawn hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0
execute at @e[type=block_display,tag=firelord.p2.tnt.landed,limit=1] positioned ~ ~-2.4 ~ run playsound item.trident.thunder hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0
execute at @e[type=block_display,tag=firelord.p2.tnt.landed,limit=1] positioned ~ ~-2.4 ~ run playsound entity.lightning_bolt.thunder hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0
execute at @e[type=block_display,tag=firelord.p2.tnt.landed,limit=1] positioned ~ ~-2.4 ~ run playsound block.bell.resonate hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0
execute at @e[type=block_display,tag=firelord.p2.tnt.landed,limit=1] positioned ~ ~-2.4 ~ run playsound entity.warden.sonic_boom hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s unless entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run function zombie:skill/nether/firelord/p2/bomb_hit
execute as @e[type=marker,tag=firelord.p2.safe] at @s run function zombie:skill/nether/firelord/p2/safe_hit_bomb
function zombie:skill/nether/firelord/p2/bomb_price
execute as @a[scores={system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run playsound block.note_block.pling hostile @s ~ ~ ~ 2 1
schedule function zombie:skill/nether/firelord/p2/bomb_heat 20t replace
tag @e[type=ghast,tag=firelord.p2.ghast] remove firelord.p2.bombing
tag @e[type=ghast,tag=firelord.p2.ghast] remove firelord.p2.bomb_arrived
tag @e[type=ghast,tag=firelord.p2.ghast] add firelord.p2.patrol
tag @e[type=ghast,tag=firelord.p2.ghast] add mob.skill
scoreboard players set @e[type=ghast,tag=firelord.p2.ghast] zombie.skill_timer 300
kill @e[type=block_display,tag=firelord.p2.tnt]
kill @e[type=marker,tag=firelord.p2.shot]
kill @e[type=item_display,tag=firelord.p2.mark]
kill @e[type=block_display,tag=firelord.p2.meteor]
tag @s remove firelord.p2.bomb_countdown
tag @s remove firelord.p2.bomb
function zombie:skill/nether/firelord/shield/end
execute unless entity @s[tag=firelord.p3] run tag @s add firelord.eclipse.wait
execute if entity @s[tag=firelord.eclipse.wait] run data merge entity @s {NoAI:1b,Motion:[0d,0d,0d]}
execute unless entity @s[tag=firelord.p3] unless entity @e[type=marker,tag=firelord.eclipse.trigger] run summon marker ~ ~ ~ {Tags:["mob.skill","firelord.eclipse.trigger"]}
execute unless entity @s[tag=firelord.p3] run scoreboard players set @s fl.volley 1
execute unless entity @s[tag=firelord.p3] run tag @s remove fl.firstcharge.done
execute unless entity @s[tag=firelord.p3] run tag @s remove fl.firstcharge.pending
execute unless entity @s[tag=firelord.p3] run tag @s add fl.initial.charge
execute unless entity @s[tag=firelord.p3] run scoreboard players set @s fl.circleclock 0
execute unless entity @s[tag=firelord.p3] run tag @s remove firelord.p3.eclipse.next
tag @s add firelord.p3
function map:area/lab/floor/nether/final/1
