summon slime ~ ~-0.5 ~ {Tags:["mob","hitable","chosen","skill.ultimatechaoszombie.large_tnt","nogold","cantinstakill"],NoAI:1b,NoGravity:1b,Size:0,Invulnerable:1b,data:{name:[{translate:zb.zombie.name.tnt,color:red}]}}
scoreboard players set @n[type=slime,tag=chosen] zombie.health 1000

effect give @e[type=slime,tag=chosen] invisibility infinite 0 true

summon armor_stand ~ ~-1.15 ~ {Tags:["mob.skill","skill.ultimatechaoszombie","skill.ultimatechaoszombie.large_tnt","chosen"],Invisible:1b,equipment:{head:{id:tnt,count:1}},Small:1b,Marker:1b}
effect give @e[type=armor_stand,tag=chosen] glowing infinite 0 true

scoreboard players add @e[type=slime,tag=skill.ultimatechaoszombie.large_tnt] zombie.chaos.ultimate_chaos_zombie.skill_attacktntmatch 1
scoreboard players add @e[type=armor_stand,tag=skill.ultimatechaoszombie.large_tnt] zombie.chaos.ultimate_chaos_zombie.skill_attacktntmatch 1

tag @n[type=slime,tag=chosen] remove chosen
tag @e[type=armor_stand,tag=chosen] remove chosen
