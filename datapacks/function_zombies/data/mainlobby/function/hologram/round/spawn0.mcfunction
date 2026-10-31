
$execute as @e[type=armor_stand,tag=hologram,tag=lobby,tag=text,tag=move,tag=$(type)] at @s run tp @s ~ ~0.375 ~
execute store result storage stat root.info_text.number int 1 run scoreboard players get line1 lobby.hologram
data modify storage stat root.info_text.player set from storage stat root.info1[0].player
execute if score text player_count matches 0 run data modify storage stat root.info_text.value set from storage stat root.info1[0].value
execute if score text player_count matches 1 run data modify storage stat root.info_text.value set from storage stat root.info1[0].value_text
execute if score text player_count matches 1 run data modify storage stat root.info_text.value set from storage stat root.info1[0].value_text
execute store result score value player_count run data get storage stat root.info_text.value
execute if score value player_count matches 2147483647 run data modify storage stat root.info_text.value set value '§cN/A§r'
function mainlobby:hologram/round/spawn1 with storage stat root.info_text
data remove storage stat root.info1[0]

scoreboard players add line1 lobby.hologram 1
scoreboard players remove line lobby.hologram 1
execute if score line1 lobby.hologram <= min lobby.hologram unless data storage stat root.info1[0] run function mainlobby:hologram/round/spawn0_0
execute if score line1 lobby.hologram > max lobby.hologram run scoreboard players set line lobby.hologram 0
$execute if score line lobby.hologram matches 1.. run function mainlobby:hologram/round/spawn0 {type:$(type)}
