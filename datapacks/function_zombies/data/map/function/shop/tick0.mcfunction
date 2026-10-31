
execute if entity @p[tag=chosen,scores={interaction.zhf=1}] run return fail
scoreboard players set @p[tag=chosen,scores={interaction.right_click=1..}] interaction.right_click 0
tag @s add chosen
scoreboard players operation price shop.price = @s shop.price
execute if entity @s[tag=refill] as @p[tag=chosen] at @s run function map:shop/interact/refill
execute if entity @s[tag=ultimatemachine] as @p[tag=chosen] at @s run function map:shop/interact/upgradable
execute if entity @s[tag=gun] as @p[tag=chosen] at @s run function map:shop/interact/buy_gun with entity @n[type=interaction,tag=chosen] data
tag @s remove chosen
