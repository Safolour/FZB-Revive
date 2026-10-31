
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","warped","firezb","skill.warpedguardianzombie"],attributes:[{id:"attack_damage",base:3},{id:"safe_fall_distance",base:10},{id:burning_time,base:0}],equipment:{head:{id:"player_head",components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGY4YjJmMTNiNzM0MGY3NzQ0NTRkODIwOWU1ZmYyZTIxZGYzMzg1ZGY1MmJmMzE4YjJmNjJjNjJhMTI4NGM0OSJ9fX0="}]}}},chest:{id:leather_chestplate,count:1,components:{dyed_color:52443}},legs:{id:leather_leggings,count:1,components:{dyed_color:38576}},feet:{id:leather_boots,count:1,components:{dyed_color:28270}}},data:{name:[{translate:zb.zombie.name.nether.warped.guardianzombie,color:"#008b8b"}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 500
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 30
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 120
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 50

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 350

tag @n[type=zombie,tag=chosen] remove chosen
