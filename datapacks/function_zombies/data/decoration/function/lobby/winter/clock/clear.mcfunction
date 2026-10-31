execute as @e[tag=lobby.winter.clock] run function system:death

scoreboard players reset clock_particle lobby.winter.tick

scoreboard players reset hour lobby.winter.tick
scoreboard players reset minute lobby.winter.tick
scoreboard players reset second lobby.winter.tick

scoreboard players reset hour_angle lobby.winter.tick
scoreboard players reset minute_angle lobby.winter.tick
scoreboard players reset second_angle lobby.winter.tick

scoreboard players reset circle lobby.winter.tick
