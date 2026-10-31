effect clear @s glowing

playsound entity.wither.spawn record @a ~ ~ ~ 10 2
playsound item.totem.use record @a ~ ~ ~ 10 0
playsound entity.allay.hurt record @a ~ ~ ~ 10 0

particle soul_fire_flame ^ ^2 ^2 0 0 0 0.2 20 force @a[scores={particle=0}]
particle explosion ^ ^2 ^2 0 0 0 3 5 force @a[scores={particle=0}]
particle flash ^ ^2 ^2 0 0 0 0 1 force @a[scores={particle=0}]
particle campfire_cosy_smoke ^ ^2 ^2 0 0 0 0.2 10 force @a[scores={particle=0}]

function zombie:skill/nether/guardian/warped/0/skill/eclipse/clear

summon marker ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse","chosen"]}
summon item_display ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.0","skill.warpedguardian.eclipse.rotation"],item:{id:pearlescent_froglight},transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[0,0,0],translation:[0,0,0]},Glowing:1b,glow_color_override:3706623}
summon item_display ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.1","skill.warpedguardian.eclipse.rotation"],item:{id:pearlescent_froglight},transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[0,0,0],translation:[0,0,0]},Glowing:1b,glow_color_override:9486591}
summon item_display ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.2","skill.warpedguardian.eclipse.rotation"],item:{id:light_blue_stained_glass},transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[2.5,2.5,2.5],translation:[0,0,0]}}
summon item_display ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.3","skill.warpedguardian.eclipse.rotation"],item:{id:light_blue_stained_glass},transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[2.5,2.5,2.5],translation:[0,0,0]}}


summon slime ~ ~ ~ {Tags:["chosen","mob","hitable","skill.warpedguardian.eclipse.4","bossbar","nogold","deathmessage","cantpuncher","cantgyro"],attributes:[{id:"attack_damage",base:0},{id:"burning_time",base:0}],NoAI:1b,Size:0,Silent:1b,data:{name:[{translate:zb.zombie.name.eclipse,color:blue}]},Invulnerable:1b}

effect give @e[type=slime,tag=chosen] invisibility infinite 0 true

scoreboard players set @n[type=slime,tag=chosen] zombie.health 3000
scoreboard players set @n[type=slime,tag=chosen] zombie.armor 0
scoreboard players set @n[type=slime,tag=chosen] zombie.critical_extra 100
scoreboard players set @n[type=slime,tag=chosen] zombie.knockresistance 100

scoreboard players set @n[type=slime,tag=chosen] zombie.bossbar_number 30
scoreboard players set @n[type=slime,tag=chosen] zombie.bossbar_speed_stay 5
scoreboard players set @n[type=slime,tag=chosen] zombie.bossbar_speed_fade 5

tag @n[type=slime,tag=chosen] remove chosen

tp @n[type=marker,tag=chosen] ^ ^2 ^2 ~ ~

tag @e[type=marker,tag=chosen] remove chosen
