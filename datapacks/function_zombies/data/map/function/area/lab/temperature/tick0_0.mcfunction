
execute if entity @p[tag=chosen,scores={interaction.zhf=1}] run return fail
scoreboard players set @p[tag=chosen,scores={interaction.right_click=1..}] interaction.right_click 0
tag @s add chosen
execute as @p[tag=chosen] at @s run function map:area/lab/temperature/tellraw/click
tag @s remove chosen
