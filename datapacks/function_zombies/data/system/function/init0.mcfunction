#say init0
function system:game_stat/get/0
#function system:game_stat/store/0
#function system:game_stat/read/0

function bs.load:reset
function animated_java:reset
function large_number:reset
function interaction:reset
function map:reset
function mainlobby:reset
function weapon:reset
function inventory:reset
function zombie:reset
function player_stat:reset
function decoration:reset

execute as @a at @s run function system:reset0

tp @e[type=!player] 0.0 -130.0 0.0
execute as @e[type=!player] run function system:death

team remove collision
function map:round/trigger/close/0
forceload remove 300 160


function bs.load:load
function animated_java:load
function large_number:load
function interaction:load
function map:load
function mainlobby:load
function weapon:load
function inventory:load
function zombie:load
function player_stat:load
function decoration:load

team add collision
team modify collision seeFriendlyInvisibles false
team modify collision collisionRule never

forceload add 300 160