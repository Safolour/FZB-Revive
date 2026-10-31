
execute if score online0 player_count = online player_count if score in_game0 player_count = in_game player_count run return fail

execute if entity @a[scores={system.room=3}] run function map:waitlobby/scoreboard/player_count

#execute if score online player_count matches ..1 run scoreboard players operation in_game0 player_count = in_game player_count
#execute if score online player_count matches ..1 run return run scoreboard players operation online0 player_count = online player_count
scoreboard players set loop player_count 0
execute store result score loop_end player_count run data get storage stat root.player_list.list
function system:player_change/1
data remove storage system root
scoreboard players operation in_game0 player_count = in_game player_count
scoreboard players operation online0 player_count = online player_count