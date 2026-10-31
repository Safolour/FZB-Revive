
summon slime ~ ~ ~ {Tags:["chosen","mob","hitable","skill.lamda","deathmessage","cantpuncher","cantinstakill","cantgyro","cantslow"],attributes:[{id:"attack_damage",base:0},{id:"burning_time",base:0}],NoAI:1b,Size:4,Silent:1b,data:{name:[{translate:zb.zombie.name.lamda}]},Invulnerable:1b}

effect give @e[type=slime,tag=chosen] invisibility infinite 0 true

scoreboard players operation @n[type=slime,tag=chosen] zombie.health = @n[type=zombie,tag=chosen] zombie.health

scoreboard players operation @n[type=slime,tag=chosen] zombie.armor = @n[type=zombie,tag=chosen] zombie.armor
scoreboard players operation @n[type=slime,tag=chosen] zombie.critical_extra = @n[type=zombie,tag=chosen] zombie.critical_extra
scoreboard players operation @n[type=slime,tag=chosen] zombie.knockresistance = @n[type=zombie,tag=chosen] zombie.knockresistance

tag @n[type=slime,tag=chosen] remove chosen
