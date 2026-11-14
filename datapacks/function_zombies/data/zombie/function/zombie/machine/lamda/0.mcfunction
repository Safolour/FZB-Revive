
summon zombie ~ ~ ~ {Invulnerable:1b,Silent:1b,Tags:["chosen","mob","skill.lamda","bossbar","zombieleft","cantinstakill","cantslow","cantpuncher","cantgyro"],attributes:[{id:"attack_damage",base:0},{id:"burning_time",base:0}],data:{name:[{translate:zb.zombie.name.lamda}]}}

effect give @e[type=zombie,tag=chosen] invisibility infinite 0 true

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 80000
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 23
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0
scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 100

scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_number 30
scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_speed_stay 5
scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_speed_fade 2

scoreboard players operation @n[type=zombie,tag=chosen] zombie.max_health = @n[type=zombie,tag=chosen] zombie.health

execute as @n[type=zombie,tag=chosen] at @s run function zombie:skill/machine/lamda/spawn/init

tag @n[type=zombie,tag=chosen] remove chosen
