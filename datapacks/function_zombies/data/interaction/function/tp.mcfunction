
execute if score @s interaction.state matches 3 run tp @s ~ ~128 ~
execute if score @s[tag=interaction2] interaction.state matches 2 run tp ~ ~-0.75 ~
execute if score @s[tag=!interaction2] interaction.state matches 2 run tp @s @p[tag=chosen]
scoreboard players set @s interaction.state 1
