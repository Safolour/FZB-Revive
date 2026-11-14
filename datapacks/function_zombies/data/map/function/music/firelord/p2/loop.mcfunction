execute unless score round game.state matches 40 run return run function map:music/firelord/stop
function map:music/firelord/stop
function map:music/firelord/play {sound:"custom.firelord_p2_loop"}
# No repeat observed before the sampled game ended; 2732t follows the 136.59s asset.
schedule function map:music/firelord/p2/loop 2732t replace
