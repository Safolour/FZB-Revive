# 必须先生成交互实体，再生成矿车；框内视点的实体选中会受遍历顺序影响。
execute as @e[type=interaction,tag=lobby,tag=reload_capture] run function system:death
execute positioned ^ ^-2.8 ^-0.8625 run summon interaction ~ ~ ~ {Tags:["lobby","reload_capture"],width:9,height:9}
# 热更新时重新生成未打开的矿车，使其排在交互实体之后。
execute as @e[type=chest_minecart,tag=npc,tag=lobby,tag=minecart,tag=!opened] run function mainlobby:npc/joingame/kill
