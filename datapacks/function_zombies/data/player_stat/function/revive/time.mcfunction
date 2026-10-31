
#scoreboard players operation time2 revive.timer = time revive.timer
#scoreboard players operation time2 revive.timer %= 2 number
#execute if score time2 revive.timer matches 1 run return fail

scoreboard players operation time0 revive.timer = time revive.timer
scoreboard players operation time1 revive.timer = time revive.timer

scoreboard players operation time0 revive.timer /= 20 number
scoreboard players operation time1 revive.timer %= 20 number
scoreboard players operation time1 revive.timer /= 2 number

execute store result entity @s data.revive.time.0 int 1 run scoreboard players get time0 revive.timer
execute store result entity @s data.revive.time.1 int 1 run scoreboard players get time1 revive.timer
function player_stat:revive/time0 with entity @s data.revive.time
data remove entity @s data.revive.time