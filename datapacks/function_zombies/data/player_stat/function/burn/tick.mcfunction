
execute unless score @s stat.burn_timer matches ..-1 run scoreboard players remove @s stat.burn_timer 1
scoreboard players remove @s[scores={stat.burn_duration=0..}] stat.burn_duration 1
scoreboard players set @s[scores={stat.burn_timer=0}] stat.burn_duration -1
execute unless score @s stat.burn_duration matches 0.. run scoreboard players operation @s[scores={stat.burn_timer=0..}] stat.burn_duration = default.burn_duration stat.burn
execute if entity @s[scores={stat.burn_timer=1..}] at @s run function player_stat:burn/burning
execute if entity @s[scores={stat.burn_duration=0}] at @s run function player_stat:burn/burn