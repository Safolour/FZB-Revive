
scoreboard players set wave round -1

scoreboard players operation round stat.total_round = round game.state
execute store result storage round root.round int 1 run scoreboard players get round game.state
function map:round/start_round/1 with storage round root
scoreboard players set wave0 round 1
scoreboard players set zombie_left.remaining game.state 0
function map:round/start_round/2 with storage round root
execute as @a[scores={system.room=4..,title.color.enable=0}] at @s run function map:round/start_round/0_0

function map:round/start_round/open
function map:round/start_round/temperature

execute positioned 0.0 -100.0 0.0 as @e[type=!player,distance=..10] run kill @s