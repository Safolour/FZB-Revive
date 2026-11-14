scoreboard players set @s titan.followup 0
# 85/200 = 42.5%; 65/200 = 32.5%. Both bits can be set by the same teleport.
execute if score @s titan.sword_rng matches 0..84 run scoreboard players add @s titan.followup 1
execute if score @s titan.scat_rng matches 0..64 run scoreboard players add @s titan.followup 2
