
summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.death","chosen"],Small:1b,attributes:[{id:scale,base:0.1},{id:burning_time,base:0}],Invulnerable:1b,Invisible:1b}

execute store result storage zombie crimsonguardiansuspensedeath.x float 0.05 run random value -20..20
execute store result storage zombie crimsonguardiansuspensedeath.z float 0.05 run random value -20..20

execute as @n[type=armor_stand,tag=skill.warpedguardian.eclipse.death,tag=chosen] run function zombie:skill/nether/guardian/crimson/0/skill/suspense/death0 with storage zombie crimsonguardiansuspensedeath

tag @n[type=armor_stand,tag=chosen] remove chosen
data remove storage zombie crimsonguardiansuspensedeath
