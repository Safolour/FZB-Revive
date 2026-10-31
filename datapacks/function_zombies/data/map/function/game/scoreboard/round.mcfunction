
scoreboard players operation round0 game.state = round game.state
execute store result storage game scoreboard_round.round int 1 run scoreboard players get round game.state
execute store result storage game scoreboard_round.temperature int 1 run scoreboard players get temperature0 area.temperature
function map:game/scoreboard/round0 with storage game scoreboard_round
data remove storage game scoreboard_round
