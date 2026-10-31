
execute at @s run summon item ~ ~1.5 ~ {Motion:[0.0,0.3,0.0],Tags:["mob.skill","skill.bomber.burst.throwtnt","chosen"],Item:{id:"tnt"},Glowing:true,Age:-1,PickupDelay:-1}
execute store result entity @n[type=item,tag=chosen] Motion[0] double 0.0000375 run random value -10000..10000
execute store result entity @n[type=item,tag=chosen] Motion[2] double 0.0000375 run random value -10000..10000
team join zombie.chaos.ultimate_chaos_zombie.3 @e[type=item,tag=chosen]
tag @e[type=item,tag=chosen] remove chosen

particle crit ~ ~1.5 ~ 0.2 0.2 0.2 0 2 force @a[scores={particle=0}]

playsound entity.snowball.throw record @a ~ ~ ~ 2 1
