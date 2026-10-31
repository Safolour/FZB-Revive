
scoreboard players remove wave0 round 1
execute store result storage round root.wave0 int 1 run scoreboard players get wave0 round
function map:round/start_round/2_0 with storage round root

scoreboard players add wave0 round 2
execute if score wave0 round <= max_wave round run function map:round/start_round/2