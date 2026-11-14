summon zombie ~ ~ ~ {Tags:["mob","zombieleft","hitable","firelord.p4.minion"],PersistenceRequired:1b,Invulnerable:0b,attributes:[{id:"attack_damage",base:8},{id:"burning_time",base:0}],equipment:{head:{id:"player_head",count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWRjN2NhOGRhYzhjNTZjMjE2OTFkNDJjZjQxYjM4N2I2ODE3MWVlNmNiNGFlYjViZTc2NzU0OWJjOGRlYjMifX19"}]}}},chest:{id:"leather_chestplate",count:1,components:{dyed_color:12050667}},legs:{id:"leather_leggings",count:1,components:{dyed_color:12050667}},feet:{id:"leather_boots",count:1,components:{dyed_color:1212571}}},data:{name:[{translate:"zb.zombie.name.spiritgolem"}]}}
execute if entity @e[type=stray,tag=firelord.p4.commander,scores={zombie.health=1..}] run data merge entity @e[type=zombie,tag=firelord.p4.minion,sort=nearest,limit=1,distance=..1] {Invulnerable:1b}
scoreboard players set @e[type=zombie,tag=firelord.p4.minion,sort=nearest,limit=1,distance=..1] zombie.health 2400
scoreboard players set @e[type=zombie,tag=firelord.p4.minion,sort=nearest,limit=1,distance=..1] zombie.health0 2400
scoreboard players set @e[type=zombie,tag=firelord.p4.minion,sort=nearest,limit=1,distance=..1] zombie.speed 25
function zombie:skill/nether/firelord/p4/legion/land
kill @s
