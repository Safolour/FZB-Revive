# 录像中，泰坦出生后约 12 tick 在实验室落地；不调用起源的 P1 技能。
execute unless entity @s[type=zombie,tag=skill.titan,tag=titan.awaiting] run return 0
tp @s 352.5 92 135.5
effect clear @s minecraft:invisibility
data merge entity @s {NoAI:0b,NoGravity:0b,Invulnerable:0b,Invisible:0b,Glowing:0b,Motion:[0d,0d,0d],fall_distance:0d}
scoreboard players set @s zombie.motionx 0
scoreboard players set @s zombie.motiony 0
scoreboard players set @s zombie.motionz 0
scoreboard players set @s zombie.motionx1 0
scoreboard players set @s zombie.motiony1 0
scoreboard players set @s zombie.motionz1 0
scoreboard players set @s path.tp_binding 3
scoreboard players set @s path.in_window 0
tag @s add hitable
tag @s remove titan.awaiting
function zombie:skill/creation/titan/init
execute at @s run function zombie:bossbar/tick
