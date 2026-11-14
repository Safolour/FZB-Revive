execute unless score round game.state matches 70 run return run function map:music/origin/stop
execute unless data storage map:music origin{phase:1} run return 0
function map:music/origin/stop
data modify storage map:music origin.phase set value 1
function map:music/origin/play {sound:"custom.origin_p1_loop"}
schedule function map:music/origin/loop 1553t replace
