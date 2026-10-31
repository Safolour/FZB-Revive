
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","portalmotion","warped","firezb","skill.teleporter"],attributes:[{id:"attack_damage",base:7},{id:"safe_fall_distance",base:10},{id:burning_time,base:0}],equipment:{head:{id:"player_head",components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjRiYWE5ZGNmODQyNTU3ODJiNTcyMjM1NzQzNzllNDJjMjM1MGYzYjg4ODE5YmE1YWVmZGRhNGVjMGU3In19fQ=="}]}}},chest:{id:leather_chestplate,count:1,components:{dyed_color:7616924,trim:{material:amethyst,pattern:"coast"}}},legs:{id:leather_leggings,count:1,components:{dyed_color:7616924,trim:{material:amethyst,pattern:"coast"}}},feet:{id:leather_boots,count:1,components:{dyed_color:7616924,trim:{material:amethyst,pattern:"coast"}}},mainhand:{id:"iron_horse_armor",components:{enchantment_glint_override:true}}},data:{name:[{translate:zb.zombie.name.nether.warped.teleporter,color:"dark_purple"}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 800
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 30
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 450

tag @n[type=zombie,tag=chosen] remove chosen
