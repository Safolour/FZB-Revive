
execute positioned 0 -55 0 if entity @s[distance=..10] run function mainlobby:tp_lobby

# 主大厅：手上拿着枪时开启交互实体（左键装填靠它），空手时关掉；交互实体会挡住 NPC 箱子矿车的右键
execute if entity @s[scores={system.room=1}] if items entity @s weapon.mainhand *[custom_data~{tag:["gun"]}] run scoreboard players set @s interaction.state 1
execute if entity @s[scores={system.room=1}] unless items entity @s weapon.mainhand *[custom_data~{tag:["gun"]}] run function mainlobby:interaction/off

execute if entity @s[advancements={mainlobby:minecart_open=true}] run function mainlobby:npc/joingame/open

execute as @s at @s if score @s lobby.death matches 1.. run function mainlobby:death

#back
execute positioned 4 -60 832 positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] run function mainlobby:tp_lobby

#spring
execute if score month system.stat matches 3..5 positioned 151 100 660 positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] run function mainlobby:tp_setting
execute if score month system.stat matches 3..5 run return fail
#summer
execute if score month system.stat matches 6..8 positioned 474 102 660 positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] run function mainlobby:tp_setting
execute if score month system.stat matches 6..8 run return fail
#autumn
execute if score month system.stat matches 9..11 positioned 797 101 660 positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] run function mainlobby:tp_setting
execute if score month system.stat matches 9..11 run return fail
#winter
execute if score month system.stat matches 12 positioned 1113 100 649 positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] run function mainlobby:tp_setting
execute if score month system.stat matches 12 run return fail
#winter
execute if score month system.stat matches 1..2 positioned 1113 100 649 positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] run function mainlobby:tp_setting
execute if score month system.stat matches 1..2 run return fail

execute positioned 151 100 660 positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] run function mainlobby:tp_setting