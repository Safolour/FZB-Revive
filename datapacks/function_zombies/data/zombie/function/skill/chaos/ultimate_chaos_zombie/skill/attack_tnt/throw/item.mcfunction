#$say Motion:[$(0),$(1),$(2)]
$execute at @s run summon item ~ ~ ~ {Tags:["mob.skill","skill.ultimatechaoszombie","skill.ultimatechaoszombie.attack_tnt","chosen"],Item:{id:"tnt"},Glowing:true,Age:-1,PickupDelay:-1,Motion:[$(0),$(1),$(2)]}

team join zombie.chaos.ultimate_chaos_zombie.3 @e[type=item,tag=chosen]
tag @e[type=item,tag=chosen] remove chosen
