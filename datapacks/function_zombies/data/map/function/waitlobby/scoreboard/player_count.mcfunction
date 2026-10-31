
execute store result score player_count waitlobby.stat run execute if entity @a[scores={system.room=3}]
execute store result storage waitlobby root.stat.player_count int 1 run scoreboard players get player_count waitlobby.stat

execute if score player_count waitlobby.stat >= min_player map run function map:waitlobby/start_timer
execute if score player_count waitlobby.stat < min_player map run function map:waitlobby/stop_timer
execute if score player_count waitlobby.stat >= quickstart_player map run function map:waitlobby/quickstart

function map:waitlobby/scoreboard/player_count0 with storage waitlobby root.stat
data remove storage waitlobby root