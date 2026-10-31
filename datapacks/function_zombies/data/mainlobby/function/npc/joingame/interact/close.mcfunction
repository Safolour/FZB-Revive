
function mainlobby:npc/joingame/target_player
execute as @p[tag=target] run say 关闭
clear @p[tag=target] *[custom_data~{tag:["clear","minecart"]}]
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{tag:["clear"]}}}}] run function system:death
tag @p[tag=target] remove target

function mainlobby:npc/joingame/kill