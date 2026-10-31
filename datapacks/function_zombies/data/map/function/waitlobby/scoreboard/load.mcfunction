
scoreboard objectives add waitlobby.scoreboard dummy [{translate:zb.waitlobby.scoreboard.0}]
scoreboard objectives setdisplay sidebar waitlobby.scoreboard
scoreboard objectives modify waitlobby.scoreboard numberformat blank

scoreboard players set §0§0§r waitlobby.scoreboard 8
team add waitlobby.scoreboard_line0
team join waitlobby.scoreboard_line0 §0§0§r
function map:waitlobby/scoreboard/load_date with storage time root.time
#team modify waitlobby.scoreboard_line0 suffix " §8 ver 1.0§r"

scoreboard players set §0§1§r waitlobby.scoreboard 7
scoreboard players set §0§2§r waitlobby.scoreboard 6
scoreboard players set §0§3§r waitlobby.scoreboard 5
scoreboard players set §0§4§r waitlobby.scoreboard 4
scoreboard players set §0§5§r waitlobby.scoreboard 3
scoreboard players set §0§6§r waitlobby.scoreboard 2
scoreboard players set §0§7§r waitlobby.scoreboard 1

team add waitlobby.scoreboard_line1
team join waitlobby.scoreboard_line1 §0§2§r
team modify waitlobby.scoreboard_line1 prefix [{translate:zb.waitlobby.scoreboard.1}]

team add waitlobby.scoreboard_line2
team join waitlobby.scoreboard_line2 §0§3§r
team modify waitlobby.scoreboard_line2 prefix [{translate:zb.waitlobby.scoreboard.2}]
team modify waitlobby.scoreboard_line2 suffix [{text:" §a1/§r"},{score:{name:max_player,objective:map},color:green}]

team add waitlobby.scoreboard_line3
team join waitlobby.scoreboard_line3 §0§5§r
team modify waitlobby.scoreboard_line3 prefix [{translate:zb.waitlobby.scoreboard.5}]

team add waitlobby.scoreboard_line4
team join waitlobby.scoreboard_line4 §0§7§r
team modify waitlobby.scoreboard_line4 prefix [{translate:zb.waitlobby.scoreboard.4}]

