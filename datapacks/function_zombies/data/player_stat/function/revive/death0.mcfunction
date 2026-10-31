
$team modify game.player.$(uuid) suffix [{translate:zb.game.scoreboard.player.0,with:[{translate:zb.game.scoreboard.player.dead}]}]

$execute if data storage player_stat root.player.$(name).down_by[{translate:"zb.zombie.name.using"}] run data modify storage player_stat root.player.$(name).down_by[{translate:"zb.zombie.name.using"}].translate set value "zb.zombie.name.using0"

$data modify storage game root.player.target set from storage player_stat root.player.$(name).down_by