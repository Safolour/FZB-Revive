
execute if score range weapon.range >= max_range weapon.range run return fail
scoreboard players operation gun weapon.use = @s weapon.use
function weapon:range/gun/loop/particle
scoreboard players add range weapon.range 1
execute if score #magnet weapon.state matches 1 run function map:perk/magnetic_bullet
#say loop
execute positioned ^ ^ ^0.5 run function weapon:range/gun/loop/reflection/reflection

#execute if entity @e[tag=hitable,tag=!penetrable,tag=gethit,limit=1] run scoreboard players operation gun weapon.use = @s weapon.use
execute unless score no_target weapon.range matches 1.. as @e[tag=!penetrable,tag=gethit,limit=1] run function weapon:range/gun/loop/hit

execute at @s unless score gun weapon.use matches 10010 unless score gun weapon.use matches 10025 unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players operation range weapon.range = max_range weapon.range

execute if score range weapon.range < max_range weapon.range as @s at @s run tp @s ^ ^ ^0.5
execute if score range weapon.range < max_range weapon.range as @s at @s run function weapon:range/gun/loop/0_0
execute unless score range weapon.range >= max_range weapon.range run return fail
scoreboard players set range weapon.range 0
scoreboard players reset no_target weapon.range
execute as @e[tag=hitable] run function weapon:range/gun/loop/0_1
kill @s
execute unless score gun weapon.use matches 10010 unless score gun weapon.use matches 10025 run return fail

