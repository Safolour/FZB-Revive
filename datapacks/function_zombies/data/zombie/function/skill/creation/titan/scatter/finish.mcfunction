tag @s remove titan.scatter.cast
tag @s add titan.scatter.used
data merge entity @s {NoAI:0b,Glowing:0b}
team join mob @s
# If a second roll also selected sword, its charge continues after scatter unlocks AI.
execute if entity @s[tag=titan.sword.cast] if score @s titan.sword_age matches ..39 run team join titan.aqua @s
execute if entity @s[tag=titan.sword.cast] if score @s titan.sword_age matches ..39 run data merge entity @s {Glowing:1b}
