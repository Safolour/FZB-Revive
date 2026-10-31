
$execute store result score item luckychest.item run random value 0..$(count)
$execute store result score item1 luckychest.item run random value 0..$(count0)

execute if score unrepeatable luckychest.item matches 1 run function map:luckychest/trigger/random_item3

execute store result storage luckychest root.list.item int 1 run scoreboard players get item luckychest.item
function map:luckychest/trigger/random_item1 with storage luckychest root.list

scoreboard players operation item0 luckychest.item = item luckychest.item