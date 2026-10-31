
execute if score tick0 lobby.winter.tick matches 0 positioned 1124 127.5 660 run function decoration:lobby/winter/clock/particle

scoreboard players add tick lobby.winter.tick 1
execute if score tick lobby.winter.tick matches 20.. run scoreboard players set tick lobby.winter.tick 0

scoreboard players operation tick0 lobby.winter.tick = tick lobby.winter.tick
scoreboard players operation tick0 lobby.winter.tick %= 10 number
