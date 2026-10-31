
execute if score range weapon.range >= max_range weapon.range run return fail
scoreboard players operation gun weapon.use = @s weapon.use
function weapon:range/skill/loop/particle
execute unless score @s weapon.use matches 30003 run function weapon:range/gun/detect/hit
scoreboard players add range weapon.range 1

execute as @e[tag=gethit,limit=1] run function weapon:range/skill/loop/hit

execute at @s unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players operation range weapon.range = max_range weapon.range

execute if score range weapon.range < max_range weapon.range as @s at @s run tp @s ^ ^ ^0.5
execute if score range weapon.range < max_range weapon.range as @s at @s run function weapon:range/skill/loop/0
execute unless score range weapon.range >= max_range weapon.range run return fail
scoreboard players set range weapon.range 0
execute at @s unless block ~ ~ ~ #weapon:gun_penetrable if score @s weapon.use matches 30003 run function weapon:range/skill/skill/gyrokineticwand/hit
kill @s


