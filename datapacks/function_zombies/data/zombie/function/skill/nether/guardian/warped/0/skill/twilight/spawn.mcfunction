summon elder_guardian ~ ~ ~ {Tags:["floating","chosen","mob","skill.twilightguardian"],attributes:[{id:"burning_time",base:0},{id:"scale",base:0.4}],data:{name:[{translate:zb.zombie.name.twilight,color:aqua}]},Silent:1b,Invulnerable:1b,NoAI:1b}

scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.health 1000
scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.armor 0

scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.critical_extra 100
scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.knockresistance 100

summon armor_stand ~ ~ ~ {Tags:["chosen","mob.skill","skill.twilightguardian"],Invisible:1b,Marker:1b}
ride @n[type=elder_guardian,tag=chosen] mount @n[type=armor_stand,tag=chosen]

scoreboard players add @e[type=elder_guardian,tag=skill.twilightguardian] zombie.nether.guardian.twilight.match 1
scoreboard players add @e[type=armor_stand,tag=skill.twilightguardian] zombie.nether.guardian.twilight.match 1

$tp @n[type=armor_stand,tag=chosen] $(x) $(y) $(z) $(m) $(n)

execute if data storage zombie warpedguardiantwilightpos.left run tag @n[type=armor_stand,tag=chosen] add skill.twilightguardian.left
execute if data storage zombie warpedguardiantwilightpos.right run tag @n[type=armor_stand,tag=chosen] add skill.twilightguardian.right

execute as @n[type=armor_stand,tag=chosen] at @s run particle flash ~ ~0.5 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute as @n[type=armor_stand,tag=chosen] at @s run particle explosion ~ ~0.5 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute as @n[type=armor_stand,tag=chosen] at @s run particle end_rod ~ ~0.5 ~ 0 0 0 0.05 10 force @a[scores={particle=0}]

tag @n[type=elder_guardian,tag=chosen] remove chosen
tag @n[type=armor_stand,tag=chosen] remove chosen
