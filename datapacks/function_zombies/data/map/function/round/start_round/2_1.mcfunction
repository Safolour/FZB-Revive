
scoreboard players remove mob_list0 round 1
execute store result storage round root.mob_list int 1 run scoreboard players get mob_list0 round
function map:round/start_round/2_2 with storage round root
scoreboard players add mob_list0 round 2
execute if score mob_list0 round <= mob_list round run function map:round/start_round/2_1