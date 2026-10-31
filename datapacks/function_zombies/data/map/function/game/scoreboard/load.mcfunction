
scoreboard objectives add game.state dummy
scoreboard players set round game.state 1
scoreboard players set scoreboard game.state 1

scoreboard objectives add game.scoreboard dummy [{translate:zb.game.scoreboard.0}]
scoreboard objectives setdisplay sidebar game.scoreboard
#scoreboard objectives modify game.scoreboard numberformat blank

scoreboard players set §1§0§r game.scoreboard 24
team add game.scoreboard_line0
team join game.scoreboard_line0 §1§0§r
function map:game/scoreboard/load_date with storage time root.time
#team modify game.scoreboard_line0 suffix " §8 0.6§r"

scoreboard players set §1§1§r game.scoreboard 23
scoreboard players set §1§2§r game.scoreboard 22
scoreboard players set §1§3§r game.scoreboard 21
scoreboard players set §1§4§r game.scoreboard 20

scoreboard players set §1§5§r game.scoreboard 5
scoreboard players set §1§6§r game.scoreboard 4
scoreboard players set §1§7§r game.scoreboard 3
scoreboard players set §1§8§r game.scoreboard 2
scoreboard players set §1§9§r game.scoreboard 1


#scoreboard players set §2§0§r game.scoreboard 15
#scoreboard players set §2§1§r game.scoreboard 14
#scoreboard players set §2§2§r game.scoreboard 13
#scoreboard players set §2§3§r game.scoreboard 12
#scoreboard players set §2§4§r game.scoreboard 11
#scoreboard players set §2§5§r game.scoreboard 10
#scoreboard players set §2§6§r game.scoreboard 9
#scoreboard players set §2§7§r game.scoreboard 8
#scoreboard players set §2§8§r game.scoreboard 7
#scoreboard players set §2§9§r game.scoreboard 6

team add game.scoreboard_line1
team join game.scoreboard_line1 §1§2§r
team modify game.scoreboard_line1 prefix [{translate:zb.game.scoreboard.1,with:[{text:"§c§l1§r"}]}]

team add game.scoreboard_line2
team join game.scoreboard_line2 §1§3§r
team modify game.scoreboard_line2 prefix [{translate:zb.game.scoreboard.2}]
team modify game.scoreboard_line2 suffix " §a0§r"

team add game.scoreboard_line3
team join game.scoreboard_line3 §1§6§r
team modify game.scoreboard_line3 prefix [{translate:zb.game.scoreboard.3}]
team modify game.scoreboard_line3 suffix " §a0:00§r"

team add game.scoreboard_line4
team join game.scoreboard_line4 §1§7§r
team modify game.scoreboard_line4 prefix [{translate:zb.game.scoreboard.4}]

team add game.scoreboard_line5
team join game.scoreboard_line5 §1§9§r
team modify game.scoreboard_line5 prefix [{translate:zb.game.scoreboard.5}]
