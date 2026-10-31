
execute unless score loop lobby.winter.tick matches ..30 run return fail
particle end_rod ~ ~ ~ 0 0 0 0 1 force
scoreboard players add loop lobby.winter.tick 1
execute if score loop lobby.winter.tick matches ..30 positioned ^ ^ ^0.25 run function decoration:lobby/winter/clock/pointer/hour
execute if score loop lobby.winter.tick matches ..30 run return fail
scoreboard players set loop lobby.winter.tick 0