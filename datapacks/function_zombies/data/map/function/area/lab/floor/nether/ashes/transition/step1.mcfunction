execute unless score round game.state matches 31..35 run return fail
execute unless score ashes area.floor.timer matches 1 run return fail
function map:area/lab/floor/nether/ashes/2
function map:area/lab/floor/nether/ashes/transition/overlay_1
schedule function map:area/lab/floor/nether/ashes/transition/step2 20t replace
