
#sort:0 大到小 sort:1小到大
#map:3 元素反应 map:4 传送门实验室
#type \
times_knock_down death zombie_kill player_revived door_open gun_accuracy gun_headshot_accuracy win total_round best_round window_repaired fastest_win
data modify storage stat root.info set value []
data modify storage stat root.info_store set value []
scoreboard players set text player_count 0
scoreboard players set loop player_count 0
execute store result score loop_end player_count run data get storage stat root.player.list
$data modify storage system root.type set value $(type)
$data modify storage system root.map set value $(map)
$scoreboard players set sort player_count $(sort)
function mainlobby:hologram/round/get/1
scoreboard players set loop1 player_count 0
execute if score sort player_count matches 0..1 run function mainlobby:hologram/round/get/sort/0
#tellraw @a [{storage:stat,nbt:root.info}]
data remove storage system root
