
execute unless score count_down waitlobby.timer matches 0.. run return fail
execute store result storage waitlobby root.stat.time int 1 run scoreboard players get count_down waitlobby.timer
function map:waitlobby/scoreboard/time0 with storage waitlobby root.stat
data remove storage waitlobby root