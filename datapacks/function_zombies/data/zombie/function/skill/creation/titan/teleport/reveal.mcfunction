scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=marker,tag=titan.tp.destination] if score @s origin.owner = #owner origin.owner run tag @s add titan.tp.current
execute at @e[type=marker,tag=titan.tp.current,limit=1] run tp @s ~ ~ ~
tag @e[type=marker,tag=titan.tp.current] remove titan.tp.current
data merge entity @s {NoAI:0b,NoGravity:0b,Glowing:1b,Motion:[0d,0d,0d]}
team join titan.red @s
scoreboard players set @s titan.tp_glow 7
attribute @s minecraft:movement_speed modifier add titan:arrival_slow -0.15 add_multiplied_total
