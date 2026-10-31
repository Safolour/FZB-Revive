
summon zombie ~ ~ ~ {Tags:["floating","chosen","mob","hitable","zombieleft","portalmotion","skill.disperse","skill.disperse.fly","skill.disperse.shoot"],attributes:[{id:"attack_damage",base:0},{id:"safe_fall_distance",base:10},{id:"gravity",base:0.004},{id:"burning_time",base:0}],equipment:{head:{id:player_head,count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2MxZTJiODJkYjEwYWQyNWNhNDEzNDVlOTI0NWY1ODQ3ZTc2NzYwY2QyNDVjNDhlNWFmMWZkODk4NWVmOTE1In19fQ=="}]}}},chest:{id:"iron_chestplate",count:1,components:{enchantments:{protection:1},enchantment_glint_override:true,trim:{material:"amethyst",pattern:"eye"}}},legs:{id:leather_leggings,count:1,components:{dyed_color:7804810}}},data:{name:[{translate:zb.zombie.name.disperse,color:dark_purple}]},Silent:1b}

effect give @n[type=zombie,tag=chosen] invisibility infinite 0 true

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 1800
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 20
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 100
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 50

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 300

scoreboard players operation @n[type=zombie,tag=chosen] zombie.max_health = @n[type=zombie,tag=chosen] zombie.health

tag @n[type=zombie,tag=chosen] remove chosen
