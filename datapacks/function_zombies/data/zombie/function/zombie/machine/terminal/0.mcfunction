
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","cantinstakill","babyzombie","creeperdamage"],attributes:[{id:"attack_damage",base:17},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{head:{id:player_head,count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWFhNWExZDJjNWVlMTc2MTJhYTVlYmUxNGM3MzMxNmFlOGEzNDA3MjcxYTA1MDJkNGE3OTYxZjVjMWM2ZCJ9fX0="}]}}},chest:{id:leather_chestplate,count:1,components:{dyed_color:0}},legs:{id:leather_leggings,count:1,components:{dyed_color:0}},feet:{id:leather_boots,count:1,components:{dyed_color:9961472}},mainhand:{id:netherite_sword,count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]}}},data:{name:[{translate:zb.zombie.name.terminal,color:dark_red}]},IsBaby:1b}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 5000
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 34
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 100

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 300

tag @n[type=zombie,tag=chosen] remove chosen
