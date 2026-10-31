
scoreboard players set tick lobby.winter.tick 20
data modify storage lobby root.winter_clock.hour set from storage time root.hour
data modify storage lobby root.winter_clock.minute set from storage time root.minute
data modify storage lobby root.winter_clock.second set from storage time root.second

function decoration:lobby/winter/clock/time_set with storage lobby root.winter_clock
execute if score hour lobby.winter.tick matches 13.. run scoreboard players remove hour lobby.winter.tick 12

data remove storage lobby root

scoreboard players operation hour_angle lobby.winter.tick = hour lobby.winter.tick
scoreboard players operation hour_angle lobby.winter.tick *= 3600 number
scoreboard players operation minute_angle0 lobby.winter.tick = minute lobby.winter.tick
scoreboard players operation minute_angle0 lobby.winter.tick *= 60 number
scoreboard players operation hour_angle lobby.winter.tick += minute_angle0 lobby.winter.tick
scoreboard players operation hour_angle lobby.winter.tick += second lobby.winter.tick
scoreboard players operation hour_angle lobby.winter.tick /= 120 number
scoreboard players operation hour_angle lobby.winter.tick *= -1 number

scoreboard players operation minute_angle lobby.winter.tick = minute lobby.winter.tick
scoreboard players operation minute_angle lobby.winter.tick *= 60 number
scoreboard players operation minute_angle lobby.winter.tick += second lobby.winter.tick
scoreboard players operation minute_angle lobby.winter.tick /= 10 number
scoreboard players operation minute_angle lobby.winter.tick *= -1 number

scoreboard players operation second_angle lobby.winter.tick = second lobby.winter.tick
scoreboard players operation second_angle lobby.winter.tick *= 6 number
scoreboard players operation second_angle lobby.winter.tick *= -1 number

execute as @e[type=marker,tag=lobby.winter.clock] run function decoration:lobby/winter/clock/angle_reset

scoreboard players reset hour_angle lobby.winter.tick
scoreboard players reset minute_angle lobby.winter.tick
scoreboard players reset second_angle lobby.winter.tick