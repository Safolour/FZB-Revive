
scoreboard players operation loop0 player_count = loop player_count
scoreboard players add loop0 player_count 1
execute store result storage system root.number int 1 run scoreboard players get loop player_count
execute store result storage system root.number0 int 1 run scoreboard players get loop0 player_count
scoreboard players operation sort_loop player_count = loop_end player_count
function mainlobby:hologram/round/get/sort/2 with storage system root
scoreboard players add loop player_count 1
scoreboard players add loop0 player_count 1
execute if score loop0 player_count < loop_end player_count run function mainlobby:hologram/round/get/sort/1
