
execute if score range interaction.range >= max_range interaction.range run return fail
scoreboard players add range interaction.range 1
function interaction:loop/detect

execute as @n[type=interaction,tag=gethit1,tag=gethit2,limit=1] run function interaction:loop/hit

execute unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players operation range interaction.range = max_range interaction.range

execute if score range interaction.range < max_range interaction.range positioned ^ ^ ^0.25 run function interaction:loop/0

scoreboard players set range interaction.range 0