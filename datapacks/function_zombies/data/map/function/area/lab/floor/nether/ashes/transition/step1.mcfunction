execute unless score round game.state matches 31..35 run return fail
execute unless score ashes area.floor.timer matches 1 run return fail
# Replay middle floor snapshot at y=124.
clone 334 124 129 362 126 173 286 90 129
schedule function map:area/lab/floor/nether/ashes/transition/step2 20t replace
