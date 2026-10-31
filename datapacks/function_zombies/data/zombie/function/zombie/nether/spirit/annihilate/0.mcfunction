
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","spirit","firezb","cantinstakill","cantslow","babyzombie","skill.annihilate"],attributes:[{id:"attack_damage",base:15},{id:"safe_fall_distance",base:10},{id:burning_time,base:0}],equipment:{head:{id:leather_helmet,count:1,components:{dyed_color:0,trim:{material:"amethyst",pattern:"silence"}}},chest:{id:leather_chestplate,count:1,components:{dyed_color:0,trim:{material:"amethyst",pattern:"silence"}}},legs:{id:leather_leggings,count:1,components:{dyed_color:0,trim:{material:"amethyst",pattern:"silence"}}},feet:{id:leather_boots,count:1,components:{dyed_color:0,trim:{material:"amethyst",pattern:"silence"}}},mainhand:{id:iron_sword,count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}],enchantment_glint_override:true}}},data:{name:[{translate:zb.zombie.name.nether.spirit.annihilate,color:black}]},IsBaby:1b}

effect give @n[type=zombie,tag=chosen] glowing infinite 0 true

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 2000
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 10
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 100

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 350

tag @n[type=zombie,tag=chosen] remove chosen
