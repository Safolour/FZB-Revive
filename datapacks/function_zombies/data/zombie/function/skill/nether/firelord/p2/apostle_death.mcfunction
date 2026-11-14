summon lightning_bolt ~ ~1 ~
summon lightning_bolt ~ ~1 ~
summon lightning_bolt ~ ~1 ~
kill @e[type=item_display,tag=firelord.p2.laser_rune]
kill @e[type=marker,tag=firelord.p2.linktarget]
kill @e[type=text_display,tag=firelord.p2.icon]
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle end_rod ~ ~1 ~ 0.8 1 0.8 0.2 60 force @a[scores={particle=0}]
particle end_rod ~ ~1 ~ 0.8 1 0.8 0.2 30 force @a[scores={particle=1}]
particle flash ~ ~4.05 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~4.05 ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle end_rod ~ ~4.05 ~ 0 0 0 0.5 20 force @a[scores={particle=0}]
particle end_rod ~ ~4.05 ~ 0 0 0 0.5 10 force @a[scores={particle=1}]
particle firework ~ ~4.05 ~ 0 0 0 0.5 20 force @a[scores={particle=0}]
particle firework ~ ~4.05 ~ 0 0 0 0.5 10 force @a[scores={particle=1}]
playsound item.trident.return hostile @a[scores={system.room=4..}] ~ ~4 ~ 3 0
playsound entity.player.levelup hostile @a[scores={system.room=4..}] ~ ~4 ~ 3 0
summon armor_stand ~ ~4 ~ {Tags:["firelord.p2.shieldbar"],Marker:1b,Invisible:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:[{translate:"zb.zombie.name.ashesindex.shield"}]}
scoreboard players set @e[type=armor_stand,tag=firelord.p2.shieldbar,distance=..6] zombie.skill_timer 0
summon marker ~ ~ ~ {Tags:["mob.skill","firelord.p2.safe"]}
scoreboard players set @e[type=marker,tag=firelord.p2.safe,sort=nearest,limit=1] zombie.skill_timer 0
scoreboard players set @e[type=marker,tag=firelord.p2.safe,sort=nearest,limit=1] zombie.health 200000
scoreboard players set @e[type=marker,tag=firelord.p2.safe,sort=nearest,limit=1] zombie.max_health 200000
execute positioned ~ ~1.5 ~ run function map:powerup/summon/purification
execute positioned ~1 ~1.5 ~ run function map:powerup/summon/purification
execute positioned ~-1 ~1.5 ~ run function map:powerup/summon/maxammo
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.6"}
scoreboard players add zombie.uuid zombie.uuid 1
scoreboard players operation @e[type=marker,tag=firelord.p2.safe,sort=nearest,limit=1] zombie.uuid = zombie.uuid zombie.uuid
scoreboard players set @e[type=marker,tag=firelord.p2.safe,sort=nearest,limit=1] zombie.bossbar_number 100
scoreboard players set @e[type=marker,tag=firelord.p2.safe,sort=nearest,limit=1] zombie.bossbar_speed_stay 20
scoreboard players set @e[type=marker,tag=firelord.p2.safe,sort=nearest,limit=1] zombie.bossbar_speed_fade 2
