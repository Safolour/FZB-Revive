
summon slime ~ ~ ~ {Tags:["chosen","mob","hitable","skill.chaosgolem","deathmessage","cantpuncher","cantgyro","cantinstakill","cantslow"],attributes:[{id:"attack_damage",base:0},{id:"burning_time",base:0}],NoAI:1b,Size:4,Silent:1b,data:{name:[{translate:zb.zombie.name.chaosgolem,color:"#ff8a00"}]},Invulnerable:1b}

#mob hitable path window_break bossbar zombieleft deathanimation
#skill.ultimatechaosgolem

effect give @e[type=slime,tag=chosen] invisibility infinite 0 true

scoreboard players operation @n[type=slime,tag=chosen] zombie.health = @n[type=zombie,tag=chosen] zombie.health
#scoreboard players set @n[type=slime,tag=chosen] zombie.speed 20

scoreboard players operation @n[type=slime,tag=chosen] zombie.armor = @n[type=zombie,tag=chosen] zombie.armor
scoreboard players operation @n[type=slime,tag=chosen] zombie.critical_extra = @n[type=zombie,tag=chosen] zombie.critical_extra
scoreboard players operation @n[type=slime,tag=chosen] zombie.knockresistance = @n[type=zombie,tag=chosen] zombie.knockresistance

#scoreboard players set @n[type=slime,tag=chosen] zombie.armor 90
#scoreboard players set @n[type=slime,tag=chosen] zombie.critical_extra 150
#scoreboard players set @n[type=slime,tag=chosen] zombie.knockresistance 100

#scoreboard players set @n[type=slime,tag=chosen] zombie.bossbar_number 30
#scoreboard players set @n[type=slime,tag=chosen] zombie.bossbar_speed_stay 5
#scoreboard players set @n[type=slime,tag=chosen] zombie.bossbar_speed_fade 5



#scoreboard players operation @n[type=slime,tag=chosen] zombie.max_health = @n[type=slime,tag=chosen] zombie.health

#execute as @n[type=slime,tag=chosen] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/plan/init

tag @n[type=slime,tag=chosen] remove chosen
