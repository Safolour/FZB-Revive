
execute if entity @a[scores={system.room=4..}] run return run function mainlobby:npc/joingame/interact/join_fail1
execute if score type map matches 0.. unless score type map matches 4 run return run function mainlobby:npc/joingame/interact/join_fail
execute if score in_game player_count >= max_player map run return run function mainlobby:npc/joingame/interact/join_fail0

scoreboard players set type map 4

function mainlobby:npc/joingame/target_player
clear @p[tag=target] *[custom_data~{tag:["clear","minecart"]}]
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{tag:["clear"]}}}}] run function system:death
execute as @p[tag=target] run function map:waitlobby/tp_waitlobby
tag @p[tag=target] remove target

function mainlobby:npc/joingame/kill
