
execute if entity @p[tag=chosen,scores={interaction.zhf=1}] run return fail
tag @s add chosen

scoreboard players operation display area.showcase = @s area.showcase
scoreboard players set item_display area.showcase 0
scoreboard players set @p[tag=chosen,scores={interaction.right_click=1..}] interaction.right_click 0
execute as @p[tag=chosen] at @s run function map:area/lab/monhan/showcase/trigger/use

execute if score item_display area.showcase matches 1 run function map:area/lab/monhan/showcase/trigger/place
execute if score item_display area.showcase matches 2 run function map:area/lab/monhan/showcase/trigger/take
scoreboard players set item_display area.showcase 0
item replace block 1 -60 1 container.26 with air

tag @s remove chosen