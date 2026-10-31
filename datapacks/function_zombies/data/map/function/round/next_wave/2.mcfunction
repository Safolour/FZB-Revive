
execute unless data storage round root.mob[0].spawn_range store result storage round root.mob[0].spawn_range int 1 run scoreboard players get spawn_range round
execute store result score count round run data get storage round root.mob[0].count
#tellraw @a [{score:{name:count,objective:round}}]
function map:round/next_wave/2_0

data remove storage round root.mob[0]
execute if data storage round root.mob[0] run function map:round/next_wave/2