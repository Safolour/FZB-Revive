function zombie:skill/nether/guardian/crimson/2/spawn/clear

summon guardian ~ ~ ~ {Tags:["chosen","mob","hitable","zombieleft","cantinstakill","cantslow","deathmessage","skill.guardian","skill.crimsonguardian","cantpuncher","cantgyro"],attributes:[{id:"burning_time",base:0},{id:"scale",base:2.5}],data:{name:[{"translate":"zb.zombie.name.crimsonguardian",color:"#dc143c"}]},Invulnerable:1b,NoAI:1b,Silent:1b}

scoreboard players set @n[type=guardian,tag=chosen] zombie.health 100000
#scoreboard players set @n[type=guardian,tag=chosen] zombie.speed 0
scoreboard players set @n[type=guardian,tag=chosen] zombie.armor 0

scoreboard players set @n[type=guardian,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=guardian,tag=chosen] zombie.knockresistance 100

scoreboard players set @n[type=guardian,tag=chosen] zombie.bossbar_number 30
scoreboard players set @n[type=guardian,tag=chosen] zombie.bossbar_speed_stay 5
scoreboard players set @n[type=guardian,tag=chosen] zombie.bossbar_speed_fade 5

scoreboard players operation @n[type=guardian,tag=chosen] zombie.max_health = @n[type=guardian,tag=chosen] zombie.health

scoreboard players set @n[type=guardian,tag=chosen] zombie.health 66666

summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.crimsonguardian.match"],Marker:1b,Invisible:1b}
ride @n[type=guardian,tag=skill.crimsonguardian] mount @n[type=armor_stand,tag=skill.crimsonguardian.match]

tag @n[type=guardian,tag=chosen] remove chosen
