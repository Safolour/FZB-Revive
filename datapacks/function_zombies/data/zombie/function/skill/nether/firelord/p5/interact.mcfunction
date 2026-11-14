execute if entity @p[tag=chosen,scores={interaction.zhf=1}] run return fail
execute unless entity @p[tag=chosen,scores={interaction.right_click=1..,stat.player=1,system.room=4..}] run return fail
scoreboard players set @p[tag=chosen] interaction.right_click 0
execute if data storage map:r40 p5 if score lab_core door.open matches 1 run setblock 300 88 196 minecraft:lever[face=wall,facing=north,powered=true]
