
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","creeperdamage","creepermotion"],attributes:[{id:"attack_damage",base:10},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{chest:{id:leather_chestplate,count:1,components:{dyed_color:16777215}},legs:{id:leather_leggings,count:1,components:{dyed_color:16777215}},mainhand:{id:stone_sword,count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}],enchantment_glint_override:1b}}},data:{name:[{translate:zb.zombie.name.bionicszombie,color:white}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 2900
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 33
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 300

tag @n[type=zombie,tag=chosen] remove chosen
