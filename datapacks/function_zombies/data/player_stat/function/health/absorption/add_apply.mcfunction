effect clear @s absorption
$effect give @s absorption infinite $(amp) true
execute store result score #add_cap health.operation run attribute @s max_absorption get 100
scoreboard players operation #add_target health.operation -= #add_cap health.operation
execute store result storage player_stat absorption_add.clamp double 0.01 run scoreboard players get #add_target health.operation
function player_stat:health/absorption/add_clamp with storage player_stat absorption_add
execute store result score @s health.absorption_add run time query gametime
