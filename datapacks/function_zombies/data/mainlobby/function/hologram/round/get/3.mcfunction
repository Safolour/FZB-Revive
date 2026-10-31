
$data modify storage stat root.info append value {player:$(name)}
$data modify storage stat root.info[{player:$(name)}].value set from storage stat root.player.$(map).$(name).$(type)
$execute if data storage stat root.player.$(map).$(name).$(type)_text run data modify storage stat root.info[{player:$(name)}].value_text set from storage stat root.player.$(map).$(name).$(type)_text
$execute if data storage stat root.player.$(map).$(name).$(type)_text run scoreboard players set text player_count 1