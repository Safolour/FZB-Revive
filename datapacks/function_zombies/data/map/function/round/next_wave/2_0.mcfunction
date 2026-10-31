
execute store result storage round root.mob[0].x int 1 run random value -1..1
execute store result storage round root.mob[0].z int 1 run random value -1..1
execute if score spawn_range round matches 0.. run function map:round/next_wave/3 with storage round root.mob[0]
execute if score spawn_range round matches -1 run function map:round/next_wave/3_0 with storage round root.mob[0]

scoreboard players remove count round 1
execute if score count round matches 1.. run function map:round/next_wave/2_0