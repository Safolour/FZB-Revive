
summon zombie ~ ~ ~ {Tags:["floating","chosen","mob","hitable","zombieleft","portalmotion","skill.obviate","skill.obviate.fly","skill.obviate.shoot","babyzombie"],attributes:[{id:"attack_damage",base:3},{id:"safe_fall_distance",base:10},{id:"gravity",base:0.004},{id:"scale",base:1.2},{id:"burning_time",base:0}],equipment:{head:{id:player_head,count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTI1NmY3ZmY1MmU3YmZkODE4N2I4M2RkMzRkZjM0NTAyOTUyYjhkYjlmYWZiNzI4OGViZWJiNmU3OGVmMTVmIn19fQ=="}]}}},chest:{id:"iron_chestplate",count:1,components:{enchantments:{protection:1},enchantment_glint_override:true,trim:{material:"amethyst",pattern:"eye"}}},legs:{id:leather_leggings,count:1,components:{dyed_color:12619210}}},data:{name:[{translate:zb.zombie.name.obviate,color:dark_purple}]},IsBaby:1b,Silent:1b}

effect give @n[type=zombie,tag=chosen] invisibility infinite 0 true

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 1100
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 20
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 100
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 400

scoreboard players operation @n[type=zombie,tag=chosen] zombie.max_health = @n[type=zombie,tag=chosen] zombie.health

tag @n[type=zombie,tag=chosen] remove chosen
