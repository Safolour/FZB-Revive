# Call when the core gate becomes free and the escape floor is applied.
execute unless score round game.state matches 40 run return fail
function map:music/firelord/stop
tellraw @a[scores={system.room=4..}] {translate:"zb.bgm.tellraw.0",with:[{translate:"zb.sound.firelord_p2_intro",color:"aqua"},{text:"Li_Him",color:"gold"}]}
function map:music/firelord/play {sound:"custom.firelord_p2_intro"}
schedule function map:music/firelord/p2/loop 561t replace
