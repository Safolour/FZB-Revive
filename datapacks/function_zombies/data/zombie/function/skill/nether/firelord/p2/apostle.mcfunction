summon wither_skeleton ~ ~ ~ {Tags:["mob","zombieleft","firelord.p2.apostle","bossbar","deathmessage","cantinstakill"],PersistenceRequired:1b,Glowing:1b,Invulnerable:1b,attributes:[{id:"attack_damage",base:12},{id:"knockback_resistance",base:0},{id:"scale",base:1.5}],equipment:{head:{id:"leather_helmet",count:1,components:{dyed_color:10878976,trim:{material:"redstone",pattern:"coast"}}},chest:{id:"leather_chestplate",count:1,components:{dyed_color:10878976,trim:{material:"redstone",pattern:"coast"}}},mainhand:{id:"golden_sword",count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]}}},data:{name:[{translate:"zb.zombie.name.ashesindex"}]}}
scoreboard players set @e[type=wither_skeleton,tag=firelord.p2.apostle,sort=nearest,limit=1] zombie.health 10000
scoreboard players set @e[type=wither_skeleton,tag=firelord.p2.apostle,sort=nearest,limit=1] zombie.max_health 10000
scoreboard players set @e[type=wither_skeleton,tag=firelord.p2.apostle,sort=nearest,limit=1] zombie.bossbar_number 30
scoreboard players set @e[type=wither_skeleton,tag=firelord.p2.apostle,sort=nearest,limit=1] zombie.bossbar_speed_stay 5
scoreboard players set @e[type=wither_skeleton,tag=firelord.p2.apostle,sort=nearest,limit=1] zombie.bossbar_speed_fade 5
scoreboard players set @e[type=wither_skeleton,tag=firelord.p2.apostle,sort=nearest,limit=1] zombie.speed 20
summon text_display ~ ~4.2 ~ {Tags:["mob.skill","firelord.p2.icon"],billboard:"center",background:0,see_through:1b,shadow:1b,text:{translate:"zb.zombie.ashes"},transformation:{translation:[0f,0f,0f],scale:[5f,5f,5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=wither_skeleton,tag=firelord.p2.apostle,sort=nearest,limit=1] zombie.armor 40
scoreboard players set @e[type=wither_skeleton,tag=firelord.p2.apostle,sort=nearest,limit=1] zombie.knockresistance 100
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute as @a[scores={system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run playsound entity.lightning_bolt.thunder hostile @s ~ ~ ~ 2 1
execute as @a[scores={system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run playsound entity.lightning_bolt.impact hostile @s ~ ~ ~ 2 1
