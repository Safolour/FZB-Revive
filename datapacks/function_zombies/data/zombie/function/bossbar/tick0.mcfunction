
execute if entity @s[scores={zombie.bossbar_timer=0..}] run scoreboard players remove @s zombie.bossbar_timer 1

execute unless score @s zombie.bossbar_number1 matches 0 if entity @s[scores={zombie.bossbar_timer=0}] run function zombie:bossbar/health_bar
execute unless score @s zombie.bossbar_number1 matches 0 unless score @s zombie.bossbar_timer matches 1.. run scoreboard players operation @s zombie.bossbar_timer = @s zombie.bossbar_speed_fade

execute if entity @s[scores={zombie.bossbar_tp=1..}] run return run scoreboard players set @s zombie.bossbar_tp 0
kill @s