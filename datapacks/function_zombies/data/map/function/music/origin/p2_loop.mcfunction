execute unless score round game.state matches 70 run return run function map:music/origin/stop
execute unless data storage map:music origin{phase:2} run return 0
function map:music/origin/stop
data modify storage map:music origin.phase set value 2
function map:music/origin/play {sound:"custom.origin_p2_loop"}
schedule function map:music/origin/p2_loop 1227t replace
