
summon wither_skeleton ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","ashes","firezb","skill.ashwizard"],attributes:[{id:"attack_damage",base:20},{id:"safe_fall_distance",base:10},{id:burning_time,base:0}],equipment:{head:{id:leather_helmet,count:1,components:{dyed_color:8920225,enchantment_glint_override:true}},mainhand:{id:"diamond_shovel",components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]}}},data:{name:[{translate:zb.zombie.name.nether.ashes.asheswizard,color:dark_purple}]}}

scoreboard players set @n[type=wither_skeleton,tag=chosen] zombie.health 2000
scoreboard players set @n[type=wither_skeleton,tag=chosen] zombie.speed 5
scoreboard players set @n[type=wither_skeleton,tag=chosen] zombie.armor 0

scoreboard players set @n[type=wither_skeleton,tag=chosen] zombie.critical_extra 200
scoreboard players set @n[type=wither_skeleton,tag=chosen] zombie.knockresistance 100

execute as @n[type=wither_skeleton,tag=chosen] at @s run function zombie:skill/nether/ashes/ash_wizard/init

tag @n[type=wither_skeleton,tag=chosen] remove chosen
