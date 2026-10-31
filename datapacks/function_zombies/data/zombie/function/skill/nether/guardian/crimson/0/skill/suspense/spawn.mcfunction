
summon guardian ~ ~ ~ {Tags:["floating","chosen","mob","hitable","zombieleft","nogold","skill.crimsonguardian.suspense","cantgyro"],attributes:[{id:burning_time,base:0}],data:{name:[{translate:zb.zombie.name.suspenseguardian,color:"#ffbe59"}]},NoAI:1b,Invulnerable:1b,Silent:1b}

team join zombie.suspenseguardian @n[type=guardian,tag=chosen]

scoreboard players set @n[type=guardian,tag=chosen] zombie.health 1200
scoreboard players set @n[type=guardian,tag=chosen] zombie.armor 0

scoreboard players set @n[type=guardian,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=guardian,tag=chosen] zombie.knockresistance 100

summon skeleton ~ ~ ~ {Tags:["chosen","mob","skill.crimsonguardian.suspense"],attributes:[{id:"burning_time",base:0},{id:"attack_damage",base:0},{id:"gravity",base:0.01}],Invulnerable:1b,Silent:1b}

effect give @n[type=skeleton,tag=chosen] invisibility infinite 0 true

summon armor_stand ~ ~ ~ {Tags:["chosen","mob","skill.crimsonguardian.suspense"],Invisible:1b,Marker:1b}

scoreboard players add @e[type=guardian,tag=skill.crimsonguardian.suspense] zombie.nether.guardian.suspense.match 1
scoreboard players add @e[type=skeleton,tag=skill.crimsonguardian.suspense] zombie.nether.guardian.suspense.match 1
scoreboard players add @e[type=armor_stand,tag=skill.crimsonguardian.suspense] zombie.nether.guardian.suspense.match 1

ride @n[type=guardian,tag=chosen] mount @n[type=armor_stand,tag=chosen]

execute if score stat zombie.nether.guardian matches 1 store result storage zombie crimsonguardiansuspense.x float 0.1 run random value -18..18
execute if score stat zombie.nether.guardian matches 1 store result storage zombie crimsonguardiansuspense.z float 0.1 run random value -18..18
execute if score stat zombie.nether.guardian matches 5.. store result storage zombie crimsonguardiansuspense.x float 0.1 run random value -25..25
execute if score stat zombie.nether.guardian matches 5.. store result storage zombie crimsonguardiansuspense.z float 0.1 run random value -25..25

function zombie:skill/nether/guardian/crimson/0/skill/suspense/spawnmotion with storage zombie crimsonguardiansuspense

data remove storage zombie crimsonguardiansuspense

tag @n[type=guardian,tag=chosen] remove chosen
tag @n[type=skeleton,tag=chosen] remove chosen
tag @n[type=armor_stand,tag=chosen] remove chosen
