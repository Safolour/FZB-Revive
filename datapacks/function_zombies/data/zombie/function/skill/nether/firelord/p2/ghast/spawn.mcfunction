summon ghast ~ ~ ~ {Tags:["firelord.p2.ghast","zombieleft","hitable","cantinstakill","nogold"],NoAI:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b,Health:1024f,attributes:[{id:"minecraft:max_health",base:1024.0}]}
scoreboard players set @e[type=ghast,tag=firelord.p2.ghast,sort=nearest,limit=1] zombie.health 1
particle flash ~ ~2 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~2 ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle explosion ~ ~2 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle explosion ~ ~2 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute as @a[scores={system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run playsound entity.ghast.hurt hostile @s ~ ~ ~ 2 0
scoreboard players set @e[type=ghast,tag=firelord.p2.ghast,sort=nearest,limit=1] zombie.skill_timer 0

summon marker 300.5 100 150 {Tags:["mob.skill","firelord.p2.ghast.target"]}
execute as @e[type=ghast,tag=firelord.p2.ghast,sort=nearest,limit=1] at @s facing 300.5 100 150 run function zombie:skill/nether/firelord/p2/ghast/initial_target
scoreboard players set @e[type=ghast,tag=firelord.p2.ghast,sort=nearest,limit=1] zombie.motionx 0
scoreboard players set @e[type=ghast,tag=firelord.p2.ghast,sort=nearest,limit=1] zombie.motiony 0
scoreboard players set @e[type=ghast,tag=firelord.p2.ghast,sort=nearest,limit=1] zombie.motionz 0

tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.spawn",with:[{translate:"zb.zombie.name.neutralization"}]}

scoreboard players set @e[type=ghast,tag=firelord.p2.ghast,sort=nearest,limit=1] fl.p2.shot 40
