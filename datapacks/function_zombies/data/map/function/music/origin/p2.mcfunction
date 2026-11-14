function map:music/origin/stop
data modify storage map:music origin.phase set value 2
function map:music/origin/play {sound:"custom.origin_p2_intro"}
schedule function map:music/origin/p2_loop 52t replace
