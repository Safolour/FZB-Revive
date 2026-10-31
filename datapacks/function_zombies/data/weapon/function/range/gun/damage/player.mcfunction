
execute as @s[tag=crit_hit] at @s run playsound entity.arrow.hit_player record @s[tag=crit_hit] ~ ~ ~ 1 1.5 0
execute as @s[tag=!crit_hit] at @s run playsound entity.arrow.hit_player record @s ~ ~ ~ 1 2 0

