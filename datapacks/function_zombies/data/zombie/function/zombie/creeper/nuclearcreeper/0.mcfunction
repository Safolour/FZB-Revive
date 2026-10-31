
summon creeper 300 92 132 {Tags:["chosen","mob","hitable","zombieleft","bossbar","deathmessage","cantslow","skill.nuclearcreeper","creeperdamage","cantpuncher","cantgyro"],attributes:[{id:"attack_damage",base:0},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],data:{name:[{translate:zb.zombie.name.nuclearcreeper}]},NoAI:1b,Rotation:[0f,0f],Invulnerable:1b}

scoreboard players set @n[type=creeper,tag=chosen] zombie.health 30000
scoreboard players set @n[type=creeper,tag=chosen] zombie.speed 0
scoreboard players set @n[type=creeper,tag=chosen] zombie.armor 0

scoreboard players set @n[type=creeper,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=creeper,tag=chosen] zombie.knockresistance 100

scoreboard players set @n[type=creeper,tag=chosen] zombie.bossbar_number 15
scoreboard players set @n[type=creeper,tag=chosen] zombie.bossbar_speed_stay 5
scoreboard players set @n[type=creeper,tag=chosen] zombie.bossbar_speed_fade 5

function zombie:skill/creeper/nuclear/init

tag @n[type=creeper,tag=chosen] remove chosen
