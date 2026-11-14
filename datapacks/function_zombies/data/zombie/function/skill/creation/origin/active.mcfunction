scoreboard players set @s origin.busy 0
execute if score @s origin.cast matches 1.. run scoreboard players set @s origin.busy 1
execute if score @s origin.tool matches 3 run scoreboard players set @s origin.busy 1
