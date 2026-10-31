
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","warped","firezb","fireaspect","skill.soulfirezombie"],attributes:[{id:"attack_damage",base:5},{id:"safe_fall_distance",base:10},{id:burning_time,base:0}],equipment:{chest:{id:leather_chestplate,count:1,components:{dyed_color:38774}},legs:{id:leather_leggings,count:1,components:{dyed_color:164794}},feet:{id:leather_boots,count:1,components:{dyed_color:83579,enchantment_glint_override:true}},mainhand:{id:"diamond_hoe",count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}],enchantments:{knockback:1}}}},data:{name:[{translate:zb.zombie.name.nether.warped.soulfirezombie,color:dark_aqua}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 400
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 31
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 350

tag @n[type=zombie,tag=chosen] remove chosen
