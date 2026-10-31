

execute if score @s interaction.state matches 0 run function system:death
scoreboard players set @s[tag=interaction] interaction.state 0

execute if data entity @s interaction.player run function interaction:detect/right_click
execute if data entity @s attack.player run function interaction:detect/left_click