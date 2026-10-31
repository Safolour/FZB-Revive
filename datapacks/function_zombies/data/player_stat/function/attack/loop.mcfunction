
execute if score range stat.attack.range >= max_range stat.attack.range run return fail
scoreboard players add range stat.attack.range 1
function player_stat:attack/detect
execute as @n[tag=hitable,tag=gethit1,tag=gethit2] run function player_stat:attack/loop0
#particle end_rod
execute unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players operation range stat.attack.range = max_range stat.attack.range

execute if score range stat.attack.range < max_range stat.attack.range positioned ^ ^ ^0.25 run function player_stat:attack/loop

scoreboard players set range stat.attack.range 0