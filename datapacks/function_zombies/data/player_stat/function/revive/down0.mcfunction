
$execute if data storage revive root.down.target run data modify storage player_stat root.player.$(name).down_by set from storage revive root.down.target
$execute if data storage revive root.down.target0 run data modify storage player_stat root.player.$(name).down_by set from storage revive root.down.target0
execute if data storage revive root.down.target0 run data modify storage revive root.down.target set from storage revive root.down.target0
execute if entity @s[scores={area=1000}] run data modify storage game root.player.area set value lab
execute unless data storage game root.player.area run data modify storage game root.player.area set value unknown

data modify storage revive root.down.area set from storage game root.player.area

$team modify game.player.$(uuid) suffix [{translate:zb.game.scoreboard.player.0,with:[{translate:zb.game.scoreboard.player.revive}]}]