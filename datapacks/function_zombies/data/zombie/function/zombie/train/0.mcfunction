kill @e[type=armor_stand,tag=text,tag=train,sort=nearest,limit=2]
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","nogold","train"],Silent:1b,NoAI:1b}
summon armor_stand ~ ~2 ~ {Tags:["train",text],CustomName:[{translate:zb.zombie.name.train.0}],CustomNameVisible:1b,Invisible:1b,Marker:1b}
summon armor_stand ~ ~2.5 ~ {Tags:["train",text],CustomName:[{translate:zb.zombie.name.train.1}],CustomNameVisible:1b,Invisible:1b,Marker:1b}

tp @n[type=zombie,tag=chosen] ~ ~ ~ facing ^ ^ ^1
scoreboard players set @n[type=zombie,tag=chosen] zombie.health 447010
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 100
scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 0
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 100

tag @e[type=zombie,tag=chosen] remove chosen