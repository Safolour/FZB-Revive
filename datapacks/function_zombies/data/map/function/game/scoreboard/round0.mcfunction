
$team modify game.scoreboard_line1 prefix [{translate:zb.game.scoreboard.1,with:[{text:"§c§l$(round)§r"}]}]
# PL 第 21-40 回合：回合后面接温度（录像：zb.game.scoreboard.1 的 extra 里放 zb.game.scoreboard.1.0，温度用 §c）
$execute if score type map matches 4 if score round game.state matches 21..40 run team modify game.scoreboard_line1 prefix {translate:zb.game.scoreboard.1,with:[{text:"§c§l$(round)§r"}],extra:[{translate:zb.game.scoreboard.1.0,with:[{text:"§c$(temperature)§r"}]}]}

execute if score round game.state matches -1 run team modify game.scoreboard_line1 prefix [{translate:zb.game.scoreboard.8}]
