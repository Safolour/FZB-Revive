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
function zombie:skill/nether/firelord/p5/start
kill @e[type=block_display,tag=firelord.p2.tnt]
kill @e[type=marker,tag=firelord.p2.shot]
kill @e[type=item_display,tag=firelord.p2.mark]
kill @e[type=block_display,tag=firelord.p2.meteor]
kill @s
