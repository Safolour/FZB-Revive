scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=marker,tag=titan.tp.destination] if score @s origin.owner = #owner origin.owner run kill @s
tag @s remove titan.tp.active
scoreboard players set @s titan.tp_age 0
# The residual timer was selected at source start and already includes these 13 ticks.
