
# Run once after entity ticks, including shop replacements created this tick.
execute in minecraft:overworld run function map:game/phase_positions
function map:game/tick
function map:path/tick

function map:powerup/tick
function map:round/tick
function map:area/tick

