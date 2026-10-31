
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","ashes","firezb"],attributes:[{id:"attack_damage",base:10},{id:"safe_fall_distance",base:10},{id:burning_time,base:0}],equipment:{head:{id:"player_head",components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGRiZjhmNmNjZWZkOWU5Y2Y0NWNiYzIzZGI1ODFkYjI4OGM4MmRmOTQxZWYxZTNhMTZmMTgyYTY1ZTE4ZDIifX19"}]}}},chest:{id:leather_chestplate,count:1,components:{dyed_color:16769093}},legs:{id:leather_leggings,count:1,components:{dyed_color:16769093}},feet:{id:leather_boots,count:1,components:{dyed_color:16769093}},mainhand:{id:golden_sword,count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]}}},data:{name:[{translate:zb.zombie.name.nether.ashes.meltzombie,color:yellow}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 1400
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 27
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 50

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 350

tag @n[type=zombie,tag=chosen] remove chosen
