function map:music/origin/stop
data modify storage map:music origin.phase set value 3
function map:music/origin/play {sound:"custom.origin_p3_intro"}
# 09/30: 5573808 -> 5594709 ms; 10/20 muted stop groups: 10059407 -> 10080296 ms.
# P3 has a 20.95-second introduction, unlike P2's 2.61-second introduction.
schedule function map:music/origin/p3_loop 418t replace
