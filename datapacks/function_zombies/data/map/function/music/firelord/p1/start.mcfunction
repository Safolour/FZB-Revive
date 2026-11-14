# R40 wave 0 invokes this; later Boss phase transitions are separate.
execute unless score round game.state matches 40 run return fail
function map:music/firelord/stop
tellraw @a {translate:"zb.bgm.tellraw.0",with:[{translate:"zb.sound.firelord",color:"aqua"},{text:"Li_Him",color:"gold"}]}
function map:music/firelord/play {sound:"custom.firelord_p1_intro"}
schedule function map:music/firelord/p1/loop 578t replace
