scoreboard players set warped area.floor.timer 1
scoreboard players set count area.floor.timer 0

function map:area/lab/floor/nether/warped/2

execute if score timer area.floor.timer matches 800.. run scoreboard players set timer area.floor.timer 0

function map:area/lab/floor/nether/crimson/reset
function map:area/lab/floor/nether/ashes/reset
function map:area/lab/floor/nether/spirit/reset
