execute unless score round game.state matches 70 run return run function map:music/origin/stop
execute unless data storage map:music origin{phase:3} run return 0
function map:music/origin/stop
data modify storage map:music origin.phase set value 3
function map:music/origin/play {sound:"custom.origin_p3_loop"}
schedule function map:music/origin/p3_loop 1431t replace
