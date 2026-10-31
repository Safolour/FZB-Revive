
$team modify game.scoreboard_line1 prefix [{translate:zb.game.scoreboard.6,with:[{text:"§c$(round)§r"}]}]
$team modify game.scoreboard_line1 suffix [{translate:zb.game.scoreboard.7,with:[{text:"§a$(zombie_left)§r"}]}]
execute if score round game.state matches -1 run team modify game.scoreboard_line1 prefix [{translate:zb.game.scoreboard.8}] 