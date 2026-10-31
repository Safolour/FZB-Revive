
summon slime ~ ~ ~ {Tags:["mob","hitable","chosen"],Glowing:1b,NoAI:1b,NoGravity:1b,Size:0}
scoreboard players set @n[type=slime,tag=chosen] zombie.health 100
attribute @n[type=slime,tag=chosen] scale base set 0.5
tag @n[type=slime,tag=chosen] remove chosen