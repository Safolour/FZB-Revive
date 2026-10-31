
$execute if score sort player_count matches 0 unless data storage stat root.info[$(number)].value run data modify storage stat root.info[$(number)].value set value 0
$execute if score sort player_count matches 0 store result score value player_count run data get storage stat root.info[$(number)].value
$execute if score sort player_count matches 0 unless data storage stat root.info[$(number0)].value run data modify storage stat root.info[$(number0)].value set value 0
$execute if score sort player_count matches 0 store result score value0 player_count run data get storage stat root.info[$(number0)].value

$execute if score sort player_count matches 1 store result score value player_count run data get storage stat root.info[$(number)].value
$execute if score sort player_count matches 1 unless data storage stat root.info[$(number)].value run data modify storage stat root.info[$(number)].value set value 2147483647
$execute if score sort player_count matches 1 store result score value0 player_count run data get storage stat root.info[$(number0)].value
$execute if score sort player_count matches 1 unless data storage stat root.info[$(number0)].value run data modify storage stat root.info[$(number0)].value set value 2147483647

$execute if score text player_count matches 1 unless data storage stat root.info[$(number)].value_text run data modify storage stat root.info[$(number)].value_text set value '§cN/A§r'

execute if score sort player_count matches 0 if score value player_count > value0 player_count run return fail
execute if score sort player_count matches 1 if score value player_count < value0 player_count run return fail
$data modify storage stat root.info_store append from storage stat root.info[$(number)]
$data modify storage stat root.info_store append from storage stat root.info[$(number0)]
$data remove storage stat root.info[$(number0)]
$data remove storage stat root.info[$(number)]
$data modify storage stat root.info insert $(number) from storage stat root.info_store[0]
$data modify storage stat root.info insert $(number) from storage stat root.info_store[1]
data modify storage stat root.info_store set value []