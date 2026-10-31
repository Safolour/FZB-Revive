
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","spirit","firezb","cantinstakill","skill.monhanfollower"],attributes:[{id:"attack_damage",base:8},{id:"safe_fall_distance",base:10},{id:burning_time,base:0}],equipment:{head:{id:player_head,count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzg5NTdkNTAyM2M5MzdjNGM0MWFhMjQxMmQ0MzQxMGJkYTIzY2Y3OWE5ZjZhYjM2Yjc2ZmVmMmQ3YzQyOSJ9fX0="}]}}},chest:{id:leather_chestplate,count:1,components:{dyed_color:8519680,trim:{material:"gold",pattern:"host"}}},legs:{id:leather_leggings,count:1,components:{dyed_color:5767168,trim:{material:"gold",pattern:"host"}}},feet:{id:leather_boots,count:1,components:{dyed_color:3276800,trim:{material:"gold",pattern:"host"}}},mainhand:{id:golden_sword,count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}],enchantment_glint_override:true}}},data:{name:[{translate:zb.zombie.name.nether.spirit.follower,with:[{"translate":"zb.zombie.name.monhan","color":"#ff674e","shadow_color":[1f,0.8f,0.8f,1f]}],color:"red"}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 2400
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 30
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 300
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 350

tag @n[type=zombie,tag=chosen] remove chosen
