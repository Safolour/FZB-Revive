
scoreboard players set loop player_count 0
scoreboard players add loop1 player_count 1
function mainlobby:hologram/round/get/sort/1
execute if score loop1 player_count < loop_end player_count run function mainlobby:hologram/round/get/sort/0
