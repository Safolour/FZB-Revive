tag @e[type=marker,tag=firelord.p4.legion.clock] add firelord.p4.legion.third_first
scoreboard players set @e[type=marker,tag=firelord.p4.legion.clock] zombie.skill_timer 0
summon stray ~ ~ ~ {Tags:["mob","deathmessage","hitable","zombieleft","bossbar","cantinstakill","firelord.p4.commander"],PersistenceRequired:1b,Glowing:1b,attributes:[{id:"attack_damage",base:27},{id:"knockback_resistance",base:0},{id:"scale",base:1.8}],equipment:{head:{id:"leather_helmet",count:1,components:{dyed_color:39846,trim:{material:"diamond",pattern:"coast"}}},chest:{id:"leather_chestplate",count:1,components:{dyed_color:37030,trim:{material:"diamond",pattern:"coast"}}},mainhand:{id:"diamond_sword",count:1,components:{attribute_modifiers:[{id:"attack_damage",amount:0,type:"attack_damage",operation:"add_value"}]}}},data:{name:[{translate:"zb.zombie.name.spiritorder"}]}}
scoreboard players set @e[type=stray,tag=firelord.p4.commander,sort=nearest,limit=1,distance=..1] zombie.health 10000
scoreboard players set @e[type=stray,tag=firelord.p4.commander,sort=nearest,limit=1,distance=..1] zombie.max_health 10000
scoreboard players set @e[type=stray,tag=firelord.p4.commander,sort=nearest,limit=1,distance=..1] zombie.bossbar_number 30
scoreboard players set @e[type=stray,tag=firelord.p4.commander,sort=nearest,limit=1,distance=..1] zombie.bossbar_speed_stay 5
scoreboard players set @e[type=stray,tag=firelord.p4.commander,sort=nearest,limit=1,distance=..1] zombie.bossbar_speed_fade 5
scoreboard players set @e[type=stray,tag=firelord.p4.commander,sort=nearest,limit=1,distance=..1] zombie.speed 20
scoreboard players set @e[type=stray,tag=firelord.p4.commander,sort=nearest,limit=1,distance=..1] zombie.armor 40
scoreboard players set @e[type=stray,tag=firelord.p4.commander,sort=nearest,limit=1,distance=..1] zombie.knockresistance 100
summon marker ~ ~4.2 ~ {Tags:["firelord.p4.commander.linktarget"]}
summon text_display ~ ~4.2 ~ {Tags:["mob.skill","firelord.p4.commander.icon"],billboard:"center",background:0,see_through:1b,shadow:1b,text:{translate:"zb.zombie.spirit"},transformation:{translation:[0f,0f,0f],scale:[5f,5f,5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.spawn",with:[{translate:"zb.zombie.name.spiritorder"}]}
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.5.1",with:[{translate:"zb.zombie.name.spiritorder"},{translate:"zb.zombie.name.spiritgolem"}]}
function zombie:skill/nether/firelord/p4/legion/land
kill @s
