function map:music/origin/stop
data modify storage map:music origin.phase set value 1
tellraw @a[scores={system.room=4..}] {translate:"zb.bgm.tellraw.0",with:[{translate:"zb.sound.origin",color:"aqua"},{text:"Li_Him",color:"gold"}]}
function map:music/origin/play {sound:"custom.origin_p1_intro"}
schedule function map:music/origin/loop 993t replace
