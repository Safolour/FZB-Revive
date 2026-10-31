
scoreboard objectives add map dummy
scoreboard players set type map -1
scoreboard players set max_player map 5
scoreboard players set min_player map 1
scoreboard players set quickstart_player map 4
scoreboard players set quickstart_time map 20
scoreboard players set start_time map 120
scoreboard objectives add title.color.enable dummy


function map:perk/load
function map:window/load
function map:path/load
function map:area/load
function map:shop/load
function map:door/load
function map:waitlobby/load
function map:powerup/load
function map:luckychest/load
function map:game/load
function map:round/load

