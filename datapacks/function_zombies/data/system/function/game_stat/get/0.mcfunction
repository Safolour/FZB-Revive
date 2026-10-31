
scoreboard players set loop player_count 0
execute store result score loop_end player_count run data get storage stat root.player_list.game
function system:game_stat/get/1
data remove storage system root
#tellraw @a [{storage:stat,nbt:root.player}]