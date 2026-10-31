summon strider ~ ~ ~ {Tags:["chosen","mob","hitable","deathanimation","ashes","firezb","skill.meteor"],attributes:[{id:"attack_damage",base:0},{id:"safe_fall_distance",base:10}],data:{name:[{translate:zb.zombie.name.nether.ashes.meteor,color:"#c8aebb"}]},Invulnerable:1b,NoAI:1b}

team join mob @n[type=strider,tag=chosen]

scoreboard players operation @n[type=strider,tag=chosen] zombie.health = @n[type=zombie,tag=chosen] zombie.health
scoreboard players operation @n[type=strider,tag=chosen] zombie.armor = @n[type=zombie,tag=chosen] zombie.armor

scoreboard players operation @n[type=strider,tag=chosen] zombie.critical_extra = @n[type=zombie,tag=chosen] zombie.critical_extra
scoreboard players operation @n[type=strider,tag=chosen] zombie.knockresistance = @n[type=zombie,tag=chosen] zombie.knockresistance

scoreboard players add @e[type=strider,tag=skill.meteor] zombie.nether.ashes.meteor.match 1
scoreboard players add @e[type=zombie,tag=skill.meteor] zombie.nether.ashes.meteor.match 1

tag @n[type=strider,tag=chosen] remove chosen
