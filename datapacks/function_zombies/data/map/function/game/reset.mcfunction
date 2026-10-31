
scoreboard objectives remove gold
scoreboard objectives remove gold0

scoreboard objectives remove game.timer
scoreboard objectives remove game.player

function map:game/scoreboard/reset

data remove storage game_stat root
data remove storage game root

schedule clear map:game/1s
schedule clear map:game/1s_0


team remove game.player
team remove game.player.0
team remove game.player.1
team remove game.player.2
team remove game.player.3
team remove game.player.4
team remove game.player.5
team remove game.player.6
team remove game.player.7
team remove game.player.8
team remove game.player.9
team remove game.player.10
team remove game.player.11
team remove game.player.12
team remove game.player.13
team remove game.player.14
team remove game.player.15
team remove game.player.16

function map:game/stat_store/0