
scoreboard players operation map lobby.info = type map
execute if score map lobby.info = map0 lobby.info run return fail
scoreboard players operation map0 lobby.info = map lobby.info

execute if score map lobby.info matches -1 run team modify mainlobby.scoreboard_line2 suffix [{translate:zb.mainlobby.scoreboard.map.N_A}]
execute if score map lobby.info matches 3 run team modify mainlobby.scoreboard_line2 suffix [{translate:zb.mainlobby.scoreboard.map.ee}]
execute if score map lobby.info matches 4 run team modify mainlobby.scoreboard_line2 suffix [{translate:zb.mainlobby.scoreboard.map.lab}]