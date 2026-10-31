execute if score debug round matches 1 run return fail
execute if score round game.state matches -1 run gamemode adventure @a[gamemode=spectator]
execute if score round game.state matches -1 run return run function _:_init
execute if score round game.state matches -1 run return fail

scoreboard players set win stat.win 1
execute store result storage game root.stat.time.second int 1 run scoreboard players get second game.timer
execute store result storage game root.stat.time.minute int 1 run scoreboard players get minute game.timer
execute store result storage game root.stat.time.hour int 1 run scoreboard players get hour game.timer
function map:game/scoreboard/time0 with storage game root.stat.time
function map:game/scoreboard/time1 with storage game root.stat.time
execute as @a[scores={system.room=4..}] at @s run function map:round/win/0_0 with storage game root.stat.time
data remove storage game root
scoreboard players operation timer round = end_time.win round
scoreboard players set round game.state -1
schedule clear map:game/1s
schedule clear map:game/1s_0
