
execute if entity @p[tag=chosen,scores={interaction.zhf=1}] run return fail
scoreboard players set @p[tag=chosen,scores={interaction.right_click=1..}] interaction.right_click 0

tag @s add chosen
scoreboard players operation price door.price = @s door.price
execute as @p[tag=chosen] at @s run function map:door/interact/buy with entity @n[type=interaction,tag=chosen] data
tag @s remove chosen