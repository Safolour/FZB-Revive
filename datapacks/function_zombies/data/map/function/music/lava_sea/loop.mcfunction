execute unless score round game.state matches 30 run return run function map:music/lava_sea/stop
function map:music/lava_sea/stop
function map:music/lava_sea/play {sound:"custom.traversing_the_primordial_lava_sea_loop"}
# loop 128.05 秒，录像里每 128.0 秒重播
schedule function map:music/lava_sea/loop 2560t
