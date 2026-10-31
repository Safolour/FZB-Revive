
execute if score in_game lobby.info = in_game0 lobby.info run return fail
execute store result storage mainlobby root.stat.player_count int 1 run scoreboard players get in_game lobby.info
function mainlobby:npc/joingame/menu_item/menu1_playercount0 with storage mainlobby root.stat
data remove storage mainlobby root