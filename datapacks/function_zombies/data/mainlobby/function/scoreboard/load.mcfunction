
scoreboard objectives add lobby.scoreboard dummy [{translate:zb.mainlobby.scoreboard.0}]
scoreboard objectives add lobby.scoreboard.animation dummy
 scoreboard players set loop lobby.scoreboard.animation 10
scoreboard objectives setdisplay sidebar.team.white lobby.scoreboard
scoreboard objectives modify lobby.scoreboard numberformat blank
 

scoreboard players set §0§r lobby.scoreboard 8
scoreboard players set §1§r lobby.scoreboard 7
scoreboard players set §2§r lobby.scoreboard 6
scoreboard players set §3§r lobby.scoreboard 5
scoreboard players set §4§r lobby.scoreboard 4
scoreboard players set §5§r lobby.scoreboard 3
scoreboard players set §6§r lobby.scoreboard 1

team add mainlobby.scoreboard_line0
team join mainlobby.scoreboard_line0 §0§r
team add mainlobby.scoreboard_line1
team join mainlobby.scoreboard_line1 §2§r
team modify mainlobby.scoreboard_line1 prefix [{translate:zb.mainlobby.scoreboard.1}]
team modify mainlobby.scoreboard_line1 suffix "§a0§r"
team add mainlobby.scoreboard_line2
team join mainlobby.scoreboard_line2 §3§r
team modify mainlobby.scoreboard_line2 prefix [{translate:zb.mainlobby.scoreboard.2}]
team modify mainlobby.scoreboard_line2 suffix [{translate:zb.mainlobby.scoreboard.map.N_A}]
team add mainlobby.scoreboard_line3
team join mainlobby.scoreboard_line3 §4§r
team modify mainlobby.scoreboard_line3 prefix [{translate:zb.mainlobby.scoreboard.3}]
team add mainlobby.scoreboard_line4
team join mainlobby.scoreboard_line4 §6§r
team modify mainlobby.scoreboard_line4 prefix [{translate:zb.mainlobby.scoreboard.4}]

function mainlobby:scoreboard/load_date with storage time root.time