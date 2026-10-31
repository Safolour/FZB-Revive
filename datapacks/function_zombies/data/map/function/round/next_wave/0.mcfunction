
scoreboard players add wave round 1
execute if score wave round >= max_wave round run return fail
execute store result storage round root.wave int 1 run scoreboard players get wave round
execute store result storage round root.round int 1 run scoreboard players get round game.state
function map:round/next_wave/0_0 with storage round root
function map:round/next_wave/1 with storage round root
execute if score spawn_range round matches 0 run scoreboard players operation spawn_range round = default.spawn_range round
function map:round/next_wave/2
function map:round/next_wave/4 {powerup:maxammo}
function map:round/next_wave/4 {powerup:instakill}
function map:round/next_wave/4 {powerup:doublegold}
function map:round/next_wave/4 {powerup:triplegold}
function map:round/next_wave/4 {powerup:bonusgold}
function map:round/next_wave/4 {powerup:shoppingspree}
function map:round/next_wave/4 {powerup:carpenter}
function map:round/next_wave/4 {powerup:purification}