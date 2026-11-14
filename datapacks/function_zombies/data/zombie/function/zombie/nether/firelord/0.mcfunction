# 火焰领主基础实体。调用者提供出生位置；技能与回合阶段尚未接入。
summon zombie ~ ~ ~ {PersistenceRequired:1b,Tags:["chosen","mob","hitable","boss","bossbar","zombieleft","deathmessage","cantinstakill","cantslow","cantpuncher","cantgyro","firezb","skill.firelord"],attributes:[{id:"attack_damage",base:27},{id:"burning_time",base:0},{id:"knockback_resistance",base:0}],equipment:{head:{id:"player_head",count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTVjMjNiNzliZWRjNWNhOTJkODQ4Nzg0OTVkNjlkZmM2YjQ3MjI0YjUxYzU3ZjFjYWVhNTVlN2MyYTg1MzcifX19"}]}}},chest:{id:"leather_chestplate",count:1,components:{dyed_color:16755200}},legs:{id:"leather_leggings",count:1,components:{dyed_color:16755200}},feet:{id:"leather_boots",count:1,components:{dyed_color:16755200,enchantment_glint_override:false}},mainhand:{id:"golden_sword",count:1,components:{enchantment_glint_override:false,attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]}}},data:{name:[{translate:"zb.zombie.name.firelord",color:"gold"}]}}
scoreboard players set @n[type=zombie,tag=chosen] zombie.health 50000
scoreboard players set @n[type=zombie,tag=chosen] zombie.max_health 50000
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 80
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 100
scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_number 15
scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_speed_stay 5
scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_speed_fade 5
scoreboard players set @n[type=zombie,tag=chosen] zombie.skill.damage 0
scoreboard players set @n[type=zombie,tag=chosen] firelord.circle 0
scoreboard players set @n[type=zombie,tag=chosen] fl.volley 1
tag @n[type=zombie,tag=chosen] add fl.initial.charge
scoreboard players set @n[type=zombie,tag=chosen] fl.shots 0
scoreboard players set @n[type=zombie,tag=chosen] fl.firewait 0
tag @n[type=zombie,tag=chosen] add firelord.fire.pending
scoreboard players set @n[type=zombie,tag=chosen] fl.circleclock 0
tag @n[type=zombie,tag=chosen] remove chosen
