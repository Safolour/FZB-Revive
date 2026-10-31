
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","crimson","firezb","fireaspect","skill.firezombie"],attributes:[{id:"attack_damage",base:4},{id:"safe_fall_distance",base:10},{id:burning_time,base:0}],equipment:{chest:{id:leather_chestplate,count:1,components:{dyed_color:16755200}},legs:{id:leather_leggings,count:1,components:{dyed_color:16755200}},feet:{id:leather_boots,count:1,components:{dyed_color:16755200,enchantment_glint_override:1b}},mainhand:{id:"blaze_rod",components:{enchantments:{fire_aspect:1}}}},data:{name:[{translate:zb.zombie.name.nether.crimson.firezombie,color:yellow}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 300
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 30
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 350

tag @n[type=zombie,tag=chosen] remove chosen
