summon zombie 300.5 73 150.5 {NoAI:1b,PersistenceRequired:1b,Tags:["chosen","mob","hitable","boss","bossbar","zombieleft","deathmessage","cantinstakill","cantslow","cantpuncher","cantgyro","skill.origin","origin.intro"],attributes:[{id:"attack_damage",base:0},{id:"burning_time",base:0}],equipment:{head:{id:"player_head",count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjIyMGJmNWIyMmM3NTM5YmRlOWI3NDQ1NTY3ZGNlNzRhZTQyMDA0ZWNiNmIyODI0ZTI2MTY2MWQ0OThjZDJiNCJ9fX0="}]}}},chest:{id:"netherite_chestplate",count:1,components:{trim:{material:"netherite",pattern:"wild"}}},legs:{id:"leather_leggings",count:1,components:{dyed_color:4342338}},feet:{id:"leather_boots",count:1,components:{dyed_color:0}}},data:{name:[{translate:"zb.zombie.name.creation.origin"}]}}
scoreboard players set @n[type=zombie,tag=chosen] zombie.health 150000
scoreboard players set @n[type=zombie,tag=chosen] zombie.max_health 150000
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 80
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 33
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 100
scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_number 15
scoreboard players set @n[type=zombie,tag=chosen] zombie.skill.damage 13
tag @n[type=zombie,tag=chosen] remove chosen
# 出场雷声按玩家位置播放，闪电位于录像中固定的北侧坐标。
execute as @a[scores={system.room=4..}] at @s run playsound minecraft:entity.lightning_bolt.thunder hostile @s ~ ~ ~ 2 1
execute as @a[scores={system.room=4..}] at @s run playsound minecraft:entity.lightning_bolt.impact hostile @s ~ ~ ~ 2 1
summon minecraft:lightning_bolt 300.5 110 120.5 {Silent:1b}
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.spawn",with:[{translate:"zb.zombie.name.creation.origin"}],color:"red"}
