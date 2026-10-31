summon slime ~ ~-0.5 ~ {Tags:["mob","hitable","chosen","skill.bomber.throw.tnt","nogold","cantinstakill"],NoAI:1b,NoGravity:1b,Size:0,Invulnerable:1b,CustomName:{translate:zb.item.tnt.name,color:red},CustomNameVisible:0b}
scoreboard players set @n[type=slime,tag=chosen] zombie.health 1000

effect give @e[type=slime,tag=chosen] invisibility infinite 0 true

summon armor_stand ~ ~-1.15 ~ {Tags:["mob.skill","skill.bomber.throw.tnt","chosen"],Invisible:1b,equipment:{head:{id:tnt,count:1}},Small:1b,Marker:1b}
effect give @e[type=armor_stand,tag=chosen] glowing infinite 0 true

scoreboard players add @e[type=slime,tag=skill.bomber.throw.tnt] zombie.electric.bomber.throw.tntmatch 1
scoreboard players add @e[type=armor_stand,tag=skill.bomber.throw.tnt] zombie.electric.bomber.throw.tntmatch 1

tag @n[type=slime,tag=chosen] remove chosen
tag @e[type=armor_stand,tag=chosen] remove chosen
