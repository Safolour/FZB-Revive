
execute if score extra0 round matches 1 run return run function map:round/trigger/wave0
execute if score timer round matches 1.. run return fail
execute store result score max_round round run data get storage round mob_spawn_list
execute if score round game.state >= max_round round run return run function map:round/win/0
execute if score complete round matches 1 run function map:round/trigger/complete

scoreboard players add round game.state 1
function map:round/start_round/0
