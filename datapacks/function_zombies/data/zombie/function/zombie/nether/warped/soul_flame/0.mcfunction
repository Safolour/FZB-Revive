
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","portalmotion","warped","firezb","fireaspect","skill.soulflame"],attributes:[{id:"attack_damage",base:4},{id:"safe_fall_distance",base:10},{id:burning_time,base:0}],data:{name:[{translate:zb.zombie.name.nether.warped.soulflame,color:"#aaefe2"}]},Silent:1b}

effect give @n[type=zombie,tag=chosen] invisibility infinite 0 true

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 300
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 25
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 50
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 200

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 350

tag @n[type=zombie,tag=chosen] remove chosen
