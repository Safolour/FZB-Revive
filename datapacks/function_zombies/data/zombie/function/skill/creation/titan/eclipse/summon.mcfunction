scoreboard players operation #owner origin.owner = @s origin.owner
# Living mobs derive invisibility from effects; Invisible NBT alone does not hide a slime.
execute positioned 348.8153 99 139.2782 run summon slime ~ ~ ~ {NoAI:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b,Size:0,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b,show_icon:0b}],Tags:["mob","boss","bossbar","zombieleft","deathmessage","hitable","cantinstakill","cantslow","cantpuncher","cantgyro","skill.titan.eclipse","titan.eclipse.new"],attributes:[{id:"minecraft:max_health",base:1024},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:burning_time",base:0}],data:{name:[{translate:"zb.zombie.name.creation.titan.eclipse"}]}}
scoreboard players set @e[type=slime,tag=titan.eclipse.new,limit=1] zombie.health 6000
scoreboard players set @e[type=slime,tag=titan.eclipse.new,limit=1] zombie.max_health 6000
scoreboard players set @e[type=slime,tag=titan.eclipse.new,limit=1] zombie.armor 75
scoreboard players set @e[type=slime,tag=titan.eclipse.new,limit=1] zombie.bossbar_number 120
scoreboard players operation @e[type=slime,tag=titan.eclipse.new,limit=1] origin.owner = #owner origin.owner
execute as @e[type=slime,tag=titan.eclipse.new,limit=1] run function zombie:summon_uuid
execute as @e[type=slime,tag=titan.eclipse.new,limit=1] run function zombie:summon
tag @e[type=slime,tag=titan.eclipse.new,limit=1] remove path
scoreboard players set @e[type=slime,tag=titan.eclipse.new,limit=1] zombie.health 6000
scoreboard players set @e[type=slime,tag=titan.eclipse.new,limit=1] zombie.health0 6000
scoreboard players set @e[type=slime,tag=titan.eclipse.new,limit=1] zombie.max_health 6000
scoreboard players set @e[type=slime,tag=titan.eclipse.new,limit=1] zombie.armor 75
scoreboard players set @e[type=slime,tag=titan.eclipse.new,limit=1] zombie.armor_init 75
scoreboard players set @e[type=slime,tag=titan.eclipse.new,limit=1] origin.phase_age 0
scoreboard players set @e[type=slime,tag=titan.eclipse.new,limit=1] zombie.motionx 0
scoreboard players set @e[type=slime,tag=titan.eclipse.new,limit=1] zombie.motiony 0
scoreboard players set @e[type=slime,tag=titan.eclipse.new,limit=1] zombie.motionz 0
execute as @e[type=slime,tag=titan.eclipse.new,limit=1] at @s run function zombie:bossbar/if_health

execute positioned 348.8153 99 139.2782 run summon item_display ~ ~ ~ {Tags:["titan.eclipse.shell","titan.eclipse.shell.0","titan.eclipse.shell.black","titan.eclipse.shell.new"],Rotation:[0f,0f],Glowing:1b,glow_color_override:16711680,item:{id:"minecraft:black_concrete",count:1},transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
execute positioned 348.8153 99 139.2782 run summon item_display ~ ~ ~ {Tags:["titan.eclipse.shell","titan.eclipse.shell.1","titan.eclipse.shell.black","titan.eclipse.shell.new"],Rotation:[0f,0f],Glowing:1b,glow_color_override:16711680,item:{id:"minecraft:black_concrete",count:1},transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
execute positioned 348.8153 99 139.2782 run summon item_display ~ ~ ~ {Tags:["titan.eclipse.shell","titan.eclipse.shell.2","titan.eclipse.shell.glass","titan.eclipse.shell.new"],Rotation:[0f,0f],item:{id:"minecraft:black_stained_glass",count:1},transformation:{translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
execute positioned 348.8153 99 139.2782 run summon item_display ~ ~ ~ {Tags:["titan.eclipse.shell","titan.eclipse.shell.3","titan.eclipse.shell.glass","titan.eclipse.shell.new"],Rotation:[0f,0f],item:{id:"minecraft:red_stained_glass",count:1},transformation:{translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players operation @e[type=item_display,tag=titan.eclipse.shell.new] origin.owner = #owner origin.owner
tag @e[type=item_display,tag=titan.eclipse.shell.new] remove titan.eclipse.shell.new

playsound minecraft:item.trident.thunder hostile @a[scores={system.room=4..}] 348.75 92 136.25 3 0
playsound minecraft:entity.lightning_bolt.thunder hostile @a[scores={system.room=4..}] 348.75 92 136.25 3 0
playsound minecraft:item.totem.use hostile @a[scores={system.room=4..}] 348.75 92 136.25 3 0
playsound minecraft:entity.warden.sonic_boom hostile @a[scores={system.room=4..}] 348.75 92 136.25 3 0
playsound minecraft:entity.wither.spawn hostile @a[scores={system.room=4..}] 348.75 99 139.25 10 2
playsound minecraft:entity.allay.hurt hostile @a[scores={system.room=4..}] 348.75 99 139.25 10 0
tag @e[type=slime,tag=titan.eclipse.new] remove titan.eclipse.new
