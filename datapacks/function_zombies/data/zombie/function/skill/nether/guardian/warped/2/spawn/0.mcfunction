function zombie:skill/nether/guardian/warped/2/spawn/clear

summon elder_guardian ~ ~ ~ {Tags:["chosen","mob","hitable","zombieleft","cantinstakill","cantslow","deathmessage","skill.guardian","skill.warpedguardian","cantpuncher","cantgyro"],attributes:[{id:"burning_time",base:0}],data:{name:[{"translate":"zb.zombie.name.warpedguardian",color:"#008b8b"}]},Invulnerable:1b,NoAI:1b,Silent:1b}

scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.health 100000
#scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.speed 0
scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.armor 0

scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.knockresistance 100

scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.bossbar_number 30
scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.bossbar_speed_stay 5
scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.bossbar_speed_fade 5

scoreboard players operation @n[type=elder_guardian,tag=chosen] zombie.max_health = @n[type=elder_guardian,tag=chosen] zombie.health

scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.health 66666

summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.match"],Marker:1b,Invisible:1b}
ride @n[type=elder_guardian,tag=skill.warpedguardian] mount @n[type=armor_stand,tag=skill.warpedguardian.match]

tag @n[type=elder_guardian,tag=chosen] remove chosen
