
scoreboard players set quit system.stat 0
$data modify storage system root.player set from storage stat root.player_list.game[$(number)]
$execute if data storage stat root.player_list.game[$(number)] run function system:player_change/3 with storage system root.player
execute if score quit system.stat matches 1 run return fail
$data modify storage system root.player0 set from storage stat root.player_list.list[$(number)]
function system:player_change/4 with storage system root.player0