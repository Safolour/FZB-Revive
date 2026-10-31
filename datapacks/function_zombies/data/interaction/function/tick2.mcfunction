

execute if score @s interaction.state matches 0 run function system:death
scoreboard players set @s[tag=interaction] interaction.state 0
execute if entity @s[nbt={HurtTime:10s}] run function interaction:detect/left_click0