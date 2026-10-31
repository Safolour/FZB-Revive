
summon blaze ~ ~ ~ {Tags:["floating","chosen","mob","hitable","zombieleft","skill.blaze","cantgyro"],attributes:[{id:"attack_damage",base:0}],data:{name:[{translate:zb.zombie.name.remains.blaze,color:yellow}]},NoAI:1b,NoGravity:1b,Team:"zombie.crimsonguardian.blaze"}

team join zombie.crimsonguardian.blaze @n[type=blaze,tag=chosen]
#effect give @n[type=blaze,tag=chosen] glowing infinite 0 true

scoreboard players set @n[type=blaze,tag=chosen] zombie.health 1000
scoreboard players set @n[type=blaze,tag=chosen] zombie.armor 0

scoreboard players set @n[type=blaze,tag=chosen] zombie.critical_extra 200
scoreboard players set @n[type=blaze,tag=chosen] zombie.knockresistance 100

execute as @n[type=blaze,tag=chosen] at @s run function zombie:skill/nether/guardian/crimson/1/guardian/blaze/init0

tag @n[type=blaze,tag=chosen] remove chosen
