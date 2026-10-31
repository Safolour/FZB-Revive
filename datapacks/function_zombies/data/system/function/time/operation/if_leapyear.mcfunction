
scoreboard players set year3 time 0
scoreboard players operation year0 time = year time
scoreboard players operation year0 time %= 4 time
scoreboard players operation year1 time = year time
scoreboard players operation year1 time %= 100 time
scoreboard players operation year2 time = year time
scoreboard players operation year2 time %= 400 time

#year0=0 能被4整除|year1=0 能被100整除|year2=0 能被400整除
execute if score year2 time matches 0 run return run scoreboard players set year3 time 1
execute if score year0 time matches 0 unless score year0 time matches 0 run return run scoreboard players set year3 time 1
