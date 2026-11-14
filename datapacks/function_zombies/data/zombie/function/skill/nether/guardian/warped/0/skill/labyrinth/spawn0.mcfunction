
kill @e[type=marker,tag=target,limit=1]

execute unless score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle end_rod ~ ~ ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~ ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~ ~ 0 0 0 0.1 5 force @a[scores={particle=1}]

playsound entity.evoker.prepare_summon record @a ~ ~ ~ 2 2
playsound entity.ender_eye.death record @a ~ ~ ~ 2 0

#say spawn0
#return 0

summon slime ~ ~-0.5 ~ {Tags:["chosen","mob","hitable","skill.warpedguardian.labyrinth.0","bossbar","nogold","deathmessage","cantpuncher","cantgyro"],attributes:[{id:"attack_damage",base:0},{id:"burning_time",base:0}],NoAI:1b,Size:1,Silent:1b,data:{name:[{translate:zb.zombie.name.labyrinth,color:dark_purple}]},Invulnerable:1b}

effect give @e[type=slime,tag=chosen] invisibility infinite 0 true

scoreboard players set @n[type=slime,tag=chosen] zombie.health 2500
scoreboard players set @n[type=slime,tag=chosen] zombie.armor 0
scoreboard players set @n[type=slime,tag=chosen] zombie.critical_extra 100
scoreboard players set @n[type=slime,tag=chosen] zombie.knockresistance 100

scoreboard players set @n[type=slime,tag=chosen] zombie.bossbar_number 30
scoreboard players set @n[type=slime,tag=chosen] zombie.bossbar_speed_stay 5
scoreboard players set @n[type=slime,tag=chosen] zombie.bossbar_speed_fade 5

scoreboard players operation @n[type=slime,tag=chosen] zombie.nether.guardian.labyrinth.match = @s zombie.nether.guardian.labyrinth.match

tag @n[type=slime,tag=chosen] remove chosen

summon armor_stand ~ ~-1.7 ~ {Tags:["chosen","mob.skill","skill.warpedguardian.labyrinth.1"],Marker:1b,Invisible:1b,equipment:{head:{id:player_head,count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzE5NTY4NjQ5NzA0Nzg3NDVlYzNjYTQ4NDExZGZlYzgwYzQ0NjcwZjA4NmVjZDA3ZGQ3MmFiMWQzYjk5Nzc4In19fQ=="}]}}}},Glowing:1b}

team join zombie.warpedguardian @n[type=armor_stand,tag=chosen]

scoreboard players operation @n[type=armor_stand,tag=chosen] zombie.nether.guardian.labyrinth.match = @s zombie.nether.guardian.labyrinth.match

tag @n[type=armor_stand,tag=chosen] remove chosen

kill @s
