
execute store result storage game root.stat.time.second int 1 run scoreboard players get second game.timer
execute store result storage game root.stat.time.minute int 1 run scoreboard players get minute game.timer
execute store result storage game root.stat.time.hour int 1 run scoreboard players get hour game.timer
function map:game/scoreboard/time0 with storage game root.stat.time
function map:game/scoreboard/time1 with storage game root.stat.time
data remove storage game root