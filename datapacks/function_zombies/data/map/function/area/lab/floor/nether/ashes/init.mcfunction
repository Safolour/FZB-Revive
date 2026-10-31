scoreboard players set ashes area.floor.timer 1
scoreboard players set count area.floor.timer 0

execute if score round game.state matches 31 run function map:area/lab/floor/nether/ashes/transition/start
execute unless score round game.state matches 31 run function map:area/lab/floor/nether/ashes/2

execute if score timer area.floor.timer matches 400.. run scoreboard players set timer area.floor.timer 0

function map:area/lab/floor/nether/crimson/reset
function map:area/lab/floor/nether/warped/reset
function map:area/lab/floor/nether/spirit/reset
