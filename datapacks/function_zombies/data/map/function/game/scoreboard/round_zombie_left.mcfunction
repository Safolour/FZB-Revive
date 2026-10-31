
scoreboard players operation zombie_left0 game.state = zombie_left game.state
scoreboard players operation round0 game.state = round game.state
execute store result storage game root.zombie_left int 1 run scoreboard players get zombie_left game.state
execute store result storage game root.round int 1 run scoreboard players get round game.state
function map:game/scoreboard/round_zombie_left0 with storage game root
data remove storage game root