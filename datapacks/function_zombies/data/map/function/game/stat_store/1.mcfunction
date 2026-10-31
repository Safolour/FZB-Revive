
execute store result storage game root.number int 1 run scoreboard players get loop game.player
function map:game/stat_store/1_0 with storage game root
scoreboard players add loop game.player 1
execute if score loop game.player < loop_end game.player run function map:game/stat_store/1