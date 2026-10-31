
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","firezb","skill.remains.bomber"],attributes:[{id:"attack_damage",base:0.1},{id:"safe_fall_distance",base:10}],equipment:{head:{id:tnt},chest:{id:netherite_chestplate,components:{trim:{material:"redstone",pattern:"bolt"}}},legs:{id:leather_leggings,count:1,components:{dyed_color:16776701}},feet:{id:leather_boots,count:1,components:{dyed_color:9109504}},mainhand:{id:player_head,count:1,components:{enchantments:{knockback:2},enchantment_glint_override:false,profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjU3MWJhZDQwN2UyMTg1NDIyMTZhYmQwNjQ2NmI4YTk4N2RkMTg0NWM1NzViN2Y4YTRmZTIxYWM4ZGYzIn19fQ=="}]}}}},data:{name:[{translate:zb.zombie.name.remains.bomber,color:"#ffc2b7"}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 560
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 27
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance -400

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 350

tag @n[type=zombie,tag=chosen] remove chosen
