
execute if score in_game0 player_count matches ..1 run return fail
$execute if entity @a[name=$(name),scores={uuid=$(uuid)}] run return fail
$execute if score $(name) system.online matches 0 run return fail
scoreboard players set quit system.stat 1
$scoreboard players set uuid uuid $(uuid)
function player_stat:revive/playe_model_remove0
$scoreboard players set $(name) system.online 0
$team modify game.player.$(uuid) suffix [{translate:zb.game.scoreboard.player.0,with:[{translate:zb.game.scoreboard.player.quit}]}]
$tellraw @a[scores={system.room=4..}] [{translate:zb.multiplayer.0,with:[{text:"$(name)",color:gray}]}]
$tellraw @a[scores={system.room=..3}] [{translate:zb.multiplayer.3,with:[{text:"$(name)",color:white}]}]

