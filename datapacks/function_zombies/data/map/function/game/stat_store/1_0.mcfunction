
$execute if entity @a[name=$(name),scores={uuid=$(uuid)}] run return fail
$team modify game.player.$(uuid) suffix [{translate:zb.game.scoreboard.player.0,with:[{translate:zb.game.scoreboard.player.quit}]}]