
execute unless score loop lobby.winter.tick matches ..54 run return fail
particle wax_off ~ ~ ~ 0 0 0 0 1 force
scoreboard players add loop lobby.winter.tick 1
execute if score loop lobby.winter.tick matches ..54 positioned ^ ^ ^0.25 run function decoration:lobby/winter/clock/pointer/second
execute if score loop lobby.winter.tick matches ..54 run return fail
scoreboard players set loop lobby.winter.tick 0
execute if score tick lobby.winter.tick matches 0 positioned ^ ^ ^ run function decoration:lobby/winter/clock/pointer/second_circle