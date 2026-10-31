
playsound entity.guardian.ambient record @a ~ ~ ~ 1 1

summon elder_guardian ~ ~ ~ {Tags:["chosen","mob","zombieleft","skill.crimsonguardian.meltdown"],attributes:[{id:burning_time,base:0},{id:"scale",base:0.5}],data:{name:[{translate:zb.zombie.name.meltdownguardian,color:"gold"}]},NoAI:1b,Invulnerable:1b,Silent:1b}

team join zombie.suspenseguardian @n[type=elder_guardian,tag=chosen]

scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.health 1200
scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.armor 0

scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=elder_guardian,tag=chosen] zombie.knockresistance 100

summon armor_stand ~ ~ ~ {Tags:["chosen","mob","skill.crimsonguardian.meltdown","mob.skill"],Invisible:1b,Marker:1b}

execute store result score random zombie.random run random value 0..1
execute if score random zombie.random matches 0 run tag @n[type=armor_stand,tag=chosen] add skill.crimsonguardian.meltdown.left
execute if score random zombie.random matches 1 run tag @n[type=armor_stand,tag=chosen] add skill.crimsonguardian.meltdown.right
scoreboard players reset random zombie.random

scoreboard players add @e[type=elder_guardian,tag=skill.crimsonguardian.suspense] zombie.nether.guardian.suspense.match 1
scoreboard players add @e[type=armor_stand,tag=skill.crimsonguardian.suspense] zombie.nether.guardian.suspense.match 1

ride @n[type=elder_guardian,tag=chosen] mount @n[type=armor_stand,tag=chosen]

#execute store result storage zombie crimsonguardiansuspense.x float 0.1 run random value -18..18
#execute store result storage zombie crimsonguardiansuspense.z float 0.1 run random value -18..18

#function zombie:skill/nether/guardian/crimson/0/skill/suspense/spawnmotion with storage zombie crimsonguardiansuspense

#data remove storage zombie crimsonguardiansuspense

tag @n[type=elder_guardian,tag=chosen] remove chosen
#tag @n[type=skeleton,tag=chosen] remove chosen
tag @n[type=armor_stand,tag=chosen] remove chosen
