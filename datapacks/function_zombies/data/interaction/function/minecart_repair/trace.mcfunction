# 从玩家眼睛沿视线检查 4.5 格；仅当右键落在该机器的大交互实体上时才会执行。
execute if entity @e[type=interaction,tag=target,tag=setting.gear_capture] positioned ~-0.125 ~-0.125 ~-0.125 if entity @e[type=chest_minecart,tag=setting_gear,tag=!opened,dx=0,dy=0,dz=0] run return run function interaction:minecart_repair/setting
execute if entity @e[type=interaction,tag=target,tag=lobby,tag=reload_capture] positioned ~-0.125 ~-0.125 ~-0.125 if entity @e[type=chest_minecart,tag=npc,tag=lobby,tag=minecart,tag=!opened,dx=0,dy=0,dz=0] run return run function interaction:minecart_repair/lobby
execute if entity @e[type=interaction,tag=target,tag=shop,tag=perk,tag=interaction0] positioned ~-0.125 ~-0.125 ~-0.125 if entity @e[type=chest_minecart,tag=shop,tag=perk,tag=minecart,tag=!opened,dx=0,dy=0,dz=0] run return run function interaction:minecart_repair/perk
execute if entity @e[type=interaction,tag=target,tag=shop,tag=armor,tag=interaction0] positioned ~-0.125 ~-0.125 ~-0.125 if entity @e[type=chest_minecart,tag=shop,tag=armor,tag=minecart,tag=!opened,dx=0,dy=0,dz=0] run return run function interaction:minecart_repair/armor
scoreboard players add #minecart_repair interaction.range 1
execute if score #minecart_repair interaction.range matches ..17 positioned ^ ^ ^0.25 run function interaction:minecart_repair/trace
