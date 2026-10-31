
execute if entity @s[tag=tick0_0] run return fail
tag @s add tick0_0
function player_stat:health/absorption/restore_all
execute as @s at @s run function weapon:tick
function player_stat:tick