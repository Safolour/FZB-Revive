
scoreboard players set range interaction.range 0
scoreboard players set @s interaction.right_click 1
execute if entity @n[type=interaction,tag=target] anchored eyes positioned ^ ^ ^ run function interaction:loop/0
tag @s remove chosen

#function system:tick0_0