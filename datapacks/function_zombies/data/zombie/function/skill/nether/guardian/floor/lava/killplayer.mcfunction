#say killplayer
execute as @a[scores={stat.player=2}] at @s run function player_stat:revive/death
