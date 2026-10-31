
execute if score player_count lobby.info = player_count0 lobby.info run return fail
execute store result storage mainlobby root.stat.player_count int 1 run scoreboard players get player_count lobby.info
function mainlobby:scoreboard/player_count0 with storage mainlobby root.stat
data remove storage mainlobby root