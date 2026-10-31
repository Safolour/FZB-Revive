
function mainlobby:npc/joingame/target_player
clear @p[tag=target] *[custom_data~{tag:["clear","minecart"]}]
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{tag:["clear"]}}}}] run function system:death
tag @a[tag=target] remove target
data modify entity @s Items set value []
execute if score @s lobby.menu_page matches 1 run function mainlobby:npc/joingame/menu_item/menu1
execute if score @s lobby.menu_page matches 2 run function mainlobby:npc/joingame/menu_item/menu2