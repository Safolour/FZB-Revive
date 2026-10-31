
function mainlobby:get_time
function mainlobby:scoreboard/load_date with storage time root.time
function map:game/scoreboard/load_date with storage time root.time
function map:waitlobby/scoreboard/load_date with storage time root.time

execute if entity @s[scores={system.room=4}] run return run function map:game/rejoin
function mainlobby:tp_lobby