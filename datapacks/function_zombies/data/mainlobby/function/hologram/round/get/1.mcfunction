
execute store result storage system root.number int 1 run scoreboard players get loop player_count
scoreboard players operation sort_loop player_count = loop_end player_count
function mainlobby:hologram/round/get/2 with storage system root
scoreboard players add loop player_count 1
execute if score loop player_count < loop_end player_count run function mainlobby:hologram/round/get/1
