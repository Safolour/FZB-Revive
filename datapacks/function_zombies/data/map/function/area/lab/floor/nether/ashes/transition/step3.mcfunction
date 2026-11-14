execute unless score round game.state matches 31..35 run return fail
execute unless score ashes area.floor.timer matches 1 run return fail
# Replay middle floor snapshot at y=132.
clone 334 132 129 362 134 173 286 90 129
schedule function map:area/lab/floor/nether/ashes/transition/step4 20t replace
