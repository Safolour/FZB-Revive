
scoreboard players operation zombie_left0 game.state = zombie_left game.state
execute store result storage game root.zombie_left int 1 run scoreboard players get zombie_left game.state
function map:game/scoreboard/zombie_left0 with storage game root
data remove storage game root