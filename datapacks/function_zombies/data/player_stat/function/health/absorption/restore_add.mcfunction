execute store result score #now health.absorption_add run time query gametime
execute if score @s health.absorption_add = #now health.absorption_add run return 0
attribute @s max_absorption modifier remove zb:absorption_add
scoreboard players reset @s health.absorption_add
