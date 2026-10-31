
execute unless data storage stat root.player run return fail
item replace block 1 -60 1 container.1 with paper
data modify block 1 -60 1 Items[{Slot:1b}].components."minecraft:custom_data".data set from storage stat root.player


