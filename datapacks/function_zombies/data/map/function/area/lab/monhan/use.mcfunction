# 右键 Monhan（interaction:loop/hit，执行者 = 交互实体，玩家 = @p[tag=chosen]）
execute if entity @p[tag=chosen,scores={interaction.zhf=1}] run return fail
scoreboard players set @p[tag=chosen,scores={interaction.right_click=1..}] interaction.right_click 0
execute as @p[tag=chosen,scores={stat.player=1}] at @s run function map:area/lab/monhan/page/main/show
